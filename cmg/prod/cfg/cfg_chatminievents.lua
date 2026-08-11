--[[
    LEVEL 1 BEGINNER GUIDE — Chatminievents
    ============================================

    File: cmg/prod/cfg/cfg_chatminievents.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: configuration/data used by other scripts.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cfg = {}

cfg.reverseWords = {
	"balance",
	"capture",
	"channel",
	"cluster",
	"compact",
	"cricket",
	"deposit",
	"dynamic",
	"elastic",
	"faction",
	"gateway",
	"harvest",
	"insight",
	"journey",
	"kitchen",
	"lantern",
	"magnetic",
	"network",
	"organic",
	"package",
	"quantum",
	"railway",
	"shelter",
	"traffic",
	"uniform",
	"venture",
	"whistle",
	"zealous",
}

cfg.letterCountWords = {
	"elephant",
	"mississippi",
	"committee",
	"bookkeeper",
	"successful",
	"environment",
	"opportunity",
	"recommendation",
	"development",
	"communication",
	"abbreviation",
	"assassination",
	"entertainment",
	"infrastructure",
	"responsibility",
	"accommodation",
	"aggression",
	"apparatus",
	"assessment",
	"assignment",
	"attendance",
	"balloon",
	"broccoli",
	"business",
	"camouflage",
	"characteristic",
	"collaboration",
	"concession",
	"conscientious",
	"embarrassment",
	"exaggeration",
	"fluorescence",
	"harassment",
	"illumination",
	"inauguration",
	"intelligence",
	"interruption",
	"kindergarten",
	"memorandum",
	"millennium",
	"occurrence",
	"parallel",
	"personnel",
	"possession",
	"pronunciation",
	"succession",
	"surveillance",
	"unnecessary",
	"vacuum",
	"vocabulary",
	"watermelon",
	"cocoon",
	"coffee",
	"common",
	"courier",
	"express",
	"football",
	"glamorous",
	"grammar",
	"hammer",
	"hollow",
	"immediate",
	"innumerable",
	"letter",
	"little",
	"mammoth",
	"occasion",
	"programming",
	"scatter",
	"scissors",
	"serendipity",
	"shimmer",
	"skeleton",
	"slippery",
	"squirrel",
	"success",
	"summation",
	"symmetrical",
	"tattoo",
	"terrific",
	"turbulence",
	"umbrella",
	"vanilla",
	"vegetarian",
	"wellness",
}

-- Lesser-known capitals and countries where the obvious city is wrong.
cfg.capitalCities = {
	{ country = "Australia", answers = { "canberra" } },
	{ country = "Turkey", answers = { "ankara" } },
	{ country = "Brazil", answers = { "brasilia" } },
	{ country = "Canada", answers = { "ottawa" } },
	{ country = "Switzerland", answers = { "bern", "berne" } },
	{ country = "New Zealand", answers = { "wellington" } },
	{ country = "Morocco", answers = { "rabat" } },
	{ country = "Nigeria", answers = { "abuja" } },
	{ country = "Pakistan", answers = { "islamabad" } },
	{ country = "Myanmar", answers = { "naypyidaw" } },
	{ country = "Tanzania", answers = { "dodoma" } },
	{ country = "Ivory Coast", answers = { "yamoussoukro" } },
	{ country = "Kazakhstan", answers = { "astana", "nur-sultan" } },
	{ country = "Mongolia", answers = { "ulaanbaatar", "ulan bator" } },
	{ country = "Bhutan", answers = { "thimphu" } },
	{ country = "Iceland", answers = { "reykjavik" } },
	{ country = "Madagascar", answers = { "antananarivo" } },
	{ country = "Burkina Faso", answers = { "ouagadougou" } },
	{ country = "Namibia", answers = { "windhoek" } },
	{ country = "Botswana", answers = { "gaborone" } },
	{ country = "Lesotho", answers = { "maseru" } },
	{ country = "Eswatini", answers = { "mbabane" } },
	{ country = "Belize", answers = { "belmopan" } },
	{ country = "Vietnam", answers = { "hanoi" } },
	{ country = "Sri Lanka", answers = { "sri jayawardenepura kotte", "sri jayewardenepura kotte" } },
	{ country = "Chad", answers = { "n'djamena", "ndjamena" } },
	{ country = "Eritrea", answers = { "asmara" } },
	{ country = "Guyana", answers = { "georgetown" } },
	{ country = "Suriname", answers = { "paramaribo" } },
	{ country = "Paraguay", answers = { "asuncion" } },
	{ country = "Uruguay", answers = { "montevideo" } },
	{ country = "Ecuador", answers = { "quito" } },
	{ country = "Costa Rica", answers = { "san jose" } },
	{ country = "El Salvador", answers = { "san salvador" } },
	{ country = "Honduras", answers = { "tegucigalpa" } },
	{ country = "Nicaragua", answers = { "managua" } },
	{ country = "Cuba", answers = { "havana" } },
	{ country = "Jamaica", answers = { "kingston" } },
	{ country = "Haiti", answers = { "port-au-prince", "port au prince" } },
	{ country = "Dominican Republic", answers = { "santo domingo" } },
	{ country = "Panama", answers = { "panama city", "panama" } },
	{ country = "Guatemala", answers = { "guatemala city", "guatemala" } },
	{ country = "Armenia", answers = { "yerevan" } },
	{ country = "Georgia", answers = { "tbilisi" } },
	{ country = "Azerbaijan", answers = { "baku" } },
	{ country = "Uzbekistan", answers = { "tashkent" } },
	{ country = "Kyrgyzstan", answers = { "bishkek" } },
	{ country = "Tajikistan", answers = { "dushanbe" } },
	{ country = "Turkmenistan", answers = { "ashgabat" } },
	{ country = "Senegal", answers = { "dakar" } },
	{ country = "Mali", answers = { "bamako" } },
	{ country = "Mozambique", answers = { "maputo" } },
	{ country = "Malawi", answers = { "lilongwe" } },
	{ country = "Zambia", answers = { "lusaka" } },
	{ country = "Zimbabwe", answers = { "harare" } },
	{ country = "Rwanda", answers = { "kigali" } },
	{ country = "Burundi", answers = { "gitega" } },
	{ country = "Albania", answers = { "tirana" } },
	{ country = "North Macedonia", answers = { "skopje" } },
	{ country = "Kosovo", answers = { "pristina" } },
	{ country = "Montenegro", answers = { "podgorica" } },
	{ country = "Serbia", answers = { "belgrade" } },
	{ country = "Croatia", answers = { "zagreb" } },
	{ country = "Slovenia", answers = { "ljubljana" } },
	{ country = "Slovakia", answers = { "bratislava" } },
	{ country = "Latvia", answers = { "riga" } },
	{ country = "Lithuania", answers = { "vilnius" } },
	{ country = "Estonia", answers = { "tallinn" } },
	{ country = "Belarus", answers = { "minsk" } },
	{ country = "Moldova", answers = { "chisinau" } },
	{ country = "Cyprus", answers = { "nicosia" } },
	{ country = "Malta", answers = { "valletta" } },
	{ country = "Luxembourg", answers = { "luxembourg", "luxembourg city" } },
}

return cfg
