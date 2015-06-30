function an = prime( a )
%Find if a num is prime
an=1;
for ki=2:ceil(sqrt(a))
 if mod(a,ki)==0  
  an=0;
  break;
 end 
end

