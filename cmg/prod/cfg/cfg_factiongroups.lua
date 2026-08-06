local cfg = {}

cfg.metPoliceRanks = {
    {"CID", 66000, "police.cidconstable.whitelisted", grade = 3},
    {"CTSFO", 66000, "police.ctsfo.whitelisted", grade = 1},
    {"Trident", 66000, "police.trident.whitelisted", grade = 3},
    {"Special Constable", 90750, "police.specialconstable.whitelisted", grade = 1},
    {"NPAS", 74250, "police.npas.whitelisted", grade = 1},
    {"Custody Sergeant", 33000, "police.custodysergeant.whitelisted", grade = 1},
    {"PCSO", 33000, "police.pcso.whitelisted", grade = 1},
    {"PC", 41250, "police.constable.whitelisted", grade = 1},
    {"Sergeant", 57750, "police.sergeant.whitelisted", grade = 1},
    {"Inspector", 66000, "police.inspector.whitelisted", grade = 1},
    {"Chief Inspector", 74250, "police.chiefinspector.whitelisted", grade = 1},
    {"Superintendent", 82500, "police.superintendent.whitelisted", grade = 1},
    {"Chief Superintendent", 90750, "police.chiefsuperintendent.whitelisted", grade = 1},
    {"GC Advisor", 99000, "police.advisor.whitelisted", grade = 1},
    {"Commander", 99000, "police.commander.whitelisted", grade = 4},
    {"Dep. Asst. Commissioner", 107250, "police.deputyassistantcommissioner.whitelisted", grade = 4},
    {"Assistant Commissioner", 115500, "police.assistantcommissioner.whitelisted", grade = 4},
    {"Deputy Commissioner", 123750, "police.deputycommissioner.whitelisted", grade = 4},
    {"Commissioner", 132000, "police.commissioner.whitelisted", grade = 4}
}

exports("getPoliceRanks", function()
    return cfg.metPoliceRanks
end)

cfg.paramedicRanks = {
    {"Trainee Paramedic", 0, nil, grade = 1},
    {"Paramedic", 0, "paramedic.rank2.permission", grade = 1},
    {"Senior Paramedic", 0, "paramedic.rank3.permission", grade = 1},
    {"Advanced Paramedic", 0, "paramedic.rank4.permission", grade = 1},
}

cfg.doctorRanks = {
    {"Medical Student", 60000, "nhs.medicalstudent.whitelisted", grade = 2},
    {"Nurse", 65000, "nhs.nurse.whitelisted", grade = 2},
    {"Doctor", 70000, "nhs.doctor.whitelisted", grade = 2},
    {"Senior Doctor", 80000, "nhs.seniordoctor.whitelisted", grade = 2},
    {"Physician", 90000, "nhs.physician.whitelisted", grade = 2},
    {"Surgeon", 95000, "nhs.surgeon.whitelisted", grade = 2},
    {"Specialist", 105000, "nhs.specialist.whitelisted", grade = 2},
    {"Consultant", 115000, "nhs.consultant.whitelisted", grade = 2},
    {"Clinical Lead", 130000, "nhs.clinicallead.whitelisted", grade = 2},
    {"Honourable Doctor", 82500, "nhs.honourabledoctor.whitelisted", grade = 2},
    {"Medical Advisor", 90000, "nhs.advisor.whitelisted", grade = 4},
    {"Assistant Medical Director", 140000, "nhs.assistantchief.whitelisted", grade = 4},
    {"Deputy Medical Director", 155000, "nhs.deputychief.whitelisted", grade = 4},
    {"Head Medical Director", 170000, "nhs.headchief.whitelisted", grade = 4}
}

