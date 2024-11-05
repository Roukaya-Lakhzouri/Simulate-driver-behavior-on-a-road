%p = Probability of the event Safe Distance
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function p = pS(n,j)
  global s;
  global pSafemin;
  global currV;
  if (!S(n,j))
    p = NaN;
  else
    if (C(-1,n,j)!=0)
      p = min(0.9, pSafemin * (D(1,n,j)/(s*currV(n))) * (D(-1,n,j)/(s*currV(C(-1,n,j)))));
    else
      p =0.9;
    endif
  endif
endfunction
