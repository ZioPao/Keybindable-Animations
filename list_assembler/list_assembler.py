
anims = [

    # SIT
    "Asleep", "Awake", "AwakeToAsleep", "Sit1",

    # NEGATIVE
    "bentdouble", "DragDown", "Fall", "FeelFaint", "PassoutBack", "PassoutFront", "VomitStart", "VomitLoop", "Spooked1", "Spooked2", "Shiver", "TStretch", "Yawn", "Cough",

    # ZOMBIE
    "Z_Eat1", "Z_Eat2", "Z_LayIdle1", "Z_LayIdle2", "Z_Lunge1" "ZombieInteractive",

    # PAIN
    "PainHead1", "PainStomach1", "PainStomach2", "PainArmR", "PainHandR", "PainTorso", "PainLegL", "PainHandL", "PainArmL",

    # SPORT
    "BicepCurl01", "BicepCurl02", "BicepCurl03", "BicepCurl04", "BicepCurl05", "BicepCurl06", "Burpees11","Burpees12", "Pushup02","Pushup03", "Squat03","Squat04", "SitUp2", "SitUp3",

    # INTERACTIVE
    "CrawlInteractive", "ScrambleBackInteractive", "LimpInteractive", "InjuryInteractive",

    # GENERAL
    "Man1", "Man2", "Man3", "Man4", "Man5", "Man6", "Facepalm", "Sway", "SmellBad", "SmellGag", "ChewNails", "ShiftWeight", "Burp",

    # ENVIRONMENT
    "DrinkFloor", "WashFace", "WashHands", "DuffelbagOn", "DuffelbagLoot", "DuffelbagOff",

    # VANILLA STUFF
    "Skeleton", "Scarecrow", "wavehi", "wavehi02", "wavebye", "clap", "clap02", "thumbsup", "thankyou",
    "insult", "stop", "stop02", "surrender", "thumbsdown",
    "followme", "comehere", "comehere02", "yes", "no", "shrug", "undecided",
    "ceasefire", "signalok", "moveout", "freeze", "followbehind", "signalfire", "comefront", "saluteformal", "salutecasual"





]


def gen_single_line(index, anim):
    base_string = f'["KBA_Emote_{index}"] = "{anim}",\n'
    return base_string


full_string = ""
i_emote = 1

for i_anim in range(0, len(anims)):

    full_string += gen_single_line(i_emote, anims[i_anim])
    i_emote += 1

    if i_emote > 16:
        full_string += "\n"
        i_emote = 1

path = r'test.txt'

with open(path, "at") as file:
    file.write(full_string)
    file.close()