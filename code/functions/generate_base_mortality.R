# generate_base_mortality




generate_base_mortality <- function(age_step,
                                    birth_dates, 
                                    mortality_func
){
  
  
  #function calculates the attrition rates i.e. prob of not getting 
  #infected and the probability of not dying for a specific age and time.  
  
  mortality_matrix  = matrix(NA, nrow = length(birth_dates) + age_step, ncol =  length(1:age_step))
  times  = 0:length(birth_dates)
  
  for (aa in 1:age_step){
    
    mortality_matrix[times + aa, aa] =  mortality_func(times + aa, aa)
    
  }
  
  return(mortality_matrix)
  
}


 y  = generate_base_mortality(2,
                        0:5,
                        mortality_func = Backgrnd_Mortality_var) 

