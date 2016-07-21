local Sequences = GSMasterSequences

------------------
----- Hunter
------------------
Sequences['ATB_Hunt_MMSing'] = {
specID = 254,
author = "Aggietallboy",
helpTxt = "Marksman Single - Talent: 1323321",
StepFunction = GSStaticPriority,
PreMacro = [[
/targetenemy [noharm][dead]
/startattack
/petattack [@target,harm]
/petautocastoff [group] Growl
/petautocaston [nogroup] Growl
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection
]],
  "/cast [nochanneling] Windburst;",
	"/cast [nochanneling] Aimed Shot;",
	"/cast [nochanneling] Marked Shot;",
	"/cast [talent:6/1] A Murder of Crows;[talent:6/2] Barrage;[talent:6/3] Volley;",
	"/cast [nochanneling, combat] Trueshot",
	"/cast [nochanneling, talent:7/2] Headshot;",
	"/cast [nochanneling, talent:7/1] Sidewinders; [nochanneling] Arcane Shot;",
PostMacro = [[
/cast Aspect of the Wild
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Hide();
/console Sound_EnableSFX 1
]],
}

Sequences['ATB_Hunt_MMAOE'] = {
specID = 254,
author = "Aggietallboy",
helpTxt = "Marksman AoE - Talent: 1323321",
StepFunction = GSStaticPriority,

PreMacro = [[
/console Sound_EnableSFX 0
/targetenemy [noharm][dead]
]],
	"/cast [nochanneling] Windburst;",
	"/cast [nochanneling] Aimed Shot;",
	"/cast [nochanneling] Marked Shot;",
	"/cast [talent:6/1] A Murder of Crows;[talent:6/2] Barrage;[talent:6/3] Volley;",
	"/cast [nochanneling, combat] Trueshot",
	"/cast [nochanneling, talent:7/2] Headshot;",
	"/cast [nochanneling, talent:7/1] Sidewinders; [nochanneling] Multi-Shot;",
PostMacro = [[
/startattack
/petattack [@target,harm]
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Hide();
/console Sound_EnableSFX 1
]],
}
