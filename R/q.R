q <-
function (p, T.dist, T.dist.par) {
qDis = paste("q", T.dist, sep="" , collapse="")

if(length(T.dist.par)==1)
  { q.t = do.call(qDis, list(p, T.dist.par[1])) } 
  else{
      if(length(T.dist.par)==2)
        { q.t = do.call(qDis, list(p, T.dist.par[1], T.dist.par[2])) } 
        else
          { q.t  = do.call(qDis, list(p, T.dist.par[1], T.dist.par[2], T.dist.par[3])) }
      }

return( q.t )
}
