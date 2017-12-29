% newton's divided difference matrix
% the form of input f should be like this: f=@(x)cos(x) or inline('cos(x)') (for example)

function p=divdif(x,f)
  m=length(x);
  p=zeros(m,m);
  
% below is to put in the first column of p, namely, the f(x) 
  for k=1:m;
    p(k,1)=f(x(k));
  endfor
  
% then we have formula for other columns   
  for j=2:m;
    for i=j:m;
      p(i,j)=(p(i,j-1)-p(i-1,j-1))/(x(i)-x(i-j+1));
    endfor
  endfor
 end