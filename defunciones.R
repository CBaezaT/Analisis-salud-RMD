library(tidyverse)


# nombres de establecimientos de atención en urgencia
urgencias <- AtencionesUrgencia2022
defunciones <- DEFUNCIONES_FUENTE_DEIS_2016_2022_07072022
defunciones
nombres <- c("año", "fecha", "sexo", "edad_en", "edad", "cod_comuna", "comuna", "region", 
             "diagnostico", "CIE10", "glos_CIE10","CODIGO_GRUPO_DIAG1",
            "GLOSA_GRUPO_DIAG1","CODIGO_CATEGORIA_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
            "CODIGO_SUBCATEGORIA_DIAG1", "GLOSA_SUBCATEGORIA_DIAG1", "DIAG2", "CAPITULO_DIAG2",
            "GLOSA_CAPITULO_DIAG2", "CODIGO_GRUPO_DIAG2", "GLOSA_GRUPO_DIAG2", 
            "CODIGO_CATEGORIA_DIAG2", "GLOSA_CATEGORIA_DIAG2", "CODIGO_SUBCATEGORIA_DIAG2",
            "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")

defunciones <-defunciones %>%  rename_all(~nombres )

write_csv(defunciones, "defunciones_DEIS_2016_2022_07072022.csv" )

rancagua <- defunciones %>%  filter( comuna == "Rancagua")

d_rancagua <- rancagua %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                   "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
view(d_rancagua)

write_csv(d_rancagua, "defunciones_rancagua.csv")


defunciones_totales <- defunciones %>% select("año", "fecha", "sexo", "edad_en", "edad", "cod_comuna", "comuna", "region",
                                              "diagnostico", "CIE10", "glos_CIE10",
                                              "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                              "GLOSA_SUBCATEGORIA_DIAG1", 
                                              "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                              "GLOSA_CATEGORIA_DIAG2", 
                                              "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(defunciones_totales, "defunciones totales.csv")
view(defunciones_totales)
# Capitales regionales de Chile
# Arica
arica <- defunciones %>%  filter( comuna == "Arica")
d_arica <- arica %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                  "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_arica, "defunciones arica.csv")

# Iquique
iquique <- defunciones %>%  filter( comuna == "Iquique")
d_iquique <- iquique %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                            "diagnostico", "CIE10", "glos_CIE10",
                            "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                            "GLOSA_SUBCATEGORIA_DIAG1", 
                            "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                            "GLOSA_CATEGORIA_DIAG2", 
                            "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_iquique, "defunciones iquique.csv")

# Antofagasta
antofagasta <- defunciones %>%  filter( comuna == "Antofagasta")
d_antofagasta <- antofagasta %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                            "diagnostico", "CIE10", "glos_CIE10",
                            "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                            "GLOSA_SUBCATEGORIA_DIAG1", 
                            "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                            "GLOSA_CATEGORIA_DIAG2", 
                            "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_antofagasta, "defunciones antofagasta.csv")

# Copiapó
copiapo <- defunciones %>%  filter( comuna == "Copiapó")
d_copiapo <- copiapo %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                        "diagnostico", "CIE10", "glos_CIE10",
                                        "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                        "GLOSA_SUBCATEGORIA_DIAG1", 
                                        "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                        "GLOSA_CATEGORIA_DIAG2", 
                                        "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_copiapo, "defunciones copiapo.csv")

# La Serena
la_serena <- defunciones %>%  filter( comuna == "La Serena")
d_la_serena <- la_serena %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                "diagnostico", "CIE10", "glos_CIE10",
                                "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                "GLOSA_SUBCATEGORIA_DIAG1", 
                                "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                "GLOSA_CATEGORIA_DIAG2", 
                                "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_copiapo, "defunciones la_serena.csv")

# Valparaíso
valparaiso <- defunciones %>%  filter( comuna == "Valparaíso")
d_valparaiso <- valparaiso %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                    "diagnostico", "CIE10", "glos_CIE10",
                                    "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                    "GLOSA_SUBCATEGORIA_DIAG1", 
                                    "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                    "GLOSA_CATEGORIA_DIAG2", 
                                    "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_valparaiso, "defunciones valparaiso.csv")

# Santiago
santiago <- defunciones %>%  filter( comuna == "Santiago")
d_santiago <- santiago %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                      "diagnostico", "CIE10", "glos_CIE10",
                                      "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                      "GLOSA_SUBCATEGORIA_DIAG1", 
                                      "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                      "GLOSA_CATEGORIA_DIAG2", 
                                      "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_santiago, "defunciones santiago.csv")

# Rancagua
rancagua <- defunciones %>%  filter( comuna == "Rancagua")
d_rancagua <- rancagua %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                  "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_rancagua, "defunciones_rancagua.csv")

# Talca
talca <- defunciones %>%  filter( comuna == "Talca")
d_talca <- talca %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                  "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_talca, "defunciones talca.csv")

# Chillán
chillan <- defunciones %>%  filter( comuna == "Chillán")
d_chillan <- chillan %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                            "diagnostico", "CIE10", "glos_CIE10",
                            "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                            "GLOSA_SUBCATEGORIA_DIAG1", 
                            "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                            "GLOSA_CATEGORIA_DIAG2", 
                            "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_chillan, "defunciones chillan.csv")

# Concepción
concepcion <- defunciones %>%  filter( comuna == "Concepción")
d_concepcion <- concepcion %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                "diagnostico", "CIE10", "glos_CIE10",
                                "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                "GLOSA_SUBCATEGORIA_DIAG1", 
                                "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                "GLOSA_CATEGORIA_DIAG2", 
                                "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_concepcion, "defunciones concepcion.csv")

# Temuco
temuco <- defunciones %>%  filter( comuna == "Temuco")
d_temuco <- temuco %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                      "diagnostico", "CIE10", "glos_CIE10",
                                      "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                      "GLOSA_SUBCATEGORIA_DIAG1", 
                                      "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                      "GLOSA_CATEGORIA_DIAG2", 
                                      "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_temuco, "defunciones temuco.csv")

# Valdivia
valdivia <- defunciones %>%  filter( comuna == "Valdivia")
d_valdivia <- valdivia %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                              "diagnostico", "CIE10", "glos_CIE10",
                              "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                              "GLOSA_SUBCATEGORIA_DIAG1", 
                              "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                              "GLOSA_CATEGORIA_DIAG2", 
                              "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_valdivia, "defunciones valdivia.csv")

# Puerto Montt
puerto_montt <- defunciones %>%  filter( comuna == "Puerto Montt")
d_puerto_montt <- puerto_montt %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                  "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_puerto_montt, "defunciones puerto_montt.csv")

# Coyhaique
coyhaique <- defunciones %>%  filter( comuna == "Coihaique")
d_coyhaique <- coyhaique %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                  "diagnostico", "CIE10", "glos_CIE10",
                                  "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                  "GLOSA_SUBCATEGORIA_DIAG1", 
                                  "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                  "GLOSA_CATEGORIA_DIAG2", 
                                  "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_coyhaique, "defunciones coyhaique.csv")
d_coyhaique
# Punta Arenas
punta_arenas <- defunciones %>%  filter( comuna == "Punta Arenas")
d_punta_arenas <- punta_arenas %>% select("año", "fecha", "sexo", "edad_en", "edad", 
                                    "diagnostico", "CIE10", "glos_CIE10",
                                    "GLOSA_GRUPO_DIAG1", "GLOSA_CATEGORIA_DIAG1" , 
                                    "GLOSA_SUBCATEGORIA_DIAG1", 
                                    "GLOSA_CAPITULO_DIAG2",  "GLOSA_GRUPO_DIAG2", 
                                    "GLOSA_CATEGORIA_DIAG2", 
                                    "GLOSA_SUBCATEGORIA_DIAG2", "LUGAR_DEFUNCION")
write_csv(d_punta_arenas, "defunciones punta_arenas.csv")

d_punta_arenas



# d_rancagua

frec_causas_rancagua <- d_rancagua %>% count(glos_CIE10) %>% as_tibble() %>% rename( "rancagua" = "n")
frec_causas_rancagua
colnames(frec_causas_rancagua)

# Arica
frec_causas_arica <- d_arica %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "arica" = "n")
frec_causas_arica
# Iquique
frec_causas_iquique <- d_iquique %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "iquique" = "n")
frec_causas_iquique

