# breve resumen del material..
r_m_d # es la base de datos que se esta utilizando de rancagua machalí y doñihue, no incluye menores de 2 años
defunciones # es toda la base de datos
defunciones_capitales_r # base de datos capitales regionales
ran_mach_don_GLOS # GLOSCIE10 de las comunas Rancagua, Machalí y Doñihue

# arreglar r_m_d ####
ran_mach_don <- arrange(ran_mach_don, desc(edad_en))
view(ran_mach_don)
ran_mach_don <- slice(ran_mach_don,58:4404)
ran_mach_don <- arrange(ran_mach_don, desc(edad))

ran_mach_don$GLOSA_CATEGORIA_DIAG1
ran_mach_don$GLOSA_GRUPO_DIAG1
ran_mach_don$GLOSA_SUBCATEGORIA_DIAG1

r_m_d <- arrange(r_m_d, desc(edad))
ran_mach_don<- select(ran_mach_don, edad, GLOSA_CATEGORIA_DIAG1, GLOSA_GRUPO_DIAG1,GLOSA_SUBCATEGORIA_DIAG1 )
r_m_d <- left_join(r_m_d,ran_mach_don )

view(r_m_d)
#graficos por sexo ####

rmd_sexo_16 <-r_m_d %>% filter(año =="2016") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2016 por edad")+
  ylab("")+
  xlab("")

rmd_sexo_17 <-r_m_d %>% filter(año =="2017") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2017 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_18 <- r_m_d %>% filter(año =="2018") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2018 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_19<- r_m_d %>% filter(año =="2019") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2019 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_20<- r_m_d %>% filter(año =="2020") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2020 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_21<- r_m_d %>% filter(año =="2021") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2021 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_22<- r_m_d %>% filter(año =="2022") %>% ggplot(aes(fill= sexo, y= caso, x=comuna, color=sexo))+
  geom_col()+
  ggtitle("Fallecimientos 2022 por sexo")+
  ylab("")+
  xlab("")

rmd_sexo_16
rmd_sexo_17
rmd_sexo_18
rmd_sexo_19
rmd_sexo_20
rmd_sexo_21
rmd_sexo_22

# ahora tipos de cancer


view(r_m_d)
glimpse(r_m_d$glos_CIE10)

rmd_t <- r_m_d %>% filter(glos_CIE10 == "Tumores [Neoplasias]")
rmd_t
glimpse(rmd_t)
frec_diag1_rmd <- rmd_t %>%  count(GLOSA_CATEGORIA_DIAG1) %>% as_tibble() %>% arrange(desc(n))

frec_Gdiag1_rmd <- rmd_t %>%  count(GLOSA_GRUPO_DIAG1) %>% as_tibble() %>% arrange(desc(n))

frec_Subcatd1_rmd <- rmd_t %>%  count(GLOSA_SUBCATEGORIA_DIAG1) %>% as_tibble() %>% arrange(desc(n))

view(frec_diag1_rmd)
view(frec_Gdiag1_rmd)
view(frec_Subcatd1_rmd)
