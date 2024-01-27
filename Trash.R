
#<!-- TUTTO INUTILE -->
#  ```{r}
# categorie o correlazioni o altro (est. punto precedente)  - sembra essere tutto inutile

# Height ~ Age : NIENTE
# Height ~ Weight : NIENTE
# Weight ~ Age : NIENTE
# BMI ~ Age : NIENTE
# Year ~ Age : NIENTE

ggplot(athletes_m, aes(y=Age, x=Year, color = BMI)) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()

ggplot(athletes_m, aes(y=log(Age), x=Year)) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()

ggplot(athletes_m, aes(y=log(Age), x=sqrt(Year))) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()

ggplot(athletes_m, aes(y=sqrt(Age), x=Year)) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()

ggplot(athletes_m, aes(y=sqrt(Age), x=Year^2)) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()

ggplot(athletes_m, aes(y=Age, x=log(Year))) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()
#```


### Analisi
#<!-- interessante analizzare la trasformate per capire quali relazioni o altro il fatto delle medaglie così è inutile (magari trovare altro o meglio abbandonare) -->
#  ```{r}
ggplot(athletes, aes(y=Height, x=Age, color = Medal)) + 
  geom_point() +
  ggtitle("Altezza-eta atleti e medagli vinte") +
  theme_minimal()
ggplot(athletes, aes(y=Height, x=Weight, color = Medal)) + 
  geom_point() +
  ggtitle("Altezza-peso atleti e medagli vinte") +
  scale_color_manual("legend", values = c("Gold" = "#FFDF00", "Silver" = "#C0C0C0", "Bronze" = "#CD7F32"), na.value = "#F0F0F0") +
  theme_minimal()
ggplot(athletes, aes(y=Weight, x=Age, color = Medal)) + 
  geom_point() +
  ggtitle("Peso-eta atleti e medagli vinte") +
  scale_color_manual("legend", values = c("Gold" = "#FFDF00", "Silver" = "#C0C0C0", "Bronze" = "#CD7F32"), na.value = "#F0F0F0") +
  theme_minimal()
#```


# EX quello sopra

# sembra essere INUTILE
athletes %>%
  na.omit(Medal) %>%
  ggplot(aes(y=Height, x=Sport, color = Medal)) + 
  geom_point(size = 0.8) +
  ggtitle("BMI-eta atleti e sport praticato") +
  scale_color_manual("legend", values = c("Gold" = "#FFDF00", "Silver" = "#C0C0C0", "Bronze" = "#CD7F32"), na.value = "#F0F0F0") +
  theme_minimal() +
  facet_wrap(vars(Medal))

# Approfondire questo aspetto
boxplot(Height ~ Sport, athletes)