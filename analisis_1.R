# defunciones rancagua machali doñihue de 2016 al 07/07/2022
ran_mach_don
ran_mach_don_GLOS # de glosa CIE10 de 2016 al 07/07/2022

# Subset antes de la llegada de COVID-19 (03/03/2020)
class(ran_mach_don$fecha) # tipo date
R_M_D_pre_CV<- ran_mach_don %>% filter(fecha < "2020-03-03") # filtrado pre_covid
View(R_M_D_pre_CV)

frec_mach_d <- mach_frec %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "machali" = "n")

ran_PC
don_hie_PC<- R_M_D_pre_CV %>% filter(comuna == "Doñihue") %>%count(glos_CIE10)  %>% as_tibble() %>% rename( "Doñihue" = "n")
ran_PC<- R_M_D_pre_CV %>% filter(comuna == "Rancagua") %>%count(glos_CIE10)  %>% as_tibble() %>% rename( "Rancagua" = "n")
mach_PC<- R_M_D_pre_CV %>% filter(comuna == "Machalí") %>%count(glos_CIE10)  %>% as_tibble() %>% rename( "Machalí" = "n")
frec_pre_covid <- left_join( ran_PC, mach_PC) %>% left_join(don_hie_PC)
View(frec_pre_covid)
write.csv(frec_pre_covid, file = "frecuencias pre covid.csv")
ran_mach_don_GLOS
write.csv(ran_mach_don_GLOS, file = "frecuencias Glos R M D.csv")
sum(ran_PC$Rancagua )   # 2132 
sum(don_hie_PC$Doñihue) # 157
sum(mach_PC$Machalí) # 302

# mortalidad x año en la zona
R_M_D_2016<- ran_mach_don %>% filter(fecha < "2017-01-01") # R_M_D_2016
R_M_D_2017<- ran_mach_don %>% filter(fecha < "2018-01-01") %>% filter(fecha > "2016-12-31") # R_M_D_2017
R_M_D_2018<- ran_mach_don %>% filter(fecha < "2019-01-01")  %>% filter(fecha > "2017-12-31")# R_M_D_2018
R_M_D_2019<- ran_mach_don %>% filter(fecha < "2020-01-01")  %>% filter(fecha > "2018-12-31")# R_M_D_2019
R_M_D_2020<- ran_mach_don %>% filter(fecha < "2021-01-01")  %>% filter(fecha > "2019-12-31")# R_M_D_2020
R_M_D_2021<- ran_mach_don %>% filter(fecha < "2022-01-01")  %>% filter(fecha > "2020-12-31")# R_M_D_2020
R_M_D_2022<- ran_mach_don %>% filter(fecha < "2023-01-01")  %>% filter(fecha > "2021-12-31")# R_M_D_2022

R_M_D_2017
# 2016
frec_R_M_D_2016 <- R_M_D_2016  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2016$n)  # 598
# 2017
frec_R_M_D_2017 <- R_M_D_2017  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2017$n)  # 603
# 2018
frec_R_M_D_2018 <- R_M_D_2018  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2018$n)  # 632
# 2019
frec_R_M_D_2019 <- R_M_D_2019  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2019$n)  # 645
# 2020
frec_R_M_D_2020 <- R_M_D_2020  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2020$n)  # 720
# 2021
frec_R_M_D_2021 <- R_M_D_2021  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2021$n)  # 808
# 2022
frec_R_M_D_2022 <- R_M_D_2022  %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_M_D_2022$n)  # 398

años<- c(2016, 2017, 2018, 2019, 2020, 2021, 2022)
fallecimientos_totales <- c(598, 603, 632, 645, 720, 808, 398)
mor_años <- cbind(años, fallecimientos_totales)
mor_años




# Rancagua ####

