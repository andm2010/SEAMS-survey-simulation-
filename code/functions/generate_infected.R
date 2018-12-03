# generate_infected

generate_infected_0 <- function(infection_matrix,
                                susceptible_matrix){
  
  
  #does not run 
  #Infected_0 = Susceptible %*% Prob_infection 
  
  # #the function simulates the infected population at time t, aged a, who have been infected for 
  # #time tau i.e all individuals infected at a = aa_0 (where aa_0 id the age of infection).
  # 
  Infected_0 = matrix(NA, ncol = ncol(infection_matrix), nrow =  nrow(infection_matrix))
  
  
  for (aa in 1:ncol(Infected_0)){
    
    Infected_0[ ,aa] =  Prob_infection[ ,aa] * Susceptible[ ,aa]
  }
  
  
  
  return(Infected_0)
}