%k = {1 if the car changed the road, 0 if not}
%I = next road of the car "n" after "dt" time
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function [I,k] = Idt(n,j)
  global currI;
  global currX;
  global K;
  I=currI(n);
  k=0;
  if (((currI(n)==1)&&(j==currI(n)+1))||((currI(n)==K)&&(j==currI(n)-1)))||(currI(n)>=2 && currI(n)<=K-1)
    if (B(pD(n,j)) == true)
      I=j;
      currX(n,2)=1;
      k=1;
    elseif (B(pS(n,j))==true)
      I=j;
      k=1;
    endif
  endif
endfunction