# 2016
frec_R_2016 <- R_M_D_2016  %>% filter(comuna == "Rancagua") %>%  count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2016$n)  # 485
# 2017
frec_R_2017 <- R_M_D_2017  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2017$n)  # 500
# 2018
frec_R_2018 <- R_M_D_2018  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2018$n)  # 526
# 2019
frec_R_2019 <- R_M_D_2019  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2019$n)  # 528
# 2020
frec_R_2020 <- R_M_D_2020  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2020$n)  # 584
# 2021
frec_R_2021 <- R_M_D_2021  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2021$n)  # 659
# 2022
frec_R_2022 <- R_M_D_2022  %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_R_2022$n)  # 318

m_rancagua <- c(485,500, 526, 528, 584, 659, 318 )




# Machalí ####

# 2016
frec_M_2016 <- R_M_D_2016  %>% filter(comuna == "Machalí") %>%  count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2016$n)  # 76
# 2017
frec_M_2017 <- R_M_D_2017  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2017$n)  # 69
# 2018
frec_M_2018 <- R_M_D_2018  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2018$n)  # 69
# 2019
frec_M_2019 <- R_M_D_2019  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2019$n)  # 72
# 2020
frec_M_2020 <- R_M_D_2020  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2020$n)  # 94
# 2021
frec_M_2021 <- R_M_D_2021  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2021$n)  # 95
# 2022
frec_M_2022 <- R_M_D_2022  %>% filter(comuna == "Machalí") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_M_2022$n)  # 62

m_machali <- c(76,69, 69, 72, 94, 95, 62 )

# Doñihue ####

# 2016
frec_D_2016 <- R_M_D_2016  %>% filter(comuna == "Doñihue") %>%  count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2016$n)  # 37
# 2017
frec_D_2017 <- R_M_D_2017  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2017$n)  # 34
# 2018
frec_D_2018 <- R_M_D_2018  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2018$n)  # 37
# 2019
frec_D_2019 <- R_M_D_2019  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2019$n)  # 45
# 2020
frec_D_2020 <- R_M_D_2020  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2020$n)  # 42
# 2021
frec_D_2021 <- R_M_D_2021  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2021$n)  # 54
# 2022
frec_D_2022 <- R_M_D_2022  %>% filter(comuna == "Doñihue") %>% count(glos_CIE10) %>%
  as_tibble() 
sum(frec_D_2022$n)  # 28

m_doñihue <- c(37,34, 37, 45, 42, 54, 28 )
doñihue_años
mor_años <- cbind(mor_años, m_rancagua, m_machali, m_doñihue)
mor_años <- as_tibble(mor_años)

frec_D_2016 <- frec_D_2016 %>% rename("2016" = "n")
frec_D_2017 <- frec_D_2017 %>% rename("2017" = "n")
frec_D_2018 <- frec_D_2018 %>% rename("2018" = "n")
frec_D_2019 <- frec_D_2019 %>% rename("2019" = "n")
frec_D_2020 <- frec_D_2020 %>% rename("2020" = "n")
frec_D_2021 <- frec_D_2021 %>% rename("2021" = "n")
frec_D_2022 <- frec_D_2022 %>% rename("2022" = "n")

doñihue_años <- frec_D_2016 %>% left_join(frec_D_2017 ) %>% left_join(frec_D_2018) %>% left_join(frec_D_2019) %>% 
  left_join(frec_D_2020) %>%  left_join(frec_D_2021) %>%  left_join(frec_D_2022) 
doñihue_años

mor_años <- mutate(mor_años, años = as.character(años) )
mor_años <- mutate(mor_años, m_rancagua = as.numeric(m_rancagua)) %>%  mutate(mor_años, m_machali = as.numeric(m_machali)) %>% 
  mutate(mor_años, m_doñihue = as.numeric(m_doñihue))

tots<-summarise(mor_años, sum(m_rancagua), sum(m_machali), sum(m_doñihue))
años_1<-c("totales") %>% tibble()
totales<- tibble(años_1, tots)
sum(mor_años$m_rancagua)  #
totales
mor_años

