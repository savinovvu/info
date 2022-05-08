package ...

import org.hibernate.engine.spi.SharedSessionContractImplementor
import org.hibernate.usertype.DynamicParameterizedType
import org.hibernate.usertype.UserType
import java.io.Serializable
import java.sql.PreparedStatement
import java.sql.ResultSet
import java.sql.Types
import java.util.*


class PostgresArrayType : UserType, DynamicParameterizedType {

    private val arrayTypes = arrayOf(Types.ARRAY)

    private lateinit var clazz: Class<out Enum<*>>

    override fun sqlTypes(): IntArray =
        arrayTypes.toIntArray()

    override fun returnedClass(): Class<*> =
        clazz

    override fun equals(x: Any?, y: Any?): Boolean =
        x?.equals(y) ?: (y == null)

    override fun hashCode(x: Any?): Int =
        x?.hashCode() ?: 0

    override fun nullSafeGet(
        rs: ResultSet?,
        names: Array<out String>?,
        session: SharedSessionContractImplementor?,
        owner: Any?
    ): Any? {
        val name = names?.first()
        if (name != null) {
            val array = rs?.getArray(name)
            if (array != null) {
                val results = array.array as Array<String>
                val method = clazz.getMethod("valueOf", String::class.java)
                return results.map { method.invoke(clazz, it) }
            }
        }
        return null
    }

    override fun nullSafeSet(
        st: PreparedStatement?,
        value: Any?,
        index: Int,
        session: SharedSessionContractImplementor?
    ) {
        if (value != null && st != null) {
            val cast = value as List<*>
            val array = session?.connection()?.createArrayOf("VARCHAR", cast.toTypedArray())
            st.setArray(index, array)
        } else {
            val array = session?.connection()?.createArrayOf("VARCHAR", emptyArray())
            st?.setArray(index, array)
        }
    }

    override fun deepCopy(value: Any?): Any? =
        (value as? ArrayList<*>)?.clone()

    override fun isMutable(): Boolean =
        false

    override fun disassemble(value: Any?): Serializable? =
        value as? Serializable

    override fun assemble(cached: Serializable?, owner: Any?): Any? =
        cached

    override fun replace(original: Any?, target: Any?, owner: Any?): Any? =
        original

    override fun setParameterValues(parameters: Properties) {
        val className = parameters.getProperty("clazz")
        this.clazz = Class.forName(className) as Class<out Enum<*>>
    }
}
