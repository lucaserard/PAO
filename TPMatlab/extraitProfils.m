function v = extraitProfils(im)
    [n,p]=size(im);
    j=1;
    i=1;
    ligne=int64(linspace(1,n,5))
    
    pas = int64(n/5);
    g=[];
    d=[];
    for i=1:5
        while(j<=p && im(ligne(i),j)~=0)
           j=j+1;
        end
        g=[g j];
        j=p;
        while(j>0 && im(ligne(i),j)~=0)
           j=j-1;
        end
        d=[d j];
    end
    v = [d/p g/p]
end