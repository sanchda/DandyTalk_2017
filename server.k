.cd:50;                                     / E[character sleep time] (ms)
.ld:100;                                    / Line delay (ms)
sleep:{:[x>0;`4:"sleep"," ",$x;_n]};        / Call system sleep command
free:" !\"#$%&'()*+,-./:;<=>?[\\]^_`{|}~";  / Characters without delay
td:{                                        / Type a character with delay
  sleep@*_draw[1;0]*.cd%1000.0
  `0:$x};
D:{
  if[~x _in free
    td[x];
    :_n]
  `0:$x};

T:D';

.m.g:{[]
    cols:0$*`4:"tput cols"
    rows:0$*`4:"tput lines"
    :(cols, rows)};

.m.s:{
    T($x),"\n"
    sleep@.ld%1000
    _n};

`0:"\n"
