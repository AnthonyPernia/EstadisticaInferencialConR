Y <- rnorm(100)


plot(density(Y))


Y <- rnorm(100, 5, 3)


plot(density(Y))

Y <- runif(100)

plot(density(Y))

Y <- runif(100, 3, 8)
plot(density(Y))           


data.frame(
  Edad = rnorm(50, 10, 1.2),
  Lugar = 'Escuela'
) -> escuela

data.frame(
  Edad = rnorm(45, 15, 1.9),
  Lugar = 'Preparatoria'
) -> prepa

data.frame(
  Edad = rnorm(80, 21, 2.5),
  Lugar = 'Universidad'
) -> universidad

rbind(escuela, prepa, universidad) -> edad_lugar

boxplot(Edad ~ Lugar, data = edad_lugar)

#modelo lineal
X <- seq(0, 3*pi , length.out = 100)
Y <- -0.3*X + 1 + rnorm(100, 0, 0.5)
Z <- -0.3*X + 1 

data.frame(X,Y,Z) -> datos_lineal

plot(Y ~ X , data=datos_lineal)
lines(Z ~ X, data = datos_lineal, col = 2, lwd = 2)

#modelo NO - lineal
X <- seq(0, 3*pi , length.out = 100)
Y <- -cos(X) + rnorm(100, 0, 0.5)
Z <- -cos(X)

data.frame(X,Y,Z) -> datos_no_lineal

plot(Y ~ X , data=datos_no_lineal)
lines(Z ~ X, data = datos_no_lineal, col = 2, lwd = 2)





















