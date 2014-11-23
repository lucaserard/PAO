function plan = genPlan(X)
  
 
  cvx_begin
  variables plan(4,1)
  dual variables nul; 
  minimize( sum(X*plan)/sqrt(plan(1)+plan(2)+plan(3) ))
  subject to
  nul : plan <> 0;
  cvx_end


end