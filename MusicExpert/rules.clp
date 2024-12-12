(defrule choose-genre
?id1 <- (start)
=>
(retract ?id1)
(assert (state
(content chooseGenre)
(asked askedGenre)
(answers answerRap answerRock)
)))

(defrule qustion-OKComputer
?id1 <- (process)
?id2 <- (state)
(askedGenre answerRock)
=>
(retract ?id1 ?id2)
(assert (state
(content songOKComputer)
(asked askedOKComputer)
(answers answerCoolRock)
)))

(defrule qustion-KidA
?id1 <- (process)
?id2 <- (state)
(askedOKComputer answerCoolRock)
=>
(retract ?id1 ?id2)
(assert (state
(content songKidA)
(asked askedKidA)
(answers answerCoolGuitars answerWeirdGood answerTooElectronic answerLikedDrums answerBlank)
)))

(defrule qustion-SilentShout
?id1 <- (process)
?id2 <- (state)
(askedKidA answerWeirdGood)
=>
(retract ?id1 ?id2)
(assert (state
(content songSilentShout)
(asked askedSilentShout)
(answers answerTooWeird answerTakeOutVocals)
)))

(defrule qustion-Psychic
?id1 <- (process)
?id2 <- (state)
(or (askedKidA answerCoolGuitars) (askedSilentShout answerTooWeird))
=>
(retract ?id1 ?id2)
(assert (state
(content songPsychic)
(asked askedPsychic)
(answers answerLoseGuitars answerMoreTheSame answerWhere)
)))

(defrule qustion-SpaceIsOnlyNoise
?id1 <- (process)
?id2 <- (state)
(askedPsychic answerMoreTheSame)
=>
(retract ?id1 ?id2)
(assert (state
(content songSpaceIsOnlyNoise)
(asked askedSpaceIsOnlyNoise)
(answers answerVocalFocus answerTooBusyMelodius)
)))

(defrule qustion-LiftYourSkinnyFistsLikeAntennasToHeaven
?id1 <- (process)
?id2 <- (state)
(askedKidA answerTooElectronic)
=>
(retract ?id1 ?id2)
(assert (state
(content songLiftYourSkinnyFistsLikeAntennasToHeaven)
(asked askedLiftYourSkinnyFistsLikeAntennasToHeaven)
(answers answerLoveBuildups answerMoreMinimal answerPostRock)
)))

(defrule qustion-TarotSport
?id1 <- (process)
?id2 <- (state)
(askedLiftYourSkinnyFistsLikeAntennasToHeaven answerLoveBuildups)
=>
(retract ?id1 ?id2)
(assert (state
(content songTarotSport)
(asked askedTarotSport)
(answers answerMoreQuieter)
)))

(defrule qustion-Neu
?id1 <- (process)
?id2 <- (state)
(askedLiftYourSkinnyFistsLikeAntennasToHeaven answerMoreMinimal)
=>
(retract ?id1 ?id2)
(assert (state
(content songNeu)
(asked askedNeu)
(answers answerMoreElectronic answerThisElectronic)
)))

(defrule qustion-ProgramMusic
?id1 <- (process)
?id2 <- (state)
(askedLiftYourSkinnyFistsLikeAntennasToHeaven answerPostRock)
=>
(retract ?id1 ?id2)
(assert (state
(content songProgramMusic)
(asked askedProgramMusic)
(answers answerGlitchyDrums answerMoreAmbientParts)
)))

(defrule qustion-e2-e4
?id1 <- (process)
?id2 <- (state)
(askedNeu answerMoreElectronic)
=>
(retract ?id1 ?id2)
(assert (state
(content songe2-e4)
(asked askede2-e4)
(answers answerFullyElectronic)
)))

(defrule qustion-Phaedra
?id1 <- (process)
?id2 <- (state)
(or (askedProgramMusic answerMoreAmbientParts) (askedTarotSport answerMoreQuieter) (askede2-e4 answerFullyElectronic))
=>
(retract ?id1 ?id2)
(assert (state
(content songPhaedra)
(asked askedPhaedra)
(answers answerSynthsShorterHappy answerMoreAmbientStuff)
)))

(defrule qustion-Plantasia
?id1 <- (process)
?id2 <- (state)
(askedPhaedra answerSynthsShorterHappy)
=>
(retract ?id1 ?id2)
(assert (state
(content songPlantasia)
(asked askedPlantasia)
(answers)
(is-leaf Yes)
)))

