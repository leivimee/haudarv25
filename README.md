Transektloenduste andmestik 2021-2024
================

## Eessõna

Aastatel 2000-2001 kavandati esmakordselt tervele Eesti territooriumile
ühtsetel metoodilistel alustel põhinev loenduste tsükkel haudelindude
asustustiheduste määramiseks. Väliandmete kogumine toimus nn
Soome-meetodil (Järvinen and Väisanen 1976), mis tähendab
transektloendust. Projekt viidi ellu Soome Välisministeeriumi
lähialakoostöö fondi ja Helsingi Ülikooli Zooloogiamuuseumi rahastusel
“Viron maalinnusto luonnon monimuotoisuuden indikaattorina” (2000-2001).
Nimetatud skeemi tuntatkse laiemalt ka “Soome” transektide nime all.
Mõned aastad hiljem algas Eesti haudelindude levikuatlase koostamine,
mille raames kavandati täiendavalt loendada 125 transekti. Need
loendused viidi läbi aastatel 2004-2008 Eesti Ornitoloogiaühingu poolt
ning SA Keskkonnainvesteeringute Keskuse rahastusel. See skeem on tuntud
“Atlase” transektide nimetusega.

Aastatel 2021-2024 viidi SA Keskkonnainvesteeringute Keskuse rahastusel
ellu projekt nr 17497 “Eesti haudelinnustiku asustustiheduse andmestiku
kogumise välitööd”, mille raames korraldati kordusloendused
“Soome”transektidel ning alustati kordusloendusi ka “Atlase” skeemi
transektidel. Kordusloendused “Atlase” transektidel viidi lõpule
jätkuprojektiga nr RE.4.06.22-0023 “Eesti haudelinnustiku asutustiheduse
andmestiku kogumine”. Projektide raames sooritati kordusloendused kokku
196 transektil.

Tulemused digitaliseeriti Keskkonnaagentuuri tellimusel. Andmete
digitaliseerimist viis läbi üks inimene, et tagada kaardiandmete
tõlgendamisel ühtsed reeglid.

## Andmete kirjeldus

Digitaliseeritud andmed on leitavad kaustast [src](./src), milles asuvad
kaustad [soome](./src/soome) ja [atlas](./src/atlas).

### Vaatlused

Soome transektid loendati aastatel 2021 ja 2022. Vastavate aastate
vaatlustulemused on failides
[soome-transektid-2021-vaatlused.csv](./src/soome/soome-transektid-2021-vaatlused.csv)
ja
[soome-transektid-2022-vaatlused.csv](./src/soome/soome-transektid-2022-vaatlused.csv).
Atlase transektid loendati aastatel 2021-2024. Kõigi aastate
loendustulemused on failis
[atlase-transektid-2021-2024-vaatlused.csv](./src/atlas/atlase-transektid-2021-2024-vaatlused.csv).
Vaatluste failidel on järgnevad andmeväljad.

**Tabel.** Vaatluste meta-andmete väljad.

| Nimi | Tüüp | Kirjeldus |
|:---|:---|:---|
| order | numeric | vaatluse järjekorranumber digitaliseerimisel |
| id | numeric | transekti number (3661-3907) |
| SCI_CODE | character | liigi 3+3 kood vastavalt EOÜ Eesti lindude nimestikule |
| NUMBER | numeric | isendite arv |
| ACTION | character | PlutoF tegevuskood: p-paikne, ü-ülelennul, r-rändel, s - laul, häälitsus |
| BAND | numeric | loendusriba: 1-põhiriba (0-25 m), 2-abiriba (25-50 m), 3-lisariba (50-.. m) |
| PRECISE | logical | täpne vaatlus TRUE/FALSE |
| BIRD | logical | linnuvaatlus, TRUE/FALSE |
| GENDER | character | sugu, Isane/Emane |
| ATLAS | character | linnuatlase pesitsuskindluse kood |
| PAIRS | numeric | paaride arv |
| REMARKS | character | märkused |
| LON | numeric | vaatluse idapikkus, WGS84 kümnendkraadina (EPSG: 4326) |
| LAT | numeric | vaatluse põhjalaius, WGS84 kümnendkraadina (EPSG: 4326) |
| YEAR | numeric | loenduse aasta |
| DATE | Date | loenduse kuupäev, YYYY-MM-DD |
| OBSRVR | character | loendaja |
| SITE | character | transekti nimi |
| COUNTY | character | haldusjaotusüksus: maakond |

