
# Paquetes ----------------------------------------------------------------

#install.packages('ggforce')
#install.packages('tidyverse')
#install.packages('tidyquant')
install.packages('concaveman')


library(ggforce)
library(tidyverse)
library(tidyquant)
library(concaveman)


# DataSet -----------------------------------------------------------------

mpg

# Plot's ------------------------------------------------------------------

g1 <- mpg %>% 
      mutate(engine_size = str_c('cylinder: ',cyl)) %>% 
      ggplot(aes(displ, hwy)) +
      geom_point()

g1

g2 <- g1 + 
    geom_mark_hull(
      aes(fill = engine_size, label = engine_size),
      concavity = 2.8
    )

g2

g3 <- g1 + 
  geom_mark_hull(
    aes(fill = engine_size, label = engine_size),
    concavity =  1.0
  )

g3


# Más Complejo ------------------------------------------------------------

g4 <- g2 +
      geom_smooth(se = FALSE, span = 1.0) + 
      expand_limits(y = 50) +
      theme_tq() + 
      scale_fill_tq() +
      labs(
        title = "Tendencia del consumo económico del combustible por tamaño del motor 
        desplazamiento",
        subtitle = "El gráfico cascara indica los clusters y/o grupo de asignación",
        y = "Metros por Galón de Conustible (MPG)",
        x = "Capacidad de estanque de combustible (Litros)",
        fill = "",
        caption = "El tamaño del motor influye negativamente en la economia del combustible"
      )

g4

