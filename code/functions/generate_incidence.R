# generate_incidence


generate_incidence <- function(t, conc = 0.05, agemin = 0,  
                            agemax = 50,  agepeak= 25, 
                            Imin =0.01,  Ipeak =0.05, 
                            Ifin =0.02){
  
  # consider providing some guidance about how a user may define incidence function 
  #varying Inicdence ( toy function)
  
  incidence = ifelse(t <= agemin, 0, 
                     ifelse(t <= agepeak, Imin + ((Ipeak - Imin)/(agepeak - agemin)) * (t - agemin),
                            ifelse(t <= agemax, Ipeak + ((Ifin - Ipeak )/(agemax - agepeak)) * (t - agepeak), 0)))
  
  return(incidence)
}