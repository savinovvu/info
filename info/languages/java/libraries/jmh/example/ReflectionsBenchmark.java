@Warmup(iterations = 10)
@Measurement(iterations = 10)
@Fork(value = 2, jvmArgsAppend = "-server")
@BenchmarkMode(Mode.AverageTime)
@State(Scope.Benchmark)
public class ReflectionsBenchmark {

    @Benchmark
    public void findClassesByAnnotationEntity() {
        Reflections reflections = new Reflections("org.itsimulator.germes.app.model.entity");

        Set<Class<?>> entityClasses = reflections.getTypesAnnotatedWith(Entity.class);
    }

    @Benchmark
    public void findClassesImplementingCityRepositoryInterface() {
        Reflections reflections = new Reflections("org.itsimulator.germes.app");

        Set<Class<? extends CityRepository>> entityClasses = reflections.getSubTypesOf(CityRepository.class);
    }

    public static void main(String[] args) throws Exception {
        Options opts = new OptionsBuilder().include(".*").timeUnit(TimeUnit.NANOSECONDS).resultFormat(ResultFormatType.TEXT).build();

        new Runner(opts).run();
    }

    // blackhole for unused methods in jmh test

    @Benchmark
    public void findClassesByAnnotationEntity(Blackhole blackhole) {
        Reflections reflections = new Reflections("org.itsimulator.germes.app.model.entity");

        blackhole.consume(reflections.getTypesAnnotatedWith(Entity.class));
    }

    @Benchmark
    public void findClassesImplementingCityRepositoryInterface(Blackhole blackhole) {
        Reflections reflections = new Reflections("org.itsimulator.germes.app");

        blackhole.consume(reflections.getSubTypesOf(CityRepository.class));
    }



    @Benchmark
    public void findClassesAsStringsByAnnotationEntity(Blackhole blackhole) {
        ScanResult scanResult = new
                FastClasspathScanner("org.itsimulator.germes.app.model.entity").scan();

        List<String> classes = scanResult.getNamesOfClassesWithAnnotation(Entity.class);

        blackhole.consume(classes);
    }



    @Benchmark
    public void findClassesByAnnotationEntity(Blackhole blackhole) {
        ScanResult scanResult = new
                FastClasspathScanner("org.itsimulator.germes.app.model.entity").scan();

        List<String> classes = scanResult.getNamesOfClassesWithAnnotation(Entity.class);

        blackhole.consume(scanResult.classNamesToClassRefs(classes));
    }



}