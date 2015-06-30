function [B1,B2,P] = ludecompold( A )
x=size(A);
if x(1)~=x(2)
    return;
end
x=x(1);    
P=eye(x);
B1=eye(x);
B2=A;
    for j=1:x-1
     maxi=max(abs(B2(j:end,j)));
     for k=j:x
      if abs(B2(k,j))==maxi
         if k==j break; end
          [s1,s2]=swap(P(k,:),P(j,:));
          P(k,:)=s1;
          P(j,:)=s2;
          [s1,s2]=swap(B2(k,:),B2(j,:));
          B2(k,:)=s1;
          B2(j,:)=s2;
      end
     end
     for l=j+1:x
         ratio=B2(l,j)/B2(j,j);
         B2(l,:)=B2(l,:)-ratio*B2(j,:);
     end
    end
B1=P*A*B2^-1;
end

