function xyz = filtrePlan(source,pas,eps)
  [n,p]=size(source);
  xyz=[ 1, 1, source(1,1) ];
  
  for i=1+pas,n-pas;
    for j=1+pas,p-pas;
        
      X = [i+pas j source(i+pas,j);
	   i+pas j+pas source(i+pas,j+pas);
	   i+pas j-pas source(i+pas,j-pas);
	  
	   i-pas j source(i-pas,j+pas);
	   i-pas j+pas source(i-pas,j+pas);
	   i-pas j-pas source(i-pas,j-pas);
	   
	   i j+pas source(i,j+pas);
	   i j-pas source(i,j-pas);
	  ];

      plan = genPlan(X);
      
      if(distancePP(plan,[i j source(i,j)]) > eps )
        xyz=[xyz;i j source(i,j)];
      end
   
    end
    
  end
  
  
	 

	 
end
