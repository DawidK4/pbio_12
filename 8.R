# Przykładowa macierz Ekspresja 
set.seed(123)
Ekspresja <- matrix(runif(12, 0, 100), nrow = 4)

# 8.1 Oblicz średnią każdego wiersza macierzy
srednia_wiersze <- apply(Ekspresja, 1, mean)
print(srednia_wiersze)

# 8.2 Oblicz średnią każdej kolumny macierzy
srednia_kolumny <- apply(Ekspresja, 2, mean)
print(srednia_kolumny)

# 8.3 Znajdź maksymalną wartość w każdym wierszu
maks_wiersze <- apply(Ekspresja, 1, max)
print(maks_wiersze)