## Inhalt
Dieses Repository enthält die Freifunk-Firmware, so wie sie im
Frankfurter-Netz verwendet wird. Es ist wie lff und KBU ein Fork der
Lübecker Firmware.

## Branches
Die Branches im Upstream werden im gitweb aufgeführt:
https://github.com/ff-kbu/fff/ , https://git.metameute.de/lff/firmware/
. In diesem Repository sind verfügbar:
+ master (README.md)
+ 1_0_stable (1.0er tag von KBU)
 
Andere Branches im Upstream sind nicht für die Verwendung für        .
Freifunk-Frankfurt angepasst (d.h. es gibt hierzu keine Kopie mit      .
patches für abweichende Konfigurationen) Der Generic-Branch enthält  .
alle AR71xx-basierten Gerättypen                                      .

## Checkout / Clone
Für einen build reicht ein checkout des Repositories aus. Hierzu muss ein passender branch gewählt werden.
Für die Entwicklung ist es sinnvoll, den Lübecker upstram lokal nach dem clone hinzufügen:
`git remote add upstream https://git.metameute.de/lff/firmware/`


## Build
`scripts/feeds update -a`

`scripts/feeds install -a`

`make` 