### Loendused

<!--Soome transektide loenduste meta-andmed on koondatud faili [Soome-transektide-meta-andmed.xlsx](./src/soome/Soome-transektide-meta-andmed.xlsx). !-->

Nii Soome kui ka atlase transektidel sooritatud loenduste meta-andmed on
koondatud faili
[Eesti-transektide-meta-andmed-2021-2024.csv](./src/Eesti-transektide-meta-andmed-2021-2024.csv).
Failis sisalduvad nii varasemate loenduste meta-andmed, kui ka 2021-2024
loenduste meta-andmed.

**Tabel.** Loenduste meta-andmete väljad.

| Nimi | Tüüp | Kirjeldus |
|:---|:---|:---|
| order | numeric | vaatluse järjekorranumber digitaliseerimisel |
| id | character | transekti number (Soome: 3661-3907, Atlas: 1-125) |
| TRANSECT NAME | character | transekti nimi |
| OBSRVR | character | loendaja |
| COUNTY | character | haldusjaotusüksus: maakond |
| DATE | Date | loenduse kuupäev, YYYY-MM-DD |
| TIME START | hms | loenduse algusaeg, HH:MM |
| TIME FINISH | hms | loenduse lõpu aeg, HH:MM |
| START CORNER | character | alguse nurgapunkt, ilmakaar |
| MOVEMENT DIRECTION FROM START | character | liikumise alguspunkt SE-nurgapunktist, meetrites |
| START FROM SE-CORNER CLOCKWISE | character | liikumise suund alguspunktist, ilmakaar või päripäeva/vastupäeva |
| DISTANCE COVERED | numeric | läbitud distants, km |
| ACTUAL TRANSECT LENGTH | numeric | transekti pikkus, km |
| COUNT_YEAR | numeric | loenduse aasta |
| DATE DIFFERENCE TO LAST COUNT (+/- DAYS) | numeric | kordusloenduse intervall kuupäevade vahel |
| YEARS FROM LAST COUNT | numeric | kordusloenduse intervall aastates |
| SAME OBSERVER THAN LAST TIME? | character | sama loendaja kordusloendusel |
| Imetajad loetud y/n | character | imetajad loendati, y/n |
| INFO1 | character | infoväli 1 |
| INFO2 | character | infoväli 2 |
| ATLAS_SQUARE | character |  |
| I | character |  |
| SELGITUSTÖÖ | character | selgitused |

Soome transektide loendustel läbitud teekondade soorituslikud
geomeetriad 5 m täpsusega on esitatud geopaki
[soome-transekt.gpkg](./src/soome) kihil ‘rada’. Transktide algupärased
geomeetriad on esitatud sama geopaki kihil ‘transekt’. Geomeetriate
juures on kaasas kolm andmevälja: *id* - transekti number, *year* -
loenduse aasta ja *len* - pikkus meetrites (km). Kuna ‘rada’ on
tuletatud GPS-teekondade põhjal, siis sisaldab see nii loendaja
kõrvalekaldest tingitud nihkeid kui ka GPS-ebatäpsustest tulenevaid
nihkeid võrreldes algupäraste transektidega. Seetõttu on GPS-rajad
pikemad. Kui transektide kogupikkus on 401,3 km, siis nendel sooritatud
radade kogupikkus on 450,6 km.

Atlase transektide loendustel kasutatud transektide geomeetriad on
esitatud geopaki [atlas-transekt.gpkg](./src/atlas) kihil ‘transekt’.
Geomeetriate juures on kaasas kolm andmevälja: *id* - transekti number,
*year* - loenduse aasta ja *len* - pikkus meetrites (km). Loenduste
GPS-andmeid pole käesoleva sisuga läbi töötatud, mistõttu geopakis ei
ole analoogset kihti ‘rada’, nagu Soome transektide puhul. Atlase
transektid 122, 123 jäid perioodil 2021-2024 loendamata, mistõttu on
nende tabelandmetes *year* väljad tühjad.

