# 2.1
int_var <- 10                # Zmienna całkowita
float_var <- as.numeric(int_var)  # Konwersja na zmiennoprzecinkową
int_var2 <- as.integer(float_var) # Konwersja z powrotem na całkowitą

# 2.2
str_var <- "To jest tekst"
typeof_str <- typeof(str_var) # Sprawdzenie typu danych

# 2.3
str1 <- "Hello"
str2 <- "World"
combined_str <- paste(str1, str2) # Połączenie z dodaniem spacji

# 2.4
logic1 <- TRUE
logic2 <- FALSE
or_result <- logic1 | logic2   # Operacja OR
and_result <- logic1 & logic2  # Operacja AND