(defrule qustion-808s
?id1 <- (process)
?id2 <- (state)
(askedGenre answerRap)
=>
(retract ?id1 ?id2)
(assert (state
(content song808s)
(asked asked808s)
(answers answerHipHopBeats answerRealRap)
)))

(defrule qustion-FeedTheAnimals
?id1 <- (process)
?id2 <- (state)
(asked808s answerRealRap)
=>
(retract ?id1 ?id2)
(assert (state
(content songFeedTheAnimals)
(asked askedFeedTheAnimals)
(answers answerCoolSampling)
)))

(defrule qustion-SinceILeftYou
?id1 <- (process)
?id2 <- (state)
(askedFeedTheAnimals answerCoolSampling)
=>
(retract ?id1 ?id2)
(assert (state
(content songSinceILeftYou)
(asked askedSinceILeftYou)
(answers answerMoreSampling answerDarkerSadder)
)))

(defrule qustion-Endtroducing
?id1 <- (process)
?id2 <- (state)
(askedSinceILeftYou answerMoreSampling)
=>
(retract ?id1 ?id2)
(assert (state
(content songEndtroducing)
(asked askedEndtroducing)
(answers answerMoreInstrumentalBeats)
)))

(defrule qustion-BlackSands
?id1 <- (process)
?id2 <- (state)
(or (askedPsychic answerWhere) (askedMetaphoricalMusic answerMoreLushOrganic))
=>
(retract ?id1 ?id2)
(assert (state
(content songBlackSands)
(asked askedBlackSands)
(answers answerMoreLushOrganic answerChillItOut)
)))

(defrule qustion-MetaphoricalMusic
?id1 <- (process)
?id2 <- (state)
(or (askedBlackSands answerMoreLushOrganic) (asked808s answerHipHopBeats) (askedEndtroducing answerMoreInstrumentalBeats))
=>
(retract ?id1 ?id2)
(assert (state
(content songMetaphoricalMusic)
(asked askedMetaphoricalMusic)
(answers answerMoreLushOrganic answerStrangerWonkier)
)))

(defrule qustion-Dive
?id1 <- (process)
?id2 <- (state)
(askedBlackSands answerChillItOut)
=>
(retract ?id1 ?id2)
(assert (state
(content songDive)
(asked askedDive)
(answers answerEducationalFilm)
)))

(defrule qustion-MidnightMenu
?id1 <- (process)
?id2 <- (state)
(or (askedSilentShout answerTakeOutVocals) (askedMetaphoricalMusic answerStrangerWonkier) (askedUntrue answerHappierLighter))
=>
(retract ?id1 ?id2)
(assert (state
(content songMidnightMenu)
(asked askedMidnightMenu)
(answers answerKeepTheBeats answerEvenStragierWonkier answerMoreSpacedOut answerReadyForClassics)
)))

(defrule qustion-Untrue
?id1 <- (process)
?id2 <- (state)
(or (askedMidnightMenu answerKeepTheBeats) (askedSinceILeftYou answerDarkerSadder))
=>
(retract ?id1 ?id2)
(assert (state
(content songUntrue)
(asked askedUntrue)
(answers answerHappierLighter answerDropSamples)
)))

(defrule qustion-MusicHasTheRightToChildren
?id1 <- (process)
?id2 <- (state)
(or (askedDive answerEducationalFilm) (askedMidnightMenu answerMoreSpacedOut))
=>
(retract ?id1 ?id2)
(assert (state
(content songMusicHasTheRightToChildren)
(asked askedMusicHasTheRightToChildren)
(answers answerMoreElectricFeeling)
)))

(defrule qustion-SelectedAmbientWorks
?id1 <- (process)
?id2 <- (state)
(or (askedKidA answerBlank) (askedMusicHasTheRightToChildren answerMoreElectricFeeling) (askedMidnightMenu answerReadyForClassics))
=>
(retract ?id1 ?id2)
(assert (state
(content songSelectedAmbientWorks)
(asked askedSelectedAmbientWorks)
(answers)
(is-leaf Yes)
)))

(defrule qustion-Mezzanine
?id1 <- (process)
?id2 <- (state)
(askedUntrue answerDropSamples)
=>
(retract ?id1 ?id2)
(assert (state
(content songMezzanine)
(asked askedMezzanine)
(answers answerFeelOfBurial)
)))