# Antofagasta
frec_causas_antofa <- d_antofagasta %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "antofagasta" = "n")
frec_causas_antofa
# Copiapo
frec_causas_copiapo <- d_copiapo %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "copiapo" = "n")
frec_causas_copiapo

# La Serena
frec_causas_la_serena <- d_la_serena %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "la serena" = "n")
frec_causas_la_serena

# Valparaiso
frec_causas_valparaiso <- d_valparaiso %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "valparaiso" = "n")
frec_causas_valparaiso

# Santiago
frec_causas_santiago <- d_santiago %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "santiago" = "n")
frec_causas_snatiago

# Rancagua
frec_causas_rancagua <- d_rancagua %>% count(glos_CIE10) %>% as_tibble() %>% rename( "rancagua" = "n")
frec_causas_rancagua
colnames(frec_causas_rancagua)

# Talca
frec_causas_talca <- d_talca %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "talca" = "n")
frec_causas_talca

# Chillan
frec_causas_chillan <- d_chillan %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "chillan" = "n")
frec_causas_chillan

# Concepción
frec_causas_concepcion <- d_concepcion %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "concepcion" = "n")
frec_causas_concepcion

# Temuco
frec_causas_temuco <- d_temuco %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "temuco" = "n")
frec_causas_temuco

# Valdivia
frec_causas_valdivia <- d_valdivia %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "valdivia" = "n")
frec_causas_valdivia

# Puerto Montt
frec_causas_puerto_montt <- d_puerto_montt %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "puerto montt" = "n")
frec_causas_puerto_montt

# Coyhaique
frec_causas_coyhaique <- d_coyhaique %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "coyhaique" = "n")
frec_causas_coyhaique
d_coyhaique
# Punta Arenas
frec_causas_punta_arenas <- d_punta_arenas %>% count(glos_CIE10) %>%
  as_tibble() %>% rename( "punta arenas" = "n")
frec_causas_punta_arenas

join <- left_join(frec_causas_arica, frec_causas_iquique)
join <- left_join(join, frec_causas_antofa)
join <- join %>% left_join(frec_causas_copiapo) %>%
  left_join(frec_causas_la_serena) %>% left_join(frec_causas_valparaiso) %>% 
  left_join(frec_causas_santiago) %>%  left_join(frec_causas_rancagua) %>% 
  left_join(frec_causas_talca) %>% left_join(frec_causas_chillan) %>% 
  left_join(frec_causas_concepcion) %>% left_join(frec_causas_temuco) %>% 
  left_join(frec_causas_valdivia) %>% left_join(frec_causas_puerto_montt) %>% 
  left_join(frec_causas_coyhaique) %>%  left_join(frec_causas_punta_arenas)
f_c_totales <- join
view(f_c_totales)
write_csv(f_c_totales, "frec defunciones x capitales regionales.csv")
