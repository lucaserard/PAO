function mat = reductionTerrain(source)

  n = length(source);
  mat = source(1:int64(n/2+1),:);
  mat = sortrows(mat,1);
  n=size(mat);
  mat = mat(1:int64(n/2+1),:);

end