function xyz = toXYZ(image)
[n,m] = size(image);
xyz=[];
  for i=1:n
    for j=1:m
	xyz = [xyz;i j image(i,j)];
    end
  end
end
