rd <-
function (n, T.dist, T.dist.par) {
rDis = paste("r", T.dist, sep="" , collapse="")

if(length(T.dist.par)==1)
  { rd.t = do.call(rDis, list(n, T.dist.par[1])) } 
  else{
      if(length(T.dist.par)==2)
        { rd.t = do.call(rDis, list(n, T.dist.par[1], T.dist.par[2])) } 
        else
          { rd.t  = do.call(rDis, list(n, T.dist.par[1], T.dist.par[2], T.dist.par[3])) }
      }

return( rd.t )
}
