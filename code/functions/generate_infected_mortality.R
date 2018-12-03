#generate_infected_mortality

generate_infected_mortality <- function(Ages,
                                        Time, 
                                        mortality_fun
                                        ){
  
  
  #function calculates the dicretised survival probabilities i.e. prob of not getting 
  #infected and the probability of not dying for a specific age and time.  
  mortality_matrix = matrix(NA, nrow = length(Time), ncol =  length(Ages))
  
  for (aa in Ages){
    for(tt in Time){ 
      
      mortality_matrix[tt, aa] = mortality_func(tt, aa)
    }
  }
  
  return(mortality_matrix)
  
}
