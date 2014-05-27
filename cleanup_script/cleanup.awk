#!/bin/awk -f

BEGIN {
    blank = 0
}

/\\bfseries\\color{black}/{flag=1;next}/}/{flag=0}flag{}
/{\\sffamily\\color{black}/{arg2=1;next}/}/{arg2=0}arg2{}

/^$/{ if (! blank++); next } { blank=0; }

{print}
