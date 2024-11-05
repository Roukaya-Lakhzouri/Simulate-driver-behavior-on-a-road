%Z = Event Safe Distance
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function Z = S(n,j)
  global s;
  global currV;
  if (C(-1,n,j)!=0)
    Z = ((D(1,n,j)>=s*currV(n))&&(D(-1,n,j)>=s*currV(C(-1,n,j))));
  else
    Z = (D(1,n,j)>=s*currV(n));
  endif
endfunction
