Samstag, 07.05.2011, 6:53Uhr
-------
schlecht geschlafen. Beschlossen, diese Schlappe nicht auf mir sitzen zu lassen und als kleine, übersichtliche Beispielanwendung Trainingday zu entwickeln. TrainingDay spukt mir schon eine ganze Weile im kopf rum: Ich spiele Basketball und es gibt jeden Dienstag und jeden Donnerstag immer das Problem: Ist die Halle auf, wer kommt, sind wir genug, damit wir spielen können? Diese Infos werden jetzt meistens mit Mailinglisten&oder über Standardwebkalender verwaltet, aber schicker wäre eine kleine Anwendung, in die man einen Training eingeben kann, Kollegen zu diesem Training einladen kann, Trainingstage verwalten kann, um dann jeden Trainingsabend zu sehen, wer zu- und wer abgesagt hat. 

Samstag, 07.05.2011, 7:30Uhr
———
Her mit einem schnellen Anwendungsrahmen! Suspenders (https://github.com/thoughtbot/suspenders) bringt das richtige Set für diesen Fall mit (rails3, ein vernünftiger Testingstack mit cucumber, capybare, factory_girl usw.) Diesmal kein mongoDB/mongoid: Das ganze ist nicht dokumenten-lastig, hat aber viele Relationen, da ist mysql die bessere sichere Wahl. Rasch die weiteren Rahmenbedingungen abgesteckt: deployment auf heroku (billig, einfach), das github-projekt ist rasch angelegt. Server läuft, das testenvironment läuft auch, sowohl die specs als auch die Features als auch factory-girl, man kann sich bereits registrieren und einlochen - nice headstart! fangen wir also damit an, die Features zu beschreiben!

 


