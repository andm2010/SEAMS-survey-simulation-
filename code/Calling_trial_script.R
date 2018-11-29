
source("C:/Users/user/OneDrive - Stellenbosch University/CODES/age _time_structure/Trial_script.R", echo = FALSE)

Birth_counts <- Make_birth_counts(Total_births = 10000,
                                  Birth_rate = Birth_rates(t_1 = 1, 
                                  t_2 = 101,
                                  Delta =1))


Age_distribution <- Age_distribution(t_1 = 1,
                                     t_2 = 101,
                                     Delta = 1,
                                     Total_births = 10000)

Survival_Prob = Discretised_Susceptible_Survival_Prob(Ages = 1:110,
                                                      Time = seq(1, 110, 1), 
                                                      Incidence = Incidence_var_a, 
                                                      Mortality = Backgrnd_Mortality_var)


Cum_prob_survival = Discretised_Susceptible_Cumulative_incidence_Prob(Age = 1:100,
                                                                      Time = seq(1, 100, 1),
                                                                      Survival_Prob = Survival_Prob)
                             

Survival_Prob = Discretised_Susceptible_Survival_Prob(Ages = 1:110,
                                                      Time = seq(1, 110, 1),
                                                      Incidence = Incidence_var_a, 
                                                      Mortality = Backgrnd_Mortality_var)     







Prob_infection = Discretised_probability_of_infection(Ages =1:100,
                                                      Time = seq(1, 100, 1), 
                                                      Incidence = Incidence_var_a)



Survival_infected <- Discretised_Infected_Survival_Prob(Ages = 1:100,
                                                        Time = seq(1, 100, 1),
                                                        Back_Mort = Backgrnd_Mortality_var,
                                                        Excess_Mort = Excess_Mortality_var_a)




 SuSceptible_1 = Susceptibles_pop(Age = seq(1, 100, 1),
                                  Time = seq(1, 100, 1),
                                  prob_survival = Survival_Prob,
                                  Birth_counts = Birth_counts[-1],
                                  Age_distribution = Age_distribution[-1])
 



vectorised_Susceptibles <- Vectorised_Susceptibles(Age = 1:100,
                                                   Time = 1:100,
                                                   Cum_prob_survival = Cum_prob_survival,
                                                   Birth_counts = Birth_counts,
                                                   Age_distribution = Age_distribution) 






Susceptible = Susceptibles_Cum_Pop(Age = 1:100,
                                   Time = 1:100,
                                   Cum_prob_survival = Cum_prob_survival,
                                   Birth_counts = Birth_counts,
                                   Age_distribution = Age_distribution)




Infected <- Initially_Infected(Ages =1:100,
                               Time = seq(1, 100, 1),
                               Susceptible = Susceptible,
                               Birth_counts = Birth_counts,
                               Age_distribution = Age_distribution,
                               Prob_infection = Prob_infection
                               )



Survival_prob_infected <- Discretised_Infected_Survival_Prob(Ages = 1:100,
                                                             Time = 1:100, 
                                                             Back_Mort = Backgrnd_Mortality_var, 
                                                             Excess_Mort = Excess_Mortality_var_a)

Infected_Surviving <- Infected_Overall(Initially_infected = Infected,
                                       Survival_prob = Survival_prob_infected
                                      )


prevalence <-  Infected_Surviving / vectorised_Susceptibles

