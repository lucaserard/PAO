function mat = fractionTerrain(source)
  source=sortrows(source,2);
  n = length(source);
  mat = source(1:int64(n/2+1),:);
  mat = sortrows(mat,1);
  n=length(mat);
  mat = mat(1:int64(n/2+1),:);

end
