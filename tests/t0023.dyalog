﻿:Namespace t0023
 
 mta←{(0⌷⍺)⍪(1⌷⍺)⍪(2⌷⍺)⍪3↓⍵}
 bas←{(2*16)|0⌷⍵}
 zer←{0=⌈⌿2↓⍵}
 ful←{(bas⍵)⍪1↓⍵}
 isr←{=∘|⍨⊃⍵}     
 isb←{0 1∊⍨∊⌈⌿⍵}
 neg←{2⌷⍵}
 top←{+⌿∧⍀(3↓⍵)=⍤¯1 15⊢(⊃bas⍵)⊤-neg⍵}
 sg0←{(4↓⍵)⍪⍨(3⌷⍵)-(bas⍵)×2⌷⍵}
 cat←{(⍪⍤¯1)⍵}
 rav←{(,⍤¯1)⍵}
 pic←{(⊃⍤¯1)⍵}
 cr1←{256⊤↑⊃{⍵,⍨⊂⍺+⊣⌿0 256⊤⊃⍵}/{(¯1↓⍵),⊂⊢/⍵}⊂⍤¯1⊢⍵}
 sb0←?256 8⍴2
 sm0←?128 16 8⍴2
 sbw←{(⍵∧.=I00)≠.∧sb0}
 smw←{(⍪⍵)≠.∧sm0}
 rnw←{⍺(≠⍤2)smw sbw⍵}
 aew←{⊃rnw/⍵}

:EndNamespace
