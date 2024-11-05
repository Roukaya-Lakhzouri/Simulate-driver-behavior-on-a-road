%p = Probability of the event Danger Distance
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function p = pD(n,j)
  global dt;
  global freqDang;
  if (S(n,j))
    p=NaN;
  else
    p=freqDang*dt;
  endif
endfunction
