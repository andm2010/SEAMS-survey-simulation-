# generate_infected

generate_infected_0 <- function(infection_matrix,
                                susceptible_matrix){
  
  
  #calculates the infecteds initial at a given age and time.

  infected_0 <- infection_matrix * susceptible_matrix
  

  return(infected_0)
}
