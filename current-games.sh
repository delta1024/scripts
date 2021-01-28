#!/bin/env bash
games="Hades\nHitman 2\nDragon Quest XI\nThe Binding of Isaac: Rebirth\nHollow Knight\nCivilization VI\nBaldur's Gate: Enhanced Edition\nHeroes of Might & Magic III\nOCTOPATH TRAVELER\nDead Cells\nJust Cause 3\nStreets of Rage 4\nCeleste\nIkenfell\nSkyrim\nRimWorld\nThe Outer Worlds"
gamesNum=$(echo -e "${games[@]}" | wc -l)
prompt=$(echo -e "${games[@]}" | sort | dmenu -l "${gamesNum}" -i  -p "Launch: ")
prep() {
    SCRIPT=$HOME/.scripts/
    $SCRIPT/monitor.sh games
    steam steam://rungameid/"$game"
}
case $prompt in
   'Hades') game=1145360; prep ;;
   'Hitman 2') game=863550; prep ;;
   'Dragon Quest XI') game=1295510; prep ;;
   'The Binding of Isaac: Rebirth') game=250900; prep ;;
   'Hollow Knight') game=367520; prep ;;
   'Civilization VI') game=289070; prep ;;
   "Baldur's Gate: Enhanced Edition") game=228280; prep ;;
   "Heroes of Might & Magic III") game=297000; prep;;
   'OCTOPATH TRAVELER') game=921570; prep;;
   'Dead Cells') game=588650; prep ;;
   'Just Cause 3') game=225540; prep ;;
   'Streets of Rage 4') game=985890; prep;;
   'Celeste') game=504230; prep;;
   'Ikenfell') game=854940; prep;;
   'Skyrim') game=72850; prep;;
   'The Outer Worlds') game=578650; prep;;
   'RimWorld') game=294100; prep;;
   'Bloodstained: Ritual of the Night') game=692850; prep;;
esac
