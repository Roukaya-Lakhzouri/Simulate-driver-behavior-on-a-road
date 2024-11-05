global K;
global N;
global V0;
global D0;
global s;
global dt;
global Xmax;
global Vmax;
global Amax;
global Tmax;
global pSafemin;
global freqDang;
global currV;
global currX;
global currI;
global T;
global currpColl;
M=100;
C=0;
K=2;
N=20;
V0 = 0;
D0 = 0.005;
s= 2/3600;
dt = 1/3600;
Xmax = 10;
Vmax = 90;
Amax = 64800;
pSafemin = 0.5;
freqDang = 5;
TmaxVect=zeros(M,1);
TminVect=zeros(M,1);
CVect=zeros(M,1);

for (e=1:M)
  e
  Tdanger=0;
  Tsafe=0;
  currV=ones(N,1)*V0;
  currX=zeros(N,2);
  currI=zeros(N,1);
  T=zeros(N,1);
  currpColl=zeros(N,1);
  %initialisation of currI & currX
  for (i=0:N/K-1)
    for (j=0:K-1)
      currX(1+i+j*(N/K),1)=-D0*i;
      currI(1+i+j*(N/K))=j+1;
    endfor
  endfor

  while (min(currX(:,1))<Xmax)

    %Update the lanes of all the cars
    nextI();

    %Update the positions of all the cars
    nextX()

    %Update the speeds of all the cars
    nextV()

    %Save collision risk for all cars
    for (n=1:N)
      C+=pColl(n);
    endfor

    %Time
    for (n=1:N)
      if (currX(n)<Xmax)
        T(n)=T(n)+dt;
      endif
    endfor

    %Simulate()

  endwhile

  for (n=1:N)
    if (currX(n,2)==1)
      Tdanger+=T(n);
    else
      Tsafe+=T(n);
    endif
  endfor

  Tmin=min(T);
  Tmax=max(T);
  C=(1/(N*Tmax))*C;
  TmaxVect(e)=Tmax;
  TminVect(e)=Tmin;
  CVect(e)=C;

endfor
