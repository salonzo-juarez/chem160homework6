Vbar=0.05 
T=280.
R=0.083145
alpha=4.192
beta=0.02665
P=R*T/(Vbar-beta)-alpha/(Vbar*(Vbar+beta)+beta*(Vbar-beta))
cat("Calculated pressure for CO2", P)