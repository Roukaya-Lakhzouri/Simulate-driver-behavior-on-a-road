%V = next speed of the car "n" after "dt" time
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function v = Vdt (n)
  global dt;
  global Amax;
  global Vmax;
  global s;
  global currI;
  global currV;
  v1=currV(n)+rand()*Amax*dt;
  d=min(D(1,n,currI(n))/s);
  va=min([v1,d,Vmax]);
  v=max(va,currV(n)-Amax*dt);
endfunction
