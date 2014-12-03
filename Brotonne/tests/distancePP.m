function d = distancePP(plan,point)
    
    d = (point*plan')/sqrt(plan(1)+plan(2)+plan(3))

end