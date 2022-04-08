
# Error 1

amlanalok@Amlans-MacBook-Pro Pig % ls
README.md               large-solution.txt      small-twitter.csv       twitter.local.run
examples                small-solution.txt      twitter.distr.run       twitter.pig
amlanalok@Amlans-MacBook-Pro Pig % cd examples
amlanalok@Amlans-MacBook-Pro examples % ls
d.txt           e.txt           join.local.run  join.pig        kmeans.pig
amlanalok@Amlans-MacBook-Pro examples % ~/pig-0.17.0/bin/pig -x local join.pig
Error: JAVA_HOME is not set.

# Error 2


[amlanalok@login02 Pig]$ sbatch twitter.local.run
Submitted batch job 11255745
[amlanalok@login02 Pig]$ ls
examples  Experience.sh  large-solution.txt  README.md  small-solution.txt  small-twitter.csv  twitter.distr.run  twitter.local.out  twitter.local.run  twitter.pig
[amlanalok@login02 Pig]$ cat twitter.local.out
2022-04-07 16:35:29,401 INFO pig.ExecTypeProvider: Trying ExecType : LOCAL
2022-04-07 16:35:29,401 INFO pig.ExecTypeProvider: Picked LOCAL as the ExecType
2022-04-07 16:35:29,431 [main] INFO  org.apache.pig.Main - Apache Pig version 0.17.0 (r1797386) compiled Jun 02 2017, 15:41:58
2022-04-07 16:35:29,431 [main] INFO  org.apache.pig.Main - Logging error messages to: /home/amlanalok/Pig/pig_1649374529430.log
2022-04-07 16:35:29,441 [main] INFO  org.apache.hadoop.conf.Configuration.deprecation - user.name is deprecated. Instead, use mapreduce.job.user.name
2022-04-07 16:35:29,556 [main] INFO  org.apache.pig.impl.util.Utils - Default bootup file /home/amlanalok/.pigbootup not found
2022-04-07 16:35:29,591 [main] INFO  org.apache.hadoop.conf.Configuration.deprecation - mapred.job.tracker is deprecated. Instead, use mapreduce.jobtracker.address
2022-04-07 16:35:29,592 [main] INFO  org.apache.pig.backend.hadoop.executionengine.HExecutionEngine - Connecting to hadoop file system at: file:///
2022-04-07 16:35:29,605 [main] INFO  org.apache.pig.PigServer - Pig Script ID for the session: PIG-twitter.pig-06cd9180-955e-440a-a500-916d3410b472
2022-04-07 16:35:29,605 [main] WARN  org.apache.pig.PigServer - ATS is disabled since yarn.timeline-service.enabled set to false
2022-04-07 16:35:29,685 [main] ERROR org.apache.pig.PigServer - exception during parsing: Error during parsing. <file twitter.pig, line 1, column 9>  mismatched input 'small' expecting QUOTEDSTRING
Failed to parse: <file twitter.pig, line 1, column 9>  mismatched input 'small' expecting QUOTEDSTRING
	at org.apache.pig.parser.QueryParserDriver.parse(QueryParserDriver.java:244)
	at org.apache.pig.parser.QueryParserDriver.parse(QueryParserDriver.java:182)
	at org.apache.pig.PigServer$Graph.parseQuery(PigServer.java:1820)
	at org.apache.pig.PigServer$Graph.access$000(PigServer.java:1528)
	at org.apache.pig.PigServer.parseAndBuild(PigServer.java:461)
	at org.apache.pig.PigServer.executeBatch(PigServer.java:486)
	at org.apache.pig.PigServer.executeBatch(PigServer.java:472)
	at org.apache.pig.tools.grunt.GruntParser.executeBatch(GruntParser.java:171)
	at org.apache.pig.tools.grunt.GruntParser.processDump(GruntParser.java:777)
	at org.apache.pig.tools.pigscript.parser.PigScriptParser.parse(PigScriptParser.java:383)
	at org.apache.pig.tools.grunt.GruntParser.parseStopOnError(GruntParser.java:230)
	at org.apache.pig.tools.grunt.GruntParser.parseStopOnError(GruntParser.java:205)
	at org.apache.pig.tools.grunt.Grunt.exec(Grunt.java:81)
	at org.apache.pig.Main.run(Main.java:630)
	at org.apache.pig.Main.main(Main.java:175)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:566)
	at org.apache.hadoop.util.RunJar.run(RunJar.java:323)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:236)
