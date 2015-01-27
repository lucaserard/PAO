function v = echantillonnage(image,pas)
[n,m]=size(image);
v=[];
for i=1:pas:n
    for j=2:pas:m
	v=[v;i j image(i,j)];
    end
end
end
