library(tidyverse)

dados = read.csv2("imoveis.csv")

#transformar em numerico a variavel metragem
dados = dados %>% mutate(metragem = as.numeric(metragem))

glimpse(dados)


#### analise descritiva

summary(dados)

# histograma preco

dados %>% ggplot(aes(x = preco))+
  geom_histogram()

#dispersao metragem vc imposto

dados %>% ggplot(aes(x= metragem,y=imposto_anual))+geom_point()