2022-04-07 16:35:29,688 [main] ERROR org.apache.pig.tools.grunt.Grunt - ERROR 1200: <file twitter.pig, line 1, column 9>  mismatched input 'small' expecting QUOTEDSTRING
Details at logfile: /home/amlanalok/Pig/pig_1649374529430.log
2022-04-07 16:35:29,767 [main] INFO  org.apache.pig.Main - Pig script completed in 475 milliseconds (475 ms)
[amlanalok@login02 Pig]$
[amlanalok@login02 Pig]$
[amlanalok@login02 Pig]$ nano twitter.local.run
[amlanalok@login02 Pig]$ ls
examples       large-solution.txt     README.md           small-twitter.csv  twitter.local.out  twitter.pig
Experience.sh  pig_1649374529430.log  small-solution.txt  twitter.distr.run  twitter.local.run




[amlanalok@login02 Pig]$ sbatch twitter.local.run
Submitted batch job 11255764
[amlanalok@login02 Pig]$ cat twitter.local.out
2022-04-07 16:42:10,893 INFO pig.ExecTypeProvider: Trying ExecType : LOCAL
2022-04-07 16:42:10,894 INFO pig.ExecTypeProvider: Picked LOCAL as the ExecType
2022-04-07 16:42:10,924 [main] INFO  org.apache.pig.Main - Apache Pig version 0.17.0 (r1797386) compiled Jun 02 2017, 15:41:58
2022-04-07 16:42:10,924 [main] INFO  org.apache.pig.Main - Logging error messages to: /home/amlanalok/Pig/pig_1649374930923.log
2022-04-07 16:42:10,934 [main] INFO  org.apache.hadoop.conf.Configuration.deprecation - user.name is deprecated. Instead, use mapreduce.job.user.name
2022-04-07 16:42:11,057 [main] INFO  org.apache.pig.impl.util.Utils - Default bootup file /home/amlanalok/.pigbootup not found
2022-04-07 16:42:11,091 [main] INFO  org.apache.hadoop.conf.Configuration.deprecation - mapred.job.tracker is deprecated. Instead, use mapreduce.jobtracker.address
2022-04-07 16:42:11,092 [main] INFO  org.apache.pig.backend.hadoop.executionengine.HExecutionEngine - Connecting to hadoop file system at: file:///
2022-04-07 16:42:11,105 [main] INFO  org.apache.pig.PigServer - Pig Script ID for the session: PIG-twitter.pig-8c38cbe8-b84e-4496-a757-c68272a39d7d
2022-04-07 16:42:11,105 [main] WARN  org.apache.pig.PigServer - ATS is disabled since yarn.timeline-service.enabled set to false
2022-04-07 16:42:11,396 [main] ERROR org.apache.pig.tools.grunt.Grunt - ERROR 1025: <file twitter.pig, line 3, column 23> Invalid field projection. Projected field [follower] does not exist in schema: group:int,A:bag{:tuple(user:int,follower:int)}.
Details at logfile: /home/amlanalok/Pig/pig_1649374930923.log
2022-04-07 16:42:11,475 [main] INFO  org.apache.pig.Main - Pig script completed in 695 milliseconds (695 ms)





ERROR 1025: <file twitter.pig, line 3, column 23> Invalid field projection. Projected field [follower] does not exist in schema: group:int,A:bag{:tuple(user:int,follower:int)}.