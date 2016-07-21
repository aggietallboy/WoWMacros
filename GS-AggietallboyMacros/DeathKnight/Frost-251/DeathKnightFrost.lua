local Sequences = GSMasterSequences
------------------
----- Death Knight
------------------
Sequences['ATB_DK_FROST'] = {
specID = 251,
author = "John Mets",
helpTxt = "DK Frost - Talent: 3133121",
StepFunction = GSStaticPriority,
PreMacro = [[
  /cast [combat] Pillar of Frost
]],
    "/castsequence reset=combat Obliterate, Frost Strike",
    '/castsequence reset=combat Obliterate, Frost Strike, Frost Strike, Obliterate, howling blast',
    "/castsequence reset=combat Obliteration",
    "/cast [combat] remorseless winter",
    "/cast [combat] empower rune weapon",
PostMacro = [[
  /targetenemy [noharm][dead]
  /cast [combat] Anti-Magic Shell
  /use [combat] 13
  /use [combat] 14
]],
}
