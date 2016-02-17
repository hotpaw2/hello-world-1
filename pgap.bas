# pgap.bas 100 loops
# finds void gaps between primes - (c) 1980-2016 rhn@nicholson.com
10 rem  pgap benchmark
20 dim p(1000)
22 p(1) = 3
24 t1 = timer()
26 for k = 1 to 100
30 n = 1 : m = 1
40 lp = 3 : gap = 2
50 lim = 15729
90 for c=5 to lim step 2: for i=1 to n :if c mod p(i) then next i: goto 200
100 goto 400
200 if k = 100 then if c-lp > gap then print c,c-lp : gap = c-lp
210 lp = c
240 if c > p(n) * p(n) then n = n+1
260 if m < 1000 then m = m+1 : p(m) = c
400 next c
810 print k, timer()-t1
820 next k
980 bye
990 end
