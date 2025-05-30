# Tworzenie ramki danych
df <- data.frame(
  ID = 1:5,
  Wiek = c(25, 34, 28, 52, 40),
  Płeć = c("Kobieta", "Mężczyzna", "Kobieta", "Mężczyzna", "Kobieta"),
  Wzrost = c(165, 180, 170, 175, 168),
  Waga = c(60, 80, 65, 75, 58),
  Status_zdrowia = c("Dobry", "Średni", "Dobry", "Zły", "Dobry")
)

# 5.1 Podstawowe informacje i pierwsze trzy rekordy
str(df)
head(df, 3)

# 5.2 Średni wiek pacjentów
sredni_wiek <- mean(df$Wiek)
print(sredni_wiek)

# 5.3 Pacjenci ze statusem "Dobry" i płcią "Kobieta"
dobry_kobiety <- subset(df, Status_zdrowia == "Dobry" & Płeć == "Kobieta")
print(dobry_kobiety)

# 5.4 Sortowanie według wieku malejąco
df_sorted <- df[order(-df$Wiek), ]
print(df_sorted)

# 5.5 Maksymalny i minimalny wzrost
max_wzrost <- max(df$Wzrost)
min_wzrost <- min(df$Wzrost)
print(paste("Maksymalny wzrost:", max_wzrost))
print(paste("Minimalny wzrost:", min_wzrost))