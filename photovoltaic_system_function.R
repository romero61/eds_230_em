#' calculate_energy
#' Computes energy produced from a photovoltaic system 
#' if you know the average annual solar radiation.
#' You can use the following formula:
#' E=A∗r∗H∗PR
#'
#' @param A  is the solar panel area (m2)
#' @param H  is annual average solar radiation (kWh)
#' @param r  is panel yield (0-1) 
#' (manufacture efficiency - usually around 0.2)
#' @param PR is performance ratio (0-1) 
#' (accounting for site factors that impact efficiency usually around 0.75) 
#'
#' @return 
#' # Return the energy produced
#'
#' @examples
#' calculate_energy(A = 100,H = 1831.42, r = 0.2, PR = 0.75)
#' [1] 27471.3
#' 
calculate_energy <- function(A, H, r = 0.2, PR = 0.75) {
  # Calculate energy using the provided formula
  energy <- A * r * H * PR
  
  # Return the energy produced
  return(energy)
}
