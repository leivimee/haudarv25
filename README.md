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
| MOVEMENT DIRECTION FROM START | character | liikumise alguspunkt SE-nurgapunktist, meetites |
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
tuletatud GPS-teekondade põhjal, siis sisaldab, see nii loendaja
kõrvalekaldest tingitud nihkeid kui ka GPS-ebatäpsustest tulenevaid
nihkeid võrreldes algupäraste transektidega ning on ka seetõttu pikemad.
Kui transektide kogupikkus on 401,3 km, siis nendel sooritatud radade
kogupikkus on 450,6 km.

Atlase transektide loendustel kasutatud transektide geomeetriad on
esitatud geopaki [atlas-transekt.gpkg](./src/atlas) kihil ‘transekt’.
Geomeetriate juures on kaasas kolm andmevälja: *id* - transekti number,
*year* - loenduse aasta ja *len* - pikkus meetrites (km). Loenduste
GPS-andmeid pole käesoleva sisuga läbi töötatud, mistõttu geopakis ei
ole analoogset kihti ‘rada’, nagu Soome transektide puhul. Atlase
transektid 122, 123 jäid perioodil 2021-2024 loendamata, mistõttu on
nende tabelandmetes *year* väljad tühjad.

## Andmete töötlus

Järgnevast töötlusest jäeti välja vaatlused, mille puhul paaride arv oli
0 (PAIRS\<1). Samuti jäeti välja vaatlused, mis olid ebatäpsed
(PRECISE==FALSE) või viitasid imetajatele (BIRD==FALSE). Andmetele
lisati kaugus transektijoonest, mille põhjal arvutati uus ribakaugus
kokku kuuele ribale: 1-0..25, 2-25..50, 3-50..100, 4-100..150,
5-150..200, 6-200..250. Kogu ettevalmistuse protseduur on kirjeldatud
koodis [01-loendus.R](./R/01-loendus.R), mille tulemused (objektid
`vaatlus` ja `loendus`) on salvestatud faili
[loendus-20250404.RData](./data).

> :warning: Edasisel andmeanalüüsil on tungivalt soovitatav välja jätta
> rajad, kus loendati linde vaid põhiribal. Nendeks olid transektid 180,
> 201, 209, 215, 223, 224, 229, 232.

## Kasutatud allikad

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-jarvinen" class="csl-entry">

Järvinen, Olli, and Risto A. Väisanen. 1976. “Finnish Line Transect
Censuses.” *Ornis Fennica* 53: 115–18.
<https://lintulehti.birdlife.fi:8443/pdf/artikkelit/984/tiedosto/of_53_115-118_artikkelit_984.pdf>.

</div>

</div>
