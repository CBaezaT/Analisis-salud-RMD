# defunciones totales
head(defunciones_totales)
capitales_regionales <- c("Arica","Iquique", "Antofagasta", "Copiapó", "La Serena",
                          "Valparaíso", "Santiago", "Rancagua", "Talca", "Chillán",
                         "Concepción", "Temuco", "Valdivia", "Puerto Montt",
                         "Coihaique","Punta Arenas")

defunciones_capitales_r<- defunciones_totales %>% filter( comuna == capitales_regionales)
view(defunciones_capitales_r)
write_csv(defunciones_capitales_r, "defunciones capitales regionales 2016_07072022.csv")


21217 + 19484 + 14015 + 12589 # 67305 / 274806


67305 / 274806 # 0.2449182

11537 + 47250 # muertes COVID 58787

274806 - 58787 # muertes - muertes covid 216019

67305/216019 # 0.3115698

# Rancagua vs Machali

ran_mach_don  <- defunciones %>%  filter( comuna == c("Rancagua", "Machalí", "Doñihue"))
View(ran_mach)
View(ran_mach_don)
mach_frec<- defunciones %>%  filter( comuna ==  "Machalí")
don_hie<- defunciones %>% filter(comuna == "Doñihue")
don_hie
frec_don_hie <- don_hie %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "Doñihue" = "n")
View(frec_mach_d)
frec_mach_d <- mach_frec %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "machali" = "n")
frec_don_hie
ran_mach
ran_vs_mach <- left_join(frec_mach_d, frec_causas_rancagua)
ran_mach_don_GLOS<- left_join(ran_vs_mach, frec_don_hie)
View(ran_mach_don_GLOS) # Rancagua, machali y doñihue by GLOSCIE10

write_csv(ran_mach, "defunciones rancagua machali 2016_07072022.csv")
write_csv(ran_mach_don, "defunciones rancagua machali doñihue 2016_07072022.csv")

write_csv(ran_vs_mach, " causas principales def ran_mach 2016_07072022.csv")
ran_vs_mach_don
ran_vs_mach_1 <- mutate(ran_vs_mach, pp = machali / rancagua)

sum(ran_vs_mach$machali) # 1576
sum(ran_vs_mach$rancagua) # 10744

ran_vs_mach_1<- ran_vs_mach_1 %>% mutate( m_pp = machali /1576)
ran_vs_mach_1<- ran_vs_mach_1 %>% mutate( r_pp = rancagua /10744)
ran_vs_mach_1 <- ran_vs_mach_1 %>% select(glos_CIE10, machali, rancagua, m_pp, r_pp)
View(ran_vs_mach_1)

ran_vs_mach_1<- ran_vs_mach_1 %>% mutate( dif_pp = r_pp-m_pp)
ran_vs_mach_1
dir <- system.file(package = "dslabs")
list.files(path = dir)
