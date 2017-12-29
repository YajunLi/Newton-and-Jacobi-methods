function root=falseposition(f,p0,p1,tol)
  max=10000;
  i=1;
  
  while i<=max;
    
    p2=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    if abs(f(p2))<tol;
      root=p2;
      i
    return;
    endif;
  
    if sign(f(p1))==sign(f(p2))
       p1=p2;
    else
      p0=p2;
    endif
    
    i=i+1;
  endwhile
  
disp(['processes end after' num2str(max),'iterations'])

  end  
     