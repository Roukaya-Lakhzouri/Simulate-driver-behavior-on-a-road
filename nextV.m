%Next speed
%n = car in {1..N}
function nextV()
  global N;
  global currV;
  for (n=1:N)
    currV(n) = Vdt(n);
  endfor
endfunction
