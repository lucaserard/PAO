function v = echantillonnage(image,pas)
[n,m]=size(image);
v=[];
for i=1:pas:n
    for j=1:pas:m
	v=[v;i j image(i,i)];
    end
end
end
