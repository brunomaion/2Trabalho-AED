# Reprodutibilidade
set.seed(123)

# Criando variável independente X
x <- rnorm(50, mean = 10, sd = 2)   # 50 pontos com média 10 e desvio 2

# Criando Y como função linear de X + ruído
y <- 5 + 2*x + rnorm(50, mean = 0, sd = 2)  # β0=5, β1=2


# Ajuste do modelo
modelo <- lm(y ~ x)

# Resumo do modelo
summary(modelo)
plot(x, y, main = "Regressão Linear Simples", 
     xlab = "X", ylab = "Y", pch = 19, col = "blue")

# Reta ajustada
abline(modelo, col = "red", lwd = 2)

# Gráficos de diagnóstico
par(mfrow=c(2,2))  # organiza em 4 gráficos
plot(modelo)