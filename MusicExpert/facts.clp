(deftemplate state
(slot content)
(slot asked)
(multislot answers)
(slot is-leaf (default No))
)

(deftemplate text-to-id
(slot id)
(slot text)
)

(deffacts starting-stage
    (start)
)