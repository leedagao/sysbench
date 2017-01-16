########################################################################
select_random_*.lua + MySQL tests 
########################################################################

  $ if [ -z "${SBTEST_MYSQL_ARGS:-}" ]
  > then
  >   exit 80
  > fi

  $ function db_show_table() {
  >   mysql -uroot sbtest -Nse "SHOW CREATE TABLE $1\G"
  > }

  $ DB_DRIVER_ARGS="--db-driver=mysql $SBTEST_MYSQL_ARGS"
  $ . $SBTEST_INCDIR/script_select_random_common.sh
  sysbench * (glob)
  
  Creating table 'sbtest1'...
  Inserting 10000 records into 'sbtest1'
  Creating secondary indexes on 'sbtest1'...
  *************************** 1. row ***************************
  sbtest1
  CREATE TABLE `sbtest1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest8' doesn't exist
  sysbench * (glob)
  
  Running the test with following options:
  Number of threads: 1
  Initializing random number generator from current time
  
  
  Initializing worker threads...
  
  Threads started!
  
  OLTP test statistics:
      queries performed:
          read:                            100
          write:                           0
          other:                           0
          total:                           100
      transactions:                        100    (* per sec.) (glob)
      queries:                             100    (* per sec.) (glob)
      ignored errors:                      0      (0.00 per sec.)
      reconnects:                          0      (0.00 per sec.)
  
  General statistics:
      total time:                          *s (glob)
      total number of events:              100
      total time taken by event execution: *s (glob)
  
  Latency statistics:
           min:                              *.*ms (glob)
           avg:                              *.*ms (glob)
           max:                              *.*ms (glob)
           approx.  95th percentile:         *.*ms (glob)
  
  Threads fairness:
      events (avg/stddev):* (glob)
      execution time (avg/stddev):* (glob)
  
  sysbench * (glob)
  
  Dropping table 'sbtest1'...
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest8' doesn't exist
  sysbench * (glob)
  
  Creating table 'sbtest1'...
  Inserting 10000 records into 'sbtest1'
  Creating secondary indexes on 'sbtest1'...
  *************************** 1. row ***************************
  sbtest1
  CREATE TABLE `sbtest1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest8' doesn't exist
  sysbench * (glob)
  
  Running the test with following options:
  Number of threads: 1
  Initializing random number generator from current time
  
  
  Initializing worker threads...
  
  Threads started!
  
  OLTP test statistics:
      queries performed:
          read:                            100
          write:                           0
          other:                           0
          total:                           100
      transactions:                        100    (* per sec.) (glob)
      queries:                             100    (* per sec.) (glob)
      ignored errors:                      0      (0.00 per sec.)
      reconnects:                          0      (0.00 per sec.)
  
  General statistics:
      total time:                          *s (glob)
      total number of events:              100
      total time taken by event execution: *s (glob)
  
  Latency statistics:
           min:                              *.*ms (glob)
           avg:                              *.*ms (glob)
           max:                              *.*ms (glob)
           approx.  95th percentile:         *.*ms (glob)
  
  Threads fairness:
      events (avg/stddev):* (glob)
      execution time (avg/stddev):* (glob)
  
  sysbench * (glob)
  
  Dropping table 'sbtest1'...
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'sbtest.sbtest8' doesn't exist