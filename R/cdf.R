cdf <-
function (T.dist, T.dist.par, t) {
pDis = paste("p", T.dist, sep="" , collapse="")

if(length(T.dist.par)==1)
  { cdf.t = do.call(pDis, list(t, T.dist.par[1])) } 
  else{
      if(length(T.dist.par)==2)
        { cdf.t = do.call(pDis, list(t, T.dist.par[1], T.dist.par[2])) } 
        else
          { cdf.t  = do.call(pDis, list(t, T.dist.par[1], T.dist.par[2], T.dist.par[3])) }
      }

return( cdf.t )
}
