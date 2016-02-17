10 rem Byte Sieve benchmark in Basic
11 rem   original from Byte magazine Jan '83 and Aug '84 issues
20 loops = 1000
30 t = timer
40 dim f(8194)
50 for j = 1 to loops
60 c = 0
70 s = 8191
80 for i = 0 to s : f(i) = 1 : next i
90 for i = 0 to s
100   if f(i) = 0 then goto 140
110   p = i+i+3
115   if i+p > s then 130
120   for k = i+p to s step p : f(k) = 0 : next k
130   c = c+1
140 next i
150 next j
160 print c;" primes found ";
170 t = timer-t
180 print loops;" times in ";
190 print t;" seconds"
200 bye
990 end
