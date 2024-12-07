(defrule ask-option
   (current-song (name ?song))
   (song (song ?song) (option1 ?opt1) (option2 ?opt2) (option3 ?opt3) (option4 ?opt4))
   =>
   (assert (display-message (text ?opt1)))
   (assert (display-message (text ?opt2)))
   (assert (display-message (text ?opt3)))
   (assert (display-message (text ?opt4)))
)

(defrule continue-to-next-song
   ?id-song <- (current-song (name ?song))
   ?id-resp <- (user-response ?response)
   ?id-state <- (current-state (name "START"|"BRANCH"))
   (song-mapping (option-text ?response) (next-song ?next-song))
   (song (song ?next-song) (state ?current-state))
   (test (neq ?next-song ?song))
   =>
   (retract ?id-resp)
   (retract ?id-state)
   (assert (current-song (name ?next-song)))
   (assert (current-state (name ?current-state)))
   (retract ?id-song)
)