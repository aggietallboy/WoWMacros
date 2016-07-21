local Sequences = GSMasterSequences

------------------
----- Priest
------------------
Sequences['PUT_NAME_HERE'] = {
specID = 257,
author = "WHO_WROTE_IT",
helpTxt = "INFO ABOUT MACRO/Title - Talent: 3212233",
StepFunction = GSStaticPriority,
PreMacro = [[
PUT PREMACRO HERE
]],
"/cast SomeSpells",
"/cast [nochanneling] Some More spells, but don't knock out one that's running",
PostMacro = [[
  cleanup with some more spells that you care about
]],
}