(defrule qustion-JamesBlake
?id1 <- (process)
?id2 <- (state)
(or (askedMezzanine answerFeelOfBurial) (askedSpaceIsOnlyNoise answerVocalFocus) (askedPsychic answerLoseGuitars))
=>
(retract ?id1 ?id2)
(assert (state
(content songJamesBlake)
(asked askedJamesBlake)
(answers)
(is-leaf Yes)
)))

(defrule qustion-Timewind
?id1 <- (process)
?id2 <- (state)
(or (askedNeu answerThisElectronic) (askedDrukqs answerNoDrums))
=>
(retract ?id1 ?id2)
(assert (state
(content songTimewind)
(asked askedTimewind)
(answers answerMoreDrums answerSteadyBeat)
)))

(defrule qustion-Amber
?id1 <- (process)
?id2 <- (state)
(or (askedProgramMusic answerGlitchyDrums) (askedKidA answerLikedDrums) (askedTimewind answerMoreDrums))
=>
(retract ?id1 ?id2)
(assert (state
(content songAmber)
(asked askedAmber)
(answers answerTalentlessButtonPushing)
)))

(defrule qustion-Drukqs
?id1 <- (process)
?id2 <- (state)
(or (askedAmber answerTalentlessButtonPushing))
=>
(retract ?id1 ?id2)
(assert (state
(content songDrukqs)
(asked askedDrukqs)
(answers answerSoundsDated answerNoDrums answerGetWilder answerSteadyBeat)
)))

(defrule qustion-Cosmogramma
?id1 <- (process)
?id2 <- (state)
(or (askedDrukqs answerSoundsDated) (askedMidnightMenu answerEvenStragierWonkier))
=>
(retract ?id1 ?id2)
(assert (state
(content songCosmogramma)
(asked askedCosmogramma)
(answers answerJungle)
)))

(defrule qustion-GalaxyGarden
?id1 <- (process)
?id2 <- (state)
(askedCosmogramma answerJungle)
=>
(retract ?id1 ?id2)
(assert (state
(content songGalaxyGarden)
(asked askedGalaxyGarden)
(answers answerStrangeVocals answerRainforestMusic)
)))

(defrule qustion-Rooms
?id1 <- (process)
?id2 <- (state)
(or (askedGalaxyGarden answerStrangeVocals) (askedDrukqs answerGetWilder))
=>
(retract ?id1 ?id2)
(assert (state
(content songRooms)
(asked askedRooms)
(answers answerDrumsLouderCrazier)
)))

(defrule qustion-RosszCsillagAlattSzuletett
?id1 <- (process)
?id2 <- (state)
(askedRooms answerDrumsLouderCrazier)
=>
(retract ?id1 ?id2)
(assert (state
(content songRosszCsillagAlattSzuletett)
(asked askedRosszCsillagAlattSzuletett)
(answers answerCalmDown)
)))

(defrule qustion-ProgramMusicLeaf
?id1 <- (process)
?id2 <- (state)
(askedRosszCsillagAlattSzuletett answerCalmDown)
=>
(retract ?id1 ?id2)
(assert (state
(content songProgramMusicLeaf)
(asked askedProgramMusicLeaf)
(answers)
(is-leaf Yes)
)))

(defrule qustion-TheOrbsAdventuresBeyondTheUltraWorld
?id1 <- (process)
?id2 <- (state)
(or (askedDrukqs answerSteadyBeat) (askedTimewind answerSteadyBeat))
=>
(retract ?id1 ?id2)
(assert (state
(content songTheOrbsAdventuresBeyondTheUltraWorld)
(asked askedTheOrbsAdventuresBeyondTheUltraWorld)
(answers answerLessAmbient)
)))

(defrule qustion-Accelerator
?id1 <- (process)
?id2 <- (state)
(askedTheOrbsAdventuresBeyondTheUltraWorld answerLessAmbient)
=>
(retract ?id1 ?id2)
(assert (state
(content songAccelerator)
(asked askedAccelerator)
(answers answerMore answerFocusOnFast answerDrugs)
)))

(defrule qustion-Lifeforms
?id1 <- (process)
?id2 <- (state)
(or (askedAccelerator answerMore) (askedGalaxyGarden answerRainforestMusic))
=>
(retract ?id1 ?id2)
(assert (state
(content songLifeforms)
(asked askedLifeforms)
(answers answerSomeAmbientNow)
)))

