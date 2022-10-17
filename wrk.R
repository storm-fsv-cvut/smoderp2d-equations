n = 10

h0 = rep(1,n)
h0[1] = 2

h  =  rep(1,n)
dt = 100
a = 1
b = 0.2
es = 0.1
inf = 0.1/3

delejA <- function(h) {
  
  A = matrix(0,ncol=n,nrow=n)
  
  diag(x=A) = (1/dt + a*h**b)
  A[1,1] = 1
  A[n,n] = 1
  
  r = 1:(n-1)
  c = 2:(n)
  
  for (i in 1:(n-1)){
    # print (c(i,i+1))
    A[i,i+1] = a*h[i+1]**b
  }
  return(A)
}

plot(h0,ylim = c(0,10))



for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h

for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h


for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h


for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h


for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h


for (i in 1:10){
  A = delejA(h)
  B = h0/dt + es - inf
  h = solve(A,B)  
}
lines(h)
h0 = h
