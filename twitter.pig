A = LOAD 'small-twitter.csv' USING PigStorage(',') AS ( user:int, follower:int );
--A = LOAD 'dummy.csv' USING PigStorage(',') AS ( user:int, follower:int );
DUMP A;
B = GROUP A BY follower;
DUMP B;
Describe B;
C = FOREACH B GENERATE $0, COUNT(A);
DUMP C;
Describe C;
D = GROUP C BY $1;
DUMP D;
Describe D;
O = FOREACH D GENERATE $0, COUNT(C);
DUMP O;
Describe O;
STORE O INTO 'output' USING PigStorage (',');