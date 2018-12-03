# generate_susceptible_cumulative_survival

#I guess this is the script function you sort of skipped or embedded in the previous one 

#This how far I could go will fill up the rest as we go.. 



generate_susceptible_cumulative_survival <- function(susceptible_survival_rate_matrix
                                                     ){
  
  #browser()
  #calculates the cum

  susceptible_cumulative_survival <- matrix(NA, ncol = ncol(susceptible_survival_rate_matrix), nrow = nrow(susceptible_survival_rate_matrix))
  
  column_1 <- (nrow(susceptible_survival_rate_matrix) - ncol(susceptible_survival_rate_matrix))+1
  
  susceptible_cumulative_survival[1: column_1, 1] = rep(1,  column_1)
  
  for  (aa in 2:ncol(susceptible_survival_rate_matrix)){
    for (tt in 2 : nrow(susceptible_survival_rate_matrix)){
   
      if (!is.na(susceptible_survival_rate_matrix[tt, aa]) == T){
        
      susceptible_cumulative_survival[tt , aa ] = susceptible_cumulative_survival[tt-1, aa - 1] * susceptible_survival_rate_matrix[tt - 1 , aa -1]
      
      }else{
        susceptible_cumulative_survival[tt, aa]  = NA
        
      }
      
     }
    }
  return(susceptible_cumulative_survival)
}

w  = generate_susceptible_cumulative_survival(susceptible_survival_rate_matrix = z)








