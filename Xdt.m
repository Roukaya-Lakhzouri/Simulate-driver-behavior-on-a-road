%X = next position of the car "n" after "dt" time
%n = car in {1..N}
function X = Xdt (n)
  global currV;
  global currX;
  global dt;
  currX(n,1)=currX(n,1)+currV(n)*dt;
  X=currX(n,1);
endfunction
