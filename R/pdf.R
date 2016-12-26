pdf <-
function (T.dist, T.dist.par, t) {
dDis = paste("d", T.dist, sep="" , collapse="")

if(length(T.dist.par)==1)
  { pdf.t = do.call(dDis, list(t, T.dist.par[1])) } 
  else{
      if(length(T.dist.par)==2)
        { pdf.t = do.call(dDis, list(t, T.dist.par[1], T.dist.par[2])) } 
        else
          { pdf.t  = do.call(dDis, list(t, T.dist.par[1], T.dist.par[2], T.dist.par[3])) }
      }

return( pdf.t )
}
