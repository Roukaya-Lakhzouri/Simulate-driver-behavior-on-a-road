%Next positions
%n = car in {1..N}
function nextX ()
  global N;
  global currX;
  for (n=1:N)
    currX(n,1)=Xdt(n);
  endfor
endfunction
