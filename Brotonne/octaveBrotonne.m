data =load('dataBrute');
n = length(data);
pas=100;
data=sortrows(data,3);
mat(:,1)=data(1:pas:n,1)-520000+1;
mat(:,2)=data(1:pas:n,2)-6920000+1;
mat(:,3)=data(1:pas:n,3)*30;



save -text brotonne30.xyz mat