(defrule qustion-7614
?id1 <- (process)
?id2 <- (state)
(or (askedPhaedra answerMoreAmbientStuff) (askedLifeforms answerSomeAmbientNow) (askedBrownAlbum answerHalcyon))
=>
(retract ?id1 ?id2)
(assert (state
(content song7614)
(asked asked7614)
(answers answerEvenMoreAmbient)
)))

(defrule qustion-Ambient2ThePlateauxOfMirror
?id1 <- (process)
?id2 <- (state)
(asked7614 answerEvenMoreAmbient)
=>
(retract ?id1 ?id2)
(assert (state
(content songAmbient2ThePlateauxOfMirror)
(asked askedAmbient2ThePlateauxOfMirror)
(answers answerMixTheTwo answerTooBusy)
)))

(defrule qustion-Ambient1MusicForAirports
?id1 <- (process)
?id2 <- (state)
(askedAmbient2ThePlateauxOfMirror answerTooBusy)
=>
(retract ?id1 ?id2)
(assert (state
(content songAmbient1MusicForAirports)
(asked askedAmbient1MusicForAirports)
(answers)
(is-leaf Yes)
)))

(defrule qustion-BrownAlbum
?id1 <- (process)
?id2 <- (state)
(askedDiscovery answerDontStopDancing)
=>
(retract ?id1 ?id2)
(assert (state
(content songBrownAlbum)
(asked askedBrownAlbum)
(answers answerHalcyon answerMixTheTwo answerDontStopDancing answerLessMelody)
)))

(defrule qustion-Alcachofa
?id1 <- (process)
?id2 <- (state)
(or (askedBrownAlbum answerLessMelody) (askedSpaceIsOnlyNoise answerTooBusyMelodius))
=>
(retract ?id1 ?id2)
(assert (state
(content songAlcachofa)
(asked askedAlcachofa)
(answers)
(is-leaf Yes)
)))

(defrule qustion-Immunity
?id1 <- (process)
?id2 <- (state)
(or (askedBrownAlbum answerMixTheTwo) (askedAmbient2ThePlateauxOfMirror answerMixTheTwo))
=>
(retract ?id1 ?id2)
(assert (state
(content songImmunity)
(asked askedImmunity)
(answers answerPiano answerHeavierBits)
)))

(defrule qustion-Eingya
?id1 <- (process)
?id2 <- (state)
(askedImmunity answerPiano)
=>
(retract ?id1 ?id2)
(assert (state
(content songEingya)
(asked askedEingya)
(answers)
(is-leaf Yes)
)))

(defrule qustion-Discovery
?id1 <- (process)
?id2 <- (state)
(or (askedImmunity answerHeavierBits) (askedBrownAlbum answerDontStopDancing))
=>
(retract ?id1 ?id2)
(assert (state
(content songDiscovery)
(asked askedDiscovery)
(answers answerDontStopDancing answerTribal answerDirtier answerCarelessFunDance)
)))

(defrule qustion-Cross
?id1 <- (process)
?id2 <- (state)
(askedDiscovery answerDirtier)
=>
(retract ?id1 ?id2)
(assert (state
(content songCross)
(asked askedCross)
(answers)
(is-leaf Yes)
)))

(defrule qustion-AreYouShpongled
?id1 <- (process)
?id2 <- (state)
(or (askedAccelerator answerDrugs) (askedDiscovery answerTribal))
=>
(retract ?id1 ?id2)
(assert (state
(content songAreYouShpongled)
(asked askedAreYouShpongled)
(answers answerFocusOnFast answerCarelessFunDance answerFrozenWastelands)
)))

(defrule qustion-Timeless
?id1 <- (process)
?id2 <- (state)
(or (askedAccelerator answerFocusOnFast) (askedAreYouShpongled answerFocusOnFast))
=>
(retract ?id1 ?id2)
(assert (state
(content songTimeless)
(asked askedTimeless)
(answers answerFrozenWastelands)
)))

(defrule qustion-NorthernExposure
?id1 <- (process)
?id2 <- (state)
(or (askedTimeless answerFrozenWastelands) (askedAreYouShpongled answerFrozenWastelands) (askedAreYouShpongled answerCarelessFunDance) (askedDiscovery answerCarelessFunDance))
=>
(retract ?id1 ?id2)
(assert (state
(content songNorthernExposure)
(asked askedNorthernExposure)
(answers)
(is-leaf Yes)
)))