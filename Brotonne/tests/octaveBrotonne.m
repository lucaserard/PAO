data =load('../dataBrute');
n = length(data);
pas=1;
%data=sortrows(data,3);


x=data(1:pas:n,1)/50-520000/50;
x=x+1;


y=data(1:pas:n,2)/50-6920000/50;
y=y +1;
z=data(1:pas:n,3);


%mat= [x(1:10:size(x)) y(1:10:size(y)) z(1:10:size(z))];
%mat=[x(1:int64(n/4)) y(1:int64(n/4)) z(1:int64(n/4))];
temp = [x y z];
mat = fractionTerrain(temp);
image = matriceNN(mat);

%xyz = filtrePlan(image,4,5);

%save -text brotonne30.xyz mat

