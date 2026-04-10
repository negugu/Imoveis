# Leitura de banco de dados

library(tidyverse)

dados = read.csv2("imoveis.csv")

##transformar em numerico a variavel metragem
dados = dados %>% mutate(metragem = as.numeric(metragem))

# Gráficos

dados %>% ggplot(aes(x = metragem))+
  geom_histogram()


# Medidas