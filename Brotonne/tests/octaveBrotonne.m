data =load('../dataBrute');
n = length(data);
pas=1;

x=data(1:pas:n,1)/50-520000/50;
x=x+1;


y=data(1:pas:n,2)/50-6920000/50;
y=y+1;
z=data(1:pas:n,3);


temp = [x y z];
%mat = fractionTerrain(temp);
image = matriceNN(temp);
%xyz=toXYZ(image);
xyz = echantillonnage(image,10);



%xyz = filtrePlan(image,4,5);

%save -text brotonne30.xyz xyz

