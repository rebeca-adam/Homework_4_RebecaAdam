
# Inputs
# sp_counts = The number of species abundances in counts. Each value represents the number of observations per individual species

#Outputs
# Returns a value between 0 and 1. Larger values are indicative of lower biodiversity. This is because a larger value means there is a greater probability that two of the randomly selected individuals are the same species.

#Formula: 
# D = sum((ni / N)^2)
# ni = species abundance
# N = total abundance across all species


simpson_index = function(sp_counts) {
  sp_counts = sp_counts[sp_counts > 0] # removes the species that have zero counts
  N = sum(sp_counts) # Calculate the total number of individuals 
  D = sum((sp_counts / N)^2) #Write the Simpson's Index
  return(D) #returns the result
}

# The function calculates the Simpson;s Index by using a vector of species count. The input is a vector where each number is representative of one species' abundance. The function first calculates the number of individual (N), and then divides each species county by N to calculate overall abundance. It then squares the values and sums then to return Simpson's Index (D). The output is a single value between 0 and 1.