años  <- c("2016", "2017", "2018", "2019", "2020", "2021", "2022",
           "2016", "2017", "2018", "2019", "2020", "2021", "2022", 
           "2016", "2017", "2018", "2019", "2020", "2021", "2022")
comuna <-c("Rancagua","Rancagua","Rancagua","Rancagua","Rancagua", "Rancagua", "Rancagua",
           "Machalí","Machalí","Machalí","Machalí","Machalí","Machalí","Machalí",
           "Doñihue","Doñihue","Doñihue","Doñihue","Doñihue","Doñihue","Doñihue")
fallecimientos <-c( 485, 500, 526, 528, 584, 659, 318, 76, 69, 69, 72, 94, 95, 62,37, 34, 37, 45, 42, 54, 28 )  

fallecidos_anuales <- tibble(años, comuna, fallecimientos)
fallecidos_anuales

fallecidos_anuales %>% ggplot(aes(fill=comuna, y= fallecimientos, x=años))+
  geom_bar(position = "dodge", stat = "identity")

fallecidos_anuales %>% ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_col(position = "dodge", stat = "identity")+
  facet_wrap(~años)
  theme_bw()

  
fig_2016 <- fallecidos_anuales %>% filter(años =="2016") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
    geom_bar(position = "dodge", stat = "identity")+
    ggtitle("Fallecimientos 2016")+
    ylab("")+
    xlab("")+
    labs(fill="Comunas")


fig_2017 <- fallecidos_anuales %>% filter(años =="2017") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2017")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")
   
fig_2018 <- fallecidos_anuales %>% filter(años =="2018") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2018")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")

fig_2019 <- fallecidos_anuales %>% filter(años =="2019") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2019")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")
  

fig_2020 <- fallecidos_anuales %>% filter(años =="2020") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2020")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")

fig_2021 <- fallecidos_anuales %>% filter(años =="2021") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2021")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")

fig_2022 <- fallecidos_anuales %>% filter(años =="2022") %>%  ggplot(aes(fill= comuna, y=fallecimientos, x=comuna))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("Fallecimientos 2022")+
  ylab("")+
  xlab("")+
  labs(fill="Comunas")


R_M_D_2016

frec_R_M_D_2016 <- R_M_D_2016 %>% filter(comuna == "Rancagua") %>% count(glos_CIE10) %>%
  as_tibble() 
frec_R_M_D_2016
frec_R_2022

frec_R_2016 <- arrange(frec_R_2016, desc(n))
frec_R_2017 <- arrange(frec_R_2017, desc(n))
frec_R_2018 <- arrange(frec_R_2018, desc(n))
frec_R_2019 <- arrange(frec_R_2019, desc(n))
frec_R_2020 <- arrange(frec_R_2020, desc(n))
frec_R_2021 <- arrange(frec_R_2021, desc(n))
frec_R_2022 <- arrange(frec_R_2022, desc(n))

frec_M_2016

frec_M_2016 <- arrange(frec_M_2016, desc(n))
frec_M_2017 <- arrange(frec_M_2017, desc(n))
frec_M_2018 <- arrange(frec_M_2018, desc(n))
frec_M_2019 <- arrange(frec_M_2019, desc(n))
frec_M_2020 <- arrange(frec_M_2020, desc(n))
frec_M_2021 <- arrange(frec_M_2021, desc(n))
frec_M_2022 <- arrange(frec_M_2022, desc(n))

arrange(frec_R_2021, desc(n))

frec_D_2016 <- arrange(frec_D_2016, desc(n))
frec_D_2017 <- arrange(frec_D_2017, desc(n))
frec_D_2018 <- arrange(frec_D_2018, desc(n))
frec_D_2019 <- arrange(frec_D_2019, desc(n))
frec_D_2020 <- arrange(frec_D_2020, desc(n))
frec_D_2021 <- arrange(frec_D_2021, desc(n))
frec_D_2022 <- arrange(frec_D_2022, desc(n))
arrange(frec_D_2022, desc('2022'))
arrange(frec_D_2017, desc('2017'))
frec_D_2022
