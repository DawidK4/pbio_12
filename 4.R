# 4.1 Stwórz macierz z losowymi wartościami ekspresji genów
Ekspresja <- matrix(runif(12, 1, 10), nrow = 3, ncol = 4)

# 4.2 Nadaj nazwy wierszy i kolumn
rownames(Ekspresja) <- c("Gen1", "Gen2", "Gen3")
colnames(Ekspresja) <- c("Próbka1", "Próbka2", "Próbka3", "Próbka4")

# 4.3 Oblicz średnią ekspresję dla każdego genu (wiersza)
srednia_geny <- rowMeans(Ekspresja)

# 4.4 Oblicz średnią ekspresję dla każdej próbki (kolumny)
srednia_probki <- colMeans(Ekspresja)

# 4.5 Transpozycja macierzy
EkspresjaT <- t(Ekspresja)
print(EkspresjaT)

# 4.6 Dane dla Próbki1 i Próbki3 oraz nowa macierz
dane_probka1_3 <- Ekspresja[, c("Próbka1", "Próbka3")]
print(dane_probka1_3)