## Andmete kasutamine

Andmete kasutamise hõlbustamiseks on loendused ning vaatlused pakitud R
andmefailideks. Igale vaatlusele arvutatud kaugus transektijoonest,
mille põhjal arvutati uus ribakaugus kokku kuuele ribale: 1-0..25,
2-25..50, 3-50..100, 4-100..150, 5-150..200, 6-200..250. Töötlusest
jäeti välja vaatlused, mille puhul paaride arv oli 0 (PAIRS\<1). Samuti
jäeti välja vaatlused, mis olid ebatäpsed (PRECISE==FALSE) või viitasid
imetajatele (BIRD==FALSE). Kogu ettevalmistuse protseduur on kirjeldatud
koodis [01-loendus.R](./R/01-loendus.R), mille tulemused (objektid
`vaatlus` ja `loendus`) on salvestatud faili
[loendus-20250404.RData](./data). Objektid `vaatlus`ja `loendus`
kuuluvad klassi sf (*simple features*) ja tibble/data.frame, ning nende
korrektseks kasutamiseks on vajalik R (R Core Team 2020) pakettide sf
(Pebesma 2018) ja tidyverse (Wickham et al. 2019) olemasolu.

Andmeväljade nimed objektil `vaatlus` on järgnevad.

**Tabel.** Objekti `vaatlus` andmeväljad.

| Nimi | Tüüp | Kirjeldus |
|:---|:---|:---|
| id | integer | vaatluse id-number |
| skeem | character | skeem, ‘atlas’ või ‘soome’ |
| transekt | numeric | transekti number (Soome: 3661-3907, Atlas: 1-125) |
| liik | character | liigi 3+3 kood vastavalt EOÜ Eesti lindude nimestikule |
| arv | numeric | isendite arv |
| tkood | character | PlutoF tegevuskood: p-paikne, ü-ülelennul, r-rändel, s - laul, häälitsus |
| sugu | character | sugu, Isane/Emane |
| pkood | character | linnuatlase pesitsuskindluse kood |
| paare | numeric | paaride arv |
| riba | numeric | loendusriba: 1-põhiriba (0-25 m), 2-abiriba (25-50 m), 3-lisariba (50-.. m) |
| band | integer | loendusriba 0-250 m, jaotusega 6ks vahemikuks |
| dist | numeric | ristkaugus |
| märkus | character | märkused |
| aasta | numeric | loenduse aasta |
| kuupv | Date | loenduse kuupäev, YYYY-MM-DD |
| obsrvr | character | loendaja |
| geometry | sfc_POINT |  |

Järgnevalt on toodud näide, kuidas andmeid R töökeskkonda lugeda.

``` r
# install.packages(c("sf", "tidyverse"))
library(tidyverse)
library(sf)

load("data/loendus-20250404.RData")

str(loendus)
str(vaatlus)
```

> :warning: Edasisel andmeanalüüsil on tungivalt soovitatav välja jätta
> rajad, kus loendati linde vaid põhiribal. Nendeks olid transektid 180,
> 201, 209, 215, 223, 224, 229, 232.

Üldasustustiheduste arvutamisel R paketiga `Distance` (Miller et al.
2019) on vajalik teha järgnevad teisendused. `Distance` kasutab nn
*flatfile*-formaati, milles on kombineeritud nii loenduspanus kui ka
vaatlusinfo.

``` r
# install.packges("Distance")
library(Distance)
```

    ## Loading required package: mrds

    ## This is mrds 3.0.0
    ## Built: R 4.3.3; ; 2025-02-08 02:50:07 UTC; windows

    ## 
    ## Attaching package: 'Distance'

    ## The following object is masked from 'package:mrds':
    ## 
    ##     create.bins

