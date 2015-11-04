a=50;
b=-50;
k=0;
f = @(x) 1-x+sin(x);
while abs(b-a)>10^-4  % use while loop
  fa=f(a); %*
  fb=f(b); %*
  if(fa*fb<0)
      al=a;
      c= interp1([a,fa],[b,fb],0);
      br=b;
      fal=f(al); %*
      fc=f(c); %*
      fbr=f(br); %*
      if(fal*fc<0)
          a=al;
          b=c;
      end
      if(fc*fbr<0)
          a=c;
          b=br;
      end     
  end
   disp([k (b+a)/2])
   k=k+1;
end
