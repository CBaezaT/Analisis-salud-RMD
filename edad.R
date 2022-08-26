# analisis 2
# vamos a crear divisiones por edad según causa de fallecimiento...
# 1 edad en años
# 2 edad en meses
# 3 edad en dias
# 4 edad en horas
# 0 ignorado
view(R_M_D_2016) # 1 y 3
view(R_M_D_2017) # 1 2 y4
view(R_M_D_2018) # 1 2 3 y 4
view(R_M_D_2019)
view(R_M_D_2020)
view(R_M_D_2021)
view(R_M_D_2022)
R_M_D_2022

ran_mach_don_s <- ran_mach_don %>% select(año, fecha,sexo, edad_en, edad, comuna, diagnostico, CIE10, glos_CIE10)
ran_mach_don_s<-ran_mach_don_s %>% filter( edad_en ==1) # filtrados mayores de 1 año
ran_mach_don_s2 <- ran_mach_don %>% select(año, fecha,sexo, edad_en, edad, comuna, diagnostico, CIE10, glos_CIE10) %>% filter( edad_en ==2)
view(ran_mach_don_s)
ran_mach_don_s
# se dejan fuera menores de 1 año
frec_R_2016 <- ran_mach_don_s %>% filter(comuna == "Rancagua")  %>%  filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
##
ran_mach_don_s$edad
hist(ran_mach_don_s$edad)
summary(ran_mach_don_s$edad)
quantile(ran_mach_don_s$edad)
ran_mach_don_s$edad_en

ran_mach_don_s  <- arrange(ran_mach_don_s, edad)
ran_mach_don_s
# factor 1
s_1<- ran_mach_don_s %>% filter( edad <= 12) %>% mutate(f_edad = edad_en *1) # 1 menor o = 12
s_2<- ran_mach_don_s %>% filter( edad > 12 )%>% filter( edad <= 18) %>% mutate(f_edad  = edad_en *2) # 13 -18
s_3 <- ran_mach_don_s %>% filter( edad > 18 )%>% filter( edad <= 40) %>% mutate(f_edad =  edad_en *3) # 19 -40
s_4 <- ran_mach_don_s %>% filter( edad > 40 )%>% filter( edad <= 60) %>% mutate(f_edad =  edad_en *4) # 41 - 60
s_5 <- ran_mach_don_s %>% filter( edad > 60 )%>% filter( edad <= 80) %>% mutate(f_edad =  edad_en *5) # 61 - 80
s_6 <- ran_mach_don_s %>% filter( edad > 80 ) %>% mutate(f_edad = edad_en *6) # 81+

r_m_d <- bind_rows(s_1, s_2, s_3, s_4, s_5, s_6)
min(s_6$edad)
r_m_d
r_m_d$f_edad<-as.factor(r_m_d$f_edad)
edades<- c("1-12", "13-18", "19-40", "41-60", "61-80", "81+")
r_m_d$f_edad
r_m_d$f_edad<-as.character(r_m_d$f_edad)
r_m_d$f_edad<-factor(r_m_d$f_edad, ordered = TRUE, levels = c("1-12", "13-18", "19-40", "41-60", "61-80", "81+"))

r_m_d<- r_m_d %>% mutate(caso =1)
levels(r_m_d$f_edad)

fct_count(r_m_d$f_edad)

view(r_m_d)

rmd_edad_22<-
  r_m_d %>% filter(año =="2022") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2022 por edad")+
  ylab("")+
  xlab("")

rmd_edad_21<- r_m_d %>% filter(año =="2021") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2021 por edad")+
  ylab("")+
  xlab("")

rmd_edad_20<- r_m_d %>% filter(año =="2020") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2020 por edad")+
  ylab("")+
  xlab("")

rmd_edad_19<- r_m_d %>% filter(año =="2019") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2019 por edad")+
  ylab("")+
  xlab("")

rmd_edad_18 <- r_m_d %>% filter(año =="2018") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2018 por edad")+
  ylab("")+
  xlab("")

rmd_edad_17 <-r_m_d %>% filter(año =="2017") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2017 por edad")+
  ylab("")+
  xlab("")

rmd_edad_16 <-r_m_d %>% filter(año =="2016") %>% ggplot(aes(fill= f_edad, y= caso, x=comuna, color=f_edad))+
  geom_col()+
  ggtitle("Fallecimientos 2016 por edad")+
  ylab("")+
  xlab("")




rmd_edad_21
