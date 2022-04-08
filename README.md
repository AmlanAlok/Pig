# Pig


# run join.pig

~/pig-0.17.0/bin/pig -x local join.pig




[amlanalok@login02 Pig]$ sbatch twitter.local.run
Submitted batch job 11256917

[amlanalok@login02 Pig]$ expanse-client user -r expanse

Resource  expanse

╭───┬───────────┬───────┬─────────┬──────────────┬──────┬───────────┬─────────────────╮
│   │ NAME      │ STATE │ PROJECT │ TG PROJECT   │ USED │ AVAILABLE │ USED BY PROJECT │
├───┼───────────┼───────┼─────────┼──────────────┼──────┼───────────┼─────────────────┤
│ 1 │ amlanalok │ allow │ uot143  │ TG-CIE160028 │  141 │     30000 │           25006 │
╰───┴───────────┴───────┴─────────┴──────────────┴──────┴───────────┴─────────────────╯

[amlanalok@login02 Pig]$ sbatch twitter.distr.run
Submitted batch job 11256963

Did not consume any SUs when ran on cluster