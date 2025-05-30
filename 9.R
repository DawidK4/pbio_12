# 9.1 Instalacja i aktywacja pakietu dplyr oraz wczytanie danych
install.packages("dplyr")    
library(dplyr)

# Wczytaj dane z pliku CSV
dane <- read.csv("tissue_gene_expression_sample.csv")

# 9.2 Sprawdź liczbę wierszy i kolumn
cat("Liczba wierszy:", nrow(dane), "\n")
cat("Liczba kolumn:", ncol(dane), "\n")

# 9.3 Minimalna i maksymalna wartość ekspresji genu 'x.LHPP'
min_LHPP <- dane %>% summarise(min_LHPP = min(x.LHPP, na.rm = TRUE))
max_LHPP <- dane %>% summarise(max_LHPP = max(x.LHPP, na.rm = TRUE))
print(min_LHPP)
print(max_LHPP)

# 9.4 Sortowanie rosnąco według 'x.LHPP'
dane_asc <- dane %>% arrange(x.LHPP)
head(dane_asc)

# 9.5 Sortowanie malejąco według 'x.LHPP'
dane_desc <- dane %>% arrange(desc(x.LHPP))
head(dane_desc)

# 9.6 Wybierz tkanki z wartościami ekspresji genów wyższymi niż 14 (przykład dla x.LHPP)
dane_wysoka_ekspresja <- dane %>% filter(x.LHPP > 14)
head(dane_wysoka_ekspresja)

# 9.7 Wybierz tylko kolumny dla genów x.MTF2 i x.APBA1
dane_geny <- dane %>% select(x.MTF2, x.APBA1)
head(dane_geny)