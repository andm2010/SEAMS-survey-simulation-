# generate_susceptibles

Susceptibles_Cum_Pop <- function(Age,
                                 Time,
                                 Cum_prob_survival,
                                 Birth_counts,
                                 Age_distribution
){
  
  #calculates the total number of the susceptible population (disritised manner)at a given Age and Time 
  #for a range of initial values of S(t_1:t_2, 0) and ages them through Delta_t. 
  #Returns a matrix
  
  Susceptible  = matrix(0, nrow = length(Time)+1, ncol =  length(Age)+1)
  
  Susceptible[(1:nrow(Susceptible)), 1] = Birth_counts
  Susceptible[1, (1:ncol(Susceptible))]  = Age_distribution
  
  #Times = 2:length(Time)
  
  for (tt in Time){
    for (aa in Age){
      
      
      if (tt > aa){
        
        Susceptible[tt +1, aa + 1] = Cum_prob_survival[tt + 1, aa + 1] *  (Susceptible[ , 1])[(tt - aa)+1]
        
      }else{
        
        Susceptible[tt +1, aa + 1] = Cum_prob_survival[tt + 1, aa + 1] *  (Susceptible[1, ])[(aa - tt)+1]
        
      }
      
    }
  }
  return(Susceptible)
  
}  

