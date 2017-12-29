%  the form of A should be n*n matrix,  x0 should be column vector, it is initial guess
function [x,e]=jacobi(A,b,x0,N)
  
  k=0;  % k is the number of iterations;
  
  n=length(x0);
  x=zeros(n,1);  % generate a vector of the same size as x0;
  
  while k<=N;
    
    sum=0;
    for j=2:n;
      sum=sum+A(1,j)*x0(j);
    endfor;
     
    x(1)=(b(1)-sum)/A(1,1);
    
 for i=2:(n-1);
       
        sum1=0;
        for p=1:(i-1);  
        sum1=sum1+A(i,p)*x0(p);
        endfor;
        
        sum2=0;
        for q=(i+1):n;
          sum2=sum2+A(i,q)*x0(q);
        endfor;
      
       x(i)= (b(i)-sum1-sum2)/A(i,i);
    
 endfor;
    s=0;
    for u=1:(n-1);
      s=s+A(n,u)*x0(u);
    endfor;
    x(n)=(b(n)-s)/A(n,n);
    
      x0=x;
      k=k+1;
  
  endwhile;

    c=A*x-b;
    e=max(abs(c))
      
end;