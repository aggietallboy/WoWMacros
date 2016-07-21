local Sequences = GSMasterSequences

------------------
----- Hunter
------------------
Sequences['ATB_Hunt_MMSing'] = {
specID = 254,
author = "Aggietallboy",
helpTxt = "Marksman Single - Talent: 1123121",
StepFunction = GSStaticPriority,
PreMacro = [[
/console Sound_EnableSFX 0
/script UIErrorsFrame:Hide()
/targetenemy [noharm][dead]
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection
]],
	"/cast [nochanneling] Windburst",
	"/cast [nochanneling] Aimed Shot",
	"/cast [nochanneling] Marked Shot",
	"/cast [nochanneling, talent:7/2] Piercing Shot",
	"/cast [nochanneling, talent:6/1] A Murder of Crows;[nochanneling, talent:6/2] Barrage;",
	"/cast [nochanneling, talent:4/1] Explosive Shot",
	"/cast [nochanneling, talent:4/1] Explosive Shot",
	"/cast [nochanneling, combat] Aimed Shot",
	"/cast [nochanneling, talent:2/2] Black Arrow",
	"/cast [nochanneling, talent:7/1] Sidewinders; [nochanneling] Arcane Shot;",
PostMacro = [[
/cast [combat,nochanneling]Aspect of the Wild
/cast [combat,nochanneling] Blood Fury
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Clear()
/console Sound_EnableSFX 1
]],
}

Sequences['ATB_Hunt_MMAOE'] = {
specID = 254,
author = "Aggietallboy",
helpTxt = "Marksman AoE - Talent: 1123121",
StepFunction = GSStaticPriority,

PreMacro = [[
/console Sound_EnableSFX 0
/targetenemy [noharm][dead]
/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection
]],
	"/cast [nochanneling] Windburst",
	"/cast [nochanneling] Aimed Shot",
	"/cast [nochanneling] Marked Shot",
	"/cast [nochanneling, talent:7/2] Piercing Shot; Multi-Shot",
	"/cast [nochanneling, talent:6/1] A Murder of Crows; [nochanneling, talent:6/2] Barrage",
	"/cast [nochanneling, talent:4/1] Explosive Shot",
	"/cast [nochanneling, talent:4/1] Explosive Shot",
	"/cast [nochanneling, combat] Aimed Shot",
	"/cast [nochanneling, talent:2/2] Black Arrow",
	"/cast [nochanneling, talent:7/1] Sidewinders; [nochanneling] Multi-Shot",
PostMacro = [[
/cast [combat,nochanneling]Aspect of the Wild
/cast [combat,nochanneling] Blood Fury
/use [combat]13
/use [combat]14
/script UIErrorsFrame:Clear()
/console Sound_EnableSFX 1
]],
}
