﻿:Namespace A
  (⎕IO ⎕ML ⎕WX)←0 1 3
  APLPrims←,¨'+-÷×|*⍟⌈⌊<≤=≠≥>⌷⍴,⍳¨'
  MtN←0 4⍴⍬
  depth type kind name←⍳fields←4
  
  up←⍉(1+1↑⍉)⍪1↓⍉ ⋄ new←{⍉⍪fields↑0 ⍺,⍵}

  Prim←{'Prim'new⊂⍵} ⋄ Fn←{('Fn'new⍬)⍪up⊃⍪/(⊂MtN),1↓¯1↓⍵} 
  Var←{'Var'new(,⍺⍺)⍵} ⋄ Ex←{('Ex'new⊂,⍺⍺)⍪up⊃⍪/⍵} ⋄ Fe←{('Fe'new⊂,⍺⍺)⍪up⊃⍪/⍵}
  Ns←{('Ns'new⍬)⍪up⊃⍪/(⊂MtN),1↓¯1↓⍵}
  Bind←{nm _ ex←⍵ ⋄ (0 name⌷ex)←⊂nm ⋄ ex} ⋄ Num←{'Num'new⊂⍎⍵}

:EndNamespace