
#distribucion normal
tamano_muestral <- 350
iteraciones <- 100


medias <- vector()
desv_est <- vector()

media_poblacional <- 3
desv_est_poblacional <- 5



for (i in seq_len(iteraciones)){
  muestra<- rnorm(tamano_muestral, media_poblacional, desv_est_poblacional)
  medias[i] <- mean(muestra)
  desv_est[i] <- sd(muestra)
}

plot(medias, desv_est)
points(media_poblacional, desv_est_poblacional, col = 2, cex = 3, pch = 20)

#regresion lineal

tamano_muestral <- 35
iteraciones <- 100
beta_0 <- 1
beta_1 <- -0.3

beta_0_estimado <- vector()
beta_1_estimado <- vector()

genera_y <- function(x, beta_0, beta_1){
  y = beta_1*x + beta_0 + rnorm(length(x), 0, 0.5)
  
}

for (i in seq_len(iteraciones)){
  x <- seq(-3 , 3 , length.out = tamano_muestral)
  y <- genera_y(x , beta_0, beta_1)
  beta_estimado <- coef(lm(y ~ x))
  beta_0_estimado[i]<- beta_estimado[1]
  beta_1_estimado[i]<- beta_estimado[2]
}


plot(beta_0_estimado, beta_1_estimado)
points(beta_0, beta_1 , col = 2 , cex = 3 , pch = 20)


























