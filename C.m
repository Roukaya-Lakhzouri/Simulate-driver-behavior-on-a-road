%c = the car (if it exists) on road j, whose position at time t immediately precedes(c-)/follows(c+) that of n, which is on its lane It(n)
%a = {1 if C+ , -1 if C-}
%n = car in {1..N}
%j = road in {currI(n)+1 if right , currI(n)-1 if left}
function c = C(a,n,j)
  global K;
  global N;
  global currX;
  global currI;
  F=[];
  X=[];
  c=0;
  if (((currI(n)==1)&&(j!=currI(n)-1))||((currI(n)==K)&&(j!=currI(n)+1)))||(currI(n)>=2 && currI(n)<=K-1)
    if (a==1)
     for (i=1:N)
        if ((currI(i)==j) && (((j==currI(n)) && (currX(n,1)<currX(i,1))) || ((j!=currI(n))&& (currX(n,1)<=currX(i,1)))))
            F = [F; i];
            X = [X; currX(i,1)];
        endif
     endfor
        u=min(X);
    elseif (a==-1)
     for (i=1:N)
        if ((currI(i)==j) && (((j==currI(n)) && (currX(n,1)>currX(i,1))) || ((j!=currI(n))&& (currX(n,1)>=currX(i,1)))))
            F = [F; i];
            X = [X; currX(i,1)];
        endif
     endfor
        u=max(X);
    endif
    if (~isempty(F))
       c=F(find(X == u));
    endif;
  endif
endfunction

