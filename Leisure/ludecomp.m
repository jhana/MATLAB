function [B1,B2,P] = ludecomp( A , f)
x=size(A);
if x(1)~=x(2)
    A=A'*A;
    x=size(A);
end
x=x(1);    
if f==1
 P=eye(x);
else
    P=zeros(x,x);
B1=eye(x);
B2=A;
    for j=1:x-1
     maxi=max(abs(B2(j:end,j)));
     if f==1
     for k=j:x
      if abs(B2(k,j))==maxi
         if k==j break; end
          s1=P(j,:);
          P(j,:)=P(k,:);
          P(k,:)=s1;
          s2=B2(k,:);
          B2(k,:)=B2(j,:);
          B2(j,:)=s2;
          for m=1:x
             if m~=k && m~=j 
              jj=B1(k,m);
              B1(k,m)=B1(j,m);
              B1(j,m)=jj;
             end
          end
      end
     end
     end
     for l=j+1:x
         ratio=B2(l,j)/B2(j,j);
         B2(l,:)=B2(l,:)-ratio*B2(j,:);
         B1(l,j)=ratio;
     end
    end
end

