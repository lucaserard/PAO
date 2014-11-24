function plan = genPlan(X)
	 
  %plan est un vecteur de longueur 4 et X une matrice de taille nx3 
  n=length(X);
  X = [X ones(n,1)];	 

  cvx_begin
  variables plan(4,1)
  dual variables nul; 
  minimize( sum(X*plan)/sqrt(plan(1)+plan(2)+plan(3) ))
  subject to
  nul : plan <> 0;
  cvx_end


end
