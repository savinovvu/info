package org.itsimulator.germes.app.service.benchmark;

import java.util.concurrent.TimeUnit;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.results.format.ResultFormatType;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import org.openjdk.jmh.runner.options.TimeValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This benchmark tests peformance of the file appender in Log4j 2.x
 * 
 * @author Morenets
 *
 */
@Warmup(iterations = 3, time = 1, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 1, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1, jvmArgsAppend = "-Dlog4j.configurationFile=log4j2-graylog.xml")
@BenchmarkMode(Mode.AverageTime)
@State(Scope.Benchmark)
public class FileLoggingBenchmark {

	private static final Logger LOGGER = LoggerFactory.getLogger(FileLoggingBenchmark.class);

	@Benchmark
	public void info_fileAppender() {
		LOGGER.info("Test message");
	}

	public static void main(String[] args) throws Exception {
		Options opts = new OptionsBuilder().include(".*").mode(Mode.AverageTime).timeUnit(TimeUnit.NANOSECONDS).forks(1)
				.jvmArgsAppend("-Dlog4j.configurationFile=log4j2-graylog.xml").warmupIterations(3).measurementIterations(5)
				.warmupTime(TimeValue.seconds(1)).measurementTime(TimeValue.seconds(1))
				.resultFormat(ResultFormatType.TEXT).build();

		new Runner(opts).run();
	}

}
