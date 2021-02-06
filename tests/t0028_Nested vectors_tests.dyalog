:Require file://t0028.dyalog
:Namespace t0028_tests

 tn←'t0028' ⋄ cn←'c0028' ⋄ cd←⎕NS⍬ ⋄ dy←#.⍎tn

 TEST1←{Y  ←⍵⍵ ⋄ #.UT.expect← dy.(⍎⍺⍺) Y ⋄   cd.(⍎⍺⍺) Y}
 TEST2←{X Y←⍵⍵ ⋄ #.UT.expect←X dy.(⍎⍺⍺) Y ⋄ X cd.(⍎⍺⍺) Y}

 ∆0000_TEST←{#.UT.expect←'Successful compile'
  _←#.⎕EX cn ⋄ 'Successful compile'⊣cd∘←#.c0028←tn #.codfns.Fix ⎕SRC dy}

 ∆0001_TEST←'id' TEST1 (⊂⍬)
 ∆0002_TEST←'id' TEST1 (⊂⍳5)
 ∆0003_TEST←'id' TEST1 (⊂2 5⍴⍳10)
 ∆0004_TEST←'id' TEST1 (⊂2 3⍴(1 2 3)(4 5 6))
 ∆0005_TEST←'id' TEST1 (2 3⍴(1 2 3)(4 5 6))

 ∆∆∆_TEST←{#.UT.expect←0 0 ⋄ _←#.⎕EX¨cn tn ⋄ #.⎕NC cn tn}

:EndNamespace