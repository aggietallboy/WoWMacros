local Sequences = GSMasterSequences

------------------
----- Hunter
------------------
Sequences['ATB_HUNT_BMSing'] = {
specID = 253,
author = "Aggietallboy",
helpTxt = "BM Single Target - Talent: 2322111",
StepFunction = GSStaticPriority,
PreMacro = [[
/console Sound_EnableSFX 0
/script UIErrorsFrame:Hide()
/targetenemy [noharm][dead]
/cast [nochanneling,nopet,nodead]Call Pet 1;[nochanneling,@pet,dead]Heart of the Phoenix
/petautocastoff [nochanneling,group] Growl
/petautocaston [nochanneling,nogroup] Growl
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection

]],
"/cast [nochanneling] Bestial Wrath",
"/cast [nochanneling,talent:2/3] !Chimaera Shot",
"/cast [nochanneling,talent:2/1] Dire Beast; [nochanneling,talent:2/3] Dire Beast; [nochanneling,talent:2/2] !Dire Frenzy",
"/cast [nochanneling,talent:6/1] A Murder of Crows; [nochanneling,talent:6/2] Barrage; ",
"/cast [nochanneling] Titan's Thunder",
"/cast [nochanneling] Cobra Shot",
PostMacro = [[
/cast [combat,nochanneling]Aspect of the Wild
/cast [combat,nochanneling] Blood Fury
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Clear()
/console Sound_EnableSFX 1
]],
}



Sequences['ATB_HUNT_BMAoE'] = {
specID = 253,
author = "Aggietallboy",
helpTxt = "BM AOE - Talent: 3222321",
StepFunction = GSStaticPriority,
PreMacro = [[
/console Sound_EnableSFX 0
/script UIErrorsFrame:Hide()
/targetenemy [noharm][dead]
/cast [nochanneling,nopet,nodead]Call Pet 1;[nochanneling,@pet,dead]Heart of the Phoenix
/petautocastoff [nochanneling,group] Growl
/petautocaston [nochanneling,nogroup] Growl
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection
]],
"/cast [nochanneling] Bestial Wrath",
"/cast [nochanneling] Multi-Shot",
"/cast [nochanneling,talent:2/3] !Chimaera Shot",
"/cast [nochanneling,talent:2/1] Dire Beast; [nochanneling,talent:2/3] Dire Beast; [nochanneling,talent:2/2] !Dire Frenzy",
"/cast [nochanneling,talent:6/1] A Murder of Crows; [nochanneling,talent:6/2] Barrage; ",
"/cast [nochanneling] Titan's Thunder",
"/cast [nochanneling] Cobra Shot",
PostMacro = [[
/cast [combat,nochanneling]Aspect of the Wild
/cast [combat,nochanneling] Blood Fury
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Clear()
/console Sound_EnableSFX 1
]],
}
