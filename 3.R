# Wektor z poziomami ekspresji genów
numeric_vector <- c(10.2, 8.9, 12.5, 9.8, 15.3)

# 3.1 Oblicz średnią wartość w wektorze
mean_value <- mean(numeric_vector)

# 3.2 Oblicz różnicę między maksymalną, a minimalną wartością w wektorze
diff_max_min <- max(numeric_vector) - min(numeric_vector)

# 3.3 Zlicz ile elementów wektora jest wartościami powyżej 10, ale nie większymi niż 14
count_in_range <- sum(numeric_vector > 10 & numeric_vector <= 14)

# Wektor tekstowy
text_vector <- c("R", "Bioinformatyka", "DNA")

# 3.4 Zlicz znaki w każdym elemencie
char_counts <- nchar(text_vector)

# 3.5 Posortuj wektor malejąco
sorted_desc <- sort(text_vector, decreasing = TRUE)

# 3.6 Posortuj wektor rosnąco
sorted_asc <- sort(text_vector)