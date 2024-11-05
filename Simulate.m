%simulation of the road & cars
%n = car in {1..N}
%The blue squares are the cars that haven't done any dangerous lane change
%The star-branded cars have committed at least once a dangerous lane change
function Simulate()
  global currI;
  global currX;
  global K ;
  global N ;
  x=[min(currX(:,1))-0.12,max(currX(:,1))+0.18]; % Define the edges of sides
  y1=[K+0.5,K+0.5] ;  % Upper side
  y2=[(K/2)+0.5,(K/2)+0.5] ;  % middle side
  y3=[0.5,0.5] ;  % Lower side
  % Xd=cars with dangerous lanes changes
  Xd=[];
  % Id=the lanes of each car in Xd
  Id=[];
  for (n=1:N)
    if (currX(n,2)==1)
      Xd=[Xd; currX(n,1)];
      Id=[Id; currI(n)];
    endif
  endfor
  plot(currX(:,1), currI, 's', 'MarkerFaceColor', 'blue', 'MarkerEdgeColor', 'blue','MarkerSize',10);
  hold on
  plot(x,y1,'k');
  plot(x,y2,'--k');
  plot(x,y3,'k');
  drawnow
  plot(Xd,Id,'p', 'MarkerFaceColor', 'red', 'MarkerEdgeColor', 'red','MarkerSize',15);
  drawnow
  hold off
endfunction



