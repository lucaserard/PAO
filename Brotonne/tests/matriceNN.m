function mat = matriceNN(source)
n = length(source);
sq=int64(sqrt(n));
mat=zeros(sq);
  for i=1:n;
    mat(source(i,1),source(i,2))=source(i,3);
  end

end
