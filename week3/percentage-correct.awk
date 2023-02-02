#!/usr/bin/awk -f

BEGIN {
  FS="."
  sum = 0
}

{ if ($NF == "correct") { sum += 1 } }
{ if ($NF == "incorrect") { sum_in += 1 } }

END { print (sum /(sum + sum_in)) *100}