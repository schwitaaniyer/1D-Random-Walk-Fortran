integer :: Z, Q
N = 36545
call srand(N)
X = 0
Y = 0
P = 0.5
do Z = 1, 10000
   A = 0
   do Q = 1, 100 
       if (rand() < P) then
          S = -1
       else 
          S = 1 
       end if
       A = A + S
   end do
   Y = A**2 + Y
   X = X + (A/100)
end do
print *, "Average (X) = ", (X/10000)
print *, "Average (X^2) = ", (Y/10000)
end program
