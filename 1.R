# 1.1 
# Python
# first_element_python = my_list[0]

# R
my_vector <- c(10, 20, 30, 40, 50)
first_element_r <- my_vector[1]
print(paste("First element: ", first_element_r))

# 1.2 
# Python
# last_element_python = my_list[-1]

# R 
last_element <- my_vector[length(my_vector)]
print(paste("Last element: ", last_element))

# 1.3
# Python 
# range_elements_python = my_list[1:5]

# R 
range_elements_r <- my_vector[2:5]
print(paste("Range of elements in R (from 2 to 5 including):", paste(range_elements_r, collapse = ", ")))

# 1.4 
# Python
# data = {'col1': [1, 2, 3], 'col2': [4, 5, 6], 'col3': [7, 8, 9]}
# df_python = pd.DataFrame(data)
# element_python_df = df_python.iloc[1, 2]

# Python (lista list/macierz)
# matrix_python = [[1, 2, 3],
#                 [4, 5, 6],
#                 [7, 8, 9]]
# element_python_matrix = matrix_python[1][2]

# R
matrix_r <- matrix(c(1, 4, 7, 2, 5, 8, 3, 6, 9), nrow = 3, byrow = TRUE)
element_r_matrix <- matrix_r[2, 3]
print(paste("R matrix[2][3]: ", element_r_matrix))

# 1.5
# Python (Pandas DataFrame)
# data = {'col1': [1, 2, 3], 'col2': [4, 5, 6], 'col3': [7, 8, 9]}
# df_python = pd.DataFrame(data)
# row_python_df = df_python.iloc[1, :]

# Python (lista list/macierz)
# matrix_python = [[1, 2, 3],
#                 [4, 5, 6],
#                 [7, 8, 9]]
# row_python_matrix = matrix_python[1]

# R
matrix_r <- matrix(c(1, 4, 7, 2, 5, 8, 3, 6, 9), nrow = 3, byrow = TRUE)
row_r_matrix <- matrix_r[2, ]

df_r <- data.frame(col1 = c(1, 2, 3), col2 = c(4, 5, 6), col3 = c(7, 8, 9))
row_r_df <- df_r[2, ]