cfg.lfbRanks = {
    {"Trainee Firefighter", 37500, "lfb.provisionalfirefighter.whitelisted"},
    {"Firefighter", 45000, "lfb.juniorfirefighter.whitelisted"},
    {"Crew Manager", 48750, "lfb.firefighter.whitelisted"},
    {"Watch Manager", 52500, "lfb.seniorfirefighter.whitelisted"},
    {"Station Manager", 56250, "lfb.advancedfirefighter.whitelisted"},
    {"Group Manager", 60000, "lfb.specialistfirefighter.whitelisted"},
    {"Area Manager", 67500, "lfb.leadingfirefighter.whitelisted"},
    {"Sector Command", 75000, "lfb.sectorcommand.whitelisted"},
    {"Divisional Command", 82500, "lfb.divisionalcommand.whitelisted"},
    {"Divisional Officer", 97500, "lfb.divisionalofficer.whitelisted"},
    {"Honourable Firefighter", 90000, "lfb.honaryfirefighter.whitelisted"},
    {"Fire Command Advisor", 90000, "lfb.firecommandadvisor.whitelisted"},
    {"Assistant Chief Fire Officer", 105000, "lfb.assistantchieffireofficer.whitelisted"},
    {"Deputy Chief Fire Officer", 112500, "lfb.deputychieffireofficer.whitelisted"},
    {"Chief Fire Officer", 120000, "lfb.chieffirecommand.whitelisted"},
}

cfg.hmpRanks = {
    {"HMP Transport", 60000, "hmp.transport.whitelisted"},
    {"Trainee Prison Officer", 50000, "hmp.traineeprisonofficer.whitelisted"},
    {"Prison Officer", 60000, "hmp.prisonofficer.whitelisted"},
    {"Senior Officer", 70000, "hmp.seniorofficer.whitelisted"},
    {"Specialist Officer", 80000, "hmp.specialistofficer.whitelisted"},
    {"Principal Officer", 100000, "hmp.principalofficer.whitelisted"},
    {"Supervising Officer", 120000, "hmp.supervisingofficer.whitelisted"},
    {"Honourable Guard", 90000, "hmp.honourableguard.whitelisted"},
    {"HMP Advisor", 90000, "hmp.advisor.whitelisted"},
    {"Custodial Officer", 140000, "hmp.custodialofficer.whitelisted"},
    {"Custodial Supervisor", 160000, "hmp.custodialsupervisor.whitelisted"},
    {"Divisional Commander", 180000, "hmp.divisionalcommander.whitelisted"},
    {"Deputy Governor", 190000, "hmp.deputygovernor.whitelisted"},
    {"Governor", 200000, "hmp.governor.whitelisted"},
}

cfg.borderForceRanks = {
    {"Administrative Assistant", 37500, "borderforce.administrativeassistant.whitelisted"},
    {"Assistant Immigration Officer", 45000, "borderforce.assistantimmigrationofficer.whitelisted"},
    {"Immigration Officer", 48750, "borderforce.immigrationofficer.whitelisted"},
    {"Higher Immigration Officer", 52500, "borderforce.higherimmigrationofficer.whitelisted"},
    {"Senior Immigration Officer", 60000, "borderforce.seniorimmigrationofficer.whitelisted"},
    {"Chief Immigration Officer", 70000, "borderforce.chiefimmigrationofficer.whitelisted"},
    {"HM Inspector", 90000, "borderforce.hminspector.whitelisted"},
    {"Special Officer", 70000, "borderforce.hminspector.whitelisted"},
    {"UKBF Advisor", 90000, "borderforce.hminspector.whitelisted"},
    {"Assistant Director", 105000, "borderforce.assistantdirector.whitelisted"},
    {"Regional Director", 112500, "borderforce.regionaldirector.whitelisted"},
    {"Director General", 120000, "borderforce.directorgeneral.whitelisted"},
}

cfg.casinoRanks = {
    {"Casino Staff", 0},
    {"Casino Security", 0},
    {"Casino Senior Security", 0},
    {"Casino Security Manager", 0},
    {"Casino Rental Manager", 0},
    {"Casino Manager", 0},
    {"Casino Owner", 0},
}

return cfg