# generate_birth_counts



Birth_rates <- function(t_1, t_2, Delta){
  Time  = seq(t_1, t_2, Delta)
  birth_rates = seq(Time)/sum(Time)
  
  return(birth_rates)
}


#can we make one function as per suggestions but this can save as a toy example 

Make_birth_counts <- function(Total_births, 
                              Birth_rate = Birth_rates){
  
  
  
  birthcounts =  Birth_rate * Total_births
  
  return(birthcounts)
}