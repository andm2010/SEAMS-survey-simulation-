# generate_incidence_matrix

generate_incidence_matrix <- function(age_step,
                                      birth_dates, 
                                      incidence_func
){
  
  
  #function calculates the attrition rates i.e. prob of not getting 
  #infected and the probability of not dying for a specific age and time.  
  
  infection_matrix  = matrix(NA, nrow = length(birth_dates) + age_step, ncol =  length(1:age_step))
  times  = 0:length(birth_dates)
  
  for (aa in 1:age_step){
    
    infection_matrix[times + aa, aa] =  incidence_func(times + aa, aa)
    
  }
  
  return(infection_matrix)
  
}



# test of the  function
x = generate_incidence_matrix(2,
                          0:5,
                          incidence_func = Incidence_var_a)
