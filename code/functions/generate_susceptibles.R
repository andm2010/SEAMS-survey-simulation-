# generate_susceptibles



generate_susceptibles <- function(survival_matrix = susceptible_cumulative_survival_matrix,
                                  births = negative_births
                                  ){
  
  delta_d <- row(survival_matrix) - col(survival_matrix)
  Susceptible  = matrix(NA, nrow = nrow(survival_matrix), ncol =  ncol(survival_matrix))
  
  Susceptible[(1:length(births)), ] =  births
  
  seQ = min(delta_d):max(delta_d)
  
  for (aa in seQ){
    
    if (aa >= 0){
    
    Susceptible[delta_d == aa]  = survival_matrix[delta_d == aa] * births[aa + 1]
  #Susceptible[(1:length(Time)) + aa, aa + 1] =  diag(survival_matrix[(1:length(Time))+aa, aa + 1]) %*% Susceptible[(1:length(Time)), 1]
    }else{
    
    Susceptible[delta_d == aa] = NA 
    
      }
  }
  return(Susceptible)
  
}  


generate_susceptibles(survival_matrix = w,
                      births = rep(100, 6))
