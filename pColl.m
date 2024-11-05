%p = Probability of Event Collision
%n = car in {1..N}
function p = pColl(n)
  global s;
  global currV;
  global currI;
  p=max(1-((D(1,n,currI(n))(1))/(s*currV(n))),0);
endfunction
