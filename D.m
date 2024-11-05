%d = distance between two successive vehicles
%a = {1 if D+ , -1 if D-}
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function d= D(a,n,j)
  global K;
  global N;
  global currX;
  global currI;
  if (C(a,n,j)!=0)
    d = a*(currX(C(a,n,j),1)-currX(n,1));
  else
    d=inf ;
  endif
endfunction

