%Next roads
%n = car in {1..N}
function nextI()
  global N;
  global currI;
  for (n=1:N)
    [I, k] = Idt(n, currI(n)+1);
    currI(n) = I;
    if (~k)
      [I1, k1] = Idt(n, currI(n)-1);
      currI(n) = I1;
    endif
  endfor
endfunction
