# 6.1 Definicja funkcji BMI_calc
BMI_calc <- function(waga, wzrost_cm) {
  wzrost_m <- wzrost_cm / 100
  bmi <- waga / (wzrost_m^2)
  return(bmi)
}

# 6.2 Utworzenie przykładowej ramki danych df
df <- data.frame(
  imie = c("Anna", "Bartek", "Celina", "Dawid", "Ewa"),
  waga = c(60, 85, 55, 90, 70),      # w kilogramach
  wzrost = c(165, 180, 160, 175, 168) # w centymetrach
)

# Dodanie kolumny BMI do ramki danych df
df$BMI <- BMI_calc(df$waga, df$wzrost)

# Podgląd wyników
head(df)