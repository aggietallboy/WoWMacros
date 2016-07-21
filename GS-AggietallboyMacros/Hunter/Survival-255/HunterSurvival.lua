local Sequences = GSMasterSequences

------------------
----- Hunter
------------------
Sequences['PUT_NAME_HERE'] = {
specID = 255,
author = "WHO_WROTE_IT",
helpTxt = "INFO ABOUT MACRO/Title - Talent: 3212233",
StepFunction = GSStaticPriority,
PreMacro = [[
/targetenemy [noharm][dead]
/startattack
/petattack [@target,harm]
/petautocastoff [group] Growl
/petautocaston [nogroup] Growl
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection
]],
"/cast [nochanneling] Bestial Wrath",
"/cast [nochanneling] !Kill Command",
"/cast [nochanneling] Dire Frenzy",
"/cast [nochanneling] Multi-Shot",
"/cast [nochanneling] Titan's Thunder",
"/cast [nochanneling] !Kill Command",
"/cast [nochanneling] Bestial Wrath",
PostMacro = [[
/cast Aspect of the Wild
/use [combat]11
/use [combat]13
/use [combat]14
]],
}