``` r
# vali liigiks metsvint
sp <- "FRICOE"

segment.data <- loendus %>%
  filter(!transekt %in% c(180, 201, 209, 215, 223, 224, 229, 232)) %>%
  rename(Sample.Label=transekt) %>%
  mutate(Area=45335, Region.Label="Eesti", Effort=len/1e3) %>%
  select(Region.Label, Area, Region.Label, Sample.Label, Effort, obsrvr) %>%
  st_drop_geometry()

observation.data <- vaatlus %>%
  filter(!transekt %in% c(180, 201, 209, 215, 223, 224, 229, 232)) %>%
  rename(Sample.Label=transekt, size=paare, object=id, distance=dist) %>%
  filter(liik==sp) %>%
  select(Sample.Label,object,distance,size,riba) %>%
  st_drop_geometry()

flatfile <- segment.data %>%
  left_join(observation.data, by="Sample.Label") %>%
  mutate(size=replace_na(size, 0))
```

Registreeritud lindude arvu 25 m laiuste ribade kaupa kuni 250 meetrini
on võimalik visualiseerida järgnevalt.

``` r
flatfile %>%
  filter(distance<250) %>%
  mutate(band=cut(distance,seq(0,250,25), right=F)) %>%
  group_by(band) %>%
  summarise(arv=sum(size)) %>%
  ggplot()+
  geom_bar(aes(x=band,y=arv), stat="identity")+
  theme_minimal()
```

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Lihtsa, vaid põhi ja abiriba vaatlusi arvestava arvukushinnangu saab
anda distants-mudeli abil.

``` r
fricoe.unif.null <-ds(
  flatfile, 
  truncation=50, 
  formula=~1, 
  cutpoints=c(0,25,50), 
  key="unif", 
  adjustment=NULL, 
  convert_units=0.001
)
```

    ## Fitting uniform key function

    ## AIC= 3512.87

``` r
fricoe.sum<-summary(fricoe.unif.null)
```

**Tabel.** Metsvindi üldasustustihedus.

| Label | Estimate | se  | cv    | lcl  | ucl  |  df |
|:------|:---------|:----|:------|:-----|:-----|----:|
| Total | 28,6     | 1,3 | 0,045 | 26,2 | 31,3 | 193 |

**Tabel.** Metsvindi üldarvukus.

| Label | Estimate  | se     | cv    | lcl       | ucl       |  df |
|:------|:----------|:-------|:------|:----------|:----------|----:|
| Total | 1 296 244 | 58 633 | 0,045 | 1 185 662 | 1 417 140 | 193 |

Mudeli sobitust saab kontrollida järgnevalt.

``` r
fricoe.fit<-gof_ds(fricoe.unif.null)
chisq <- fricoe.fit$chisquare$chi1$chisq
p <- fricoe.fit$chisquare$chi1$p
df <- fricoe.fit$chisquare$chi1$df
```

Hii-ruut testi kohaselt võib mudelit lugeda sobituvaks
($\chi^2_{df=1}$=0,10; p=0,751).

## Kasutatud allikad

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-jarvinen" class="csl-entry">

Järvinen, Olli, and Risto A. Väisanen. 1976. “Finnish Line Transect
Censuses.” *Ornis Fennica* 53: 115–18.
<https://lintulehti.birdlife.fi:8443/pdf/artikkelit/984/tiedosto/of_53_115-118_artikkelit_984.pdf>.

</div>

<div id="ref-ds" class="csl-entry">

Miller, David L., Eric Rexstad, Len Thomas, Laura Marshall, and Jeffrey
L. Laake. 2019. “Distance Sampling in R.” *Journal of Statistical
Software* 89 (1): 1–28. <https://doi.org/10.18637/jss.v089.i01>.

</div>

<div id="ref-sf" class="csl-entry">

Pebesma, Edzer. 2018. “<span class="nocase">Simple Features for R:
Standardized Support for Spatial Vector Data</span>.” *The R Journal*
10: 439–46. <https://doi.org/10.32614/RJ-2018-009>.

</div>

<div id="ref-r" class="csl-entry">

R Core Team. 2020. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-tidy" class="csl-entry">

Wickham, Hadley, Mara Averick, Jennifer Bryan, Winston Chang, Lucy
D’Agostino McGowan, Romain François, Garrett Grolemund, et al. 2019.
“Welcome to the <span class="nocase">tidyverse</span>.” *Journal of Open
Source Software* 4 (43): 1686. <https://doi.org/10.21105/joss.01686>.

</div>

</div>
