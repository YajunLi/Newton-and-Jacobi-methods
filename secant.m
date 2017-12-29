function root=secant(f,p0,p1,tol)
  max=10000;
  i=1;
  while i<=max;
    f0=f(p0);
    f1=f(p1);
    p2=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    if abs(f(p2))<=tol;
      root=p2;
      i
      return;
    endif
      i=i+1;
      p0=p1;
      p1=p2;
  end
   disp(['processes end after' num2str(10000) ,'iterations'])
 end
 
  
      
    