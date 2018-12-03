# generate_susceptible_cumulative_survival / generate_susceptible_surv_rate 

#I need clarity before I change this the name of the script susggest otherwise 

generate_susceptible_surv_rate <- function(incidence_matrix, 
                                           base_mortality_matrix
                                           ){
  
  

    
    susceptible_surv_rate = 1 - ( base_mortality_matrix * base_mortality_matrix)

  
   return(susceptible_surv_rate)
  
}




z = generate_susceptible_surv_rate(incidence_matrix = x, base_mortality_matrix = y)
