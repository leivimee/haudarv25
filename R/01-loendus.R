library(sf)
library(tidyverse)
library(readxl)
library(progress)

# kogu transektid

atr1<-st_read("src/atlas/atlas-transekt.gpkg", "transekt")
atr2<-st_read("src/soome/soome-transekt.gpkg", "transekt")

# standardiseeri
atr<-atr1 %>%
  mutate(skeem="atlas") %>%
  rename(transekt=id) %>%
  select(skeem,transekt,len,year) %>%
  bind_rows(
    atr2 %>%
      mutate(skeem="soome") %>%
      rename(transekt=id) %>%
      select(skeem,transekt,len,year)
  ) %>%
  # eemalda loendamata rajad
  filter(!is.na(year))


# kogu vaatlused

vtl1 <- read_csv2("src/atlas/atlase-transektid-2021-2024-vaatlused.csv") %>% mutate(skeem="atlas") %>%
  bind_rows(
    read_csv2("src/soome/soome-transektid-2021-vaatlused.csv") %>%
      mutate(skeem="soome")
  ) %>%
  bind_rows(
    read_csv2("src/soome/soome-transektid-2022-vaatlused.csv") %>% mutate(skeem="soome")
  )


vtl <- vtl1 %>%
  filter(!SCI_CODE%in%c("passer","loxia")) %>%
  filter(BIRD==TRUE) %>%
  filter(PRECISE==TRUE) %>%
  filter(PAIRS>0) %>%
  rename(
    transekt=id,
    liik=SCI_CODE,
    arv=NUMBER,
    tkood=ACTION,
    riba=BAND,
    täpne=PRECISE,
    lind=BIRD,
    sugu=GENDER,
    pkood=ATLAS,
    paare=PAIRS,
    märkus=REMARKS,
    aasta=YEAR,
    kuupv=DATE,
    l=LON,
    b=LAT
  ) %>%
  mutate(
    obsrvr=unlist(lapply( OBSRVR, function(x)paste( substring(strsplit(x,"\\ ")[[1]],1,2) ,collapse="") )),
    obsrvr=replace(obsrvr,which(obsrvr=="Rein Nellis"),"ReiNe"),
    obsrvr=replace(obsrvr,which(obsrvr=="Art-Villem Adojaan"),"ArtAd"),
    obsrvr=replace(obsrvr,which(obsrvr=="Arne Ader"),"ArnAd")
  ) %>%
  mutate(id=1:nrow(.)) %>%
  st_as_sf(coords=c("l","b"), crs=4326) %>%
  st_transform(3301)



atratr<-atr %>%
  left_join(
    vtl %>% st_drop_geometry() %>%
      select(transekt, obsrvr, kuupv) %>%
      distinct(),
    by="transekt"
  )
atr<-atratr




pb <- txtProgressBar(min = 1, max = nrow(atr), style = 3)

for(ii in 1:nrow(atr)) {
  #ii<-1
  sitetrack<-atr %>%
    slice(ii)
  
  siteobs<-vtl %>%
    filter(transekt==sitetrack$transekt) 

  # kaugus
  siteobsdist<-st_distance(siteobs,sitetrack)
  siteobs$dist<-as.numeric(siteobsdist)
  
  # riba
  band<-cut(siteobs$dist, breaks=c(0,25,50,100,150,200,250), include.lowest = TRUE, labels=F)
  siteobs$band<-band
  
  #p<-siteobs %>%
  #  mutate(band=as.factor(band)) %>%
  #  ggplot()+
  #  geom_sf(data=sitetrack, linewidth=1.2)+
  #  geom_sf(aes(color=band))+
  #  theme_minimal()
  
  
  if(ii==1) {
    survey.obs.new <- siteobs %>% st_drop_geometry()
    survey.seg.new <- sitetrack
  } else {
    survey.obs.new <- survey.obs.new %>%
      bind_rows(siteobs %>% st_drop_geometry())
    survey.seg.new <- survey.seg.new %>% bind_rows(sitetrack)
  }
  setTxtProgressBar(pb, ii)
}

vaatlus<-survey.obs.new %>%
  select(
    id,
    liik,
    arv,
    tkood,
    sugu,
    pkood,
    paare,
    riba,
    band,
    dist,
    märkus,
    aasta,
    kuupv,
    obsrvr
  )
loendus<-survey.seg.new
save(vaatlus, loendus, file="data/loendus-20250404.RData")



