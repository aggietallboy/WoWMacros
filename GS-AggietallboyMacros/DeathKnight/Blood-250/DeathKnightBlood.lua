local Sequences = GSMasterSequences
------------------
----- Death Knight
------------------
Sequences['ATB_DK_BLOOD'] = {
specID = 250,
author = "John Mets",
helpTxt = "DK Blood - Talent: 2212213",
StepFunction = GSStaticPriority,
PreMacro = [[
  /cast [combat] Vampiric Blood
  /cast [combat] Dancing Rune Weapon
]],
  '/cast Marrowrend',
  "/castsequence reset=combat Death's Caress, Blood Boil, Death Strike, blood Boil, Marrowrend",
  "/castsequence reset=combat Death's Caress, Blood Boil, Blood Boil, death strike, soulgorge",
  "/cast Heart Strike",
  "/cast Death Strike",
PostMacro = [[
  /TargetEnemy [noharm][dead]
  /Use [combat] 13
  /Use [combat] 14]],
}
