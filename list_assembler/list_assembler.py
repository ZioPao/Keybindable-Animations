
anims = ["BicepCurl01",
        "BicepCurl02",
        "BicepCurl03",
        "BicepCurl04",
        "BicepCurl05",
        "BicepCurl06",
        
        "Burpees11","Burpees12",
        
        "Pushup02","Pushup03",
        
        "Squat03","Squat04",
        
        "SitUp2", "SitUp3",
        
        "SmellBad", "SmellGag",

        "VomitStart", "VomitLoop",
        
        "DrinkFloor",
        
        "PainHead1",
        
        "PainStomach1", "PainStomach2",

        "Cough", "PainArmL", "PainHandL", "PainLegL", "PainTorso", "PainLegR", "PainHandR", "PainArmR",
        
        "Crawl", "DuffelbagOn", "DuffelbagLoot", "DuffelbagOff",
        
        "ShiftWeight", "Burp", "ChewNails",
        
        "FeelFaint", "Sway", "Facepalm", "bentdouble",

        "WashFace", "WashHands",
        
        "PassoutBack","PassoutFront","Fall",
        
        "Man1", "Man2", "Man3", "Man4", "Man5", "Man6",
        
        "saluteformal", "salutecasual",
        
        "Yawn", "TStretch",

        "AwakeToAlsleep", "DragDown", "Limp", "LimpAssist",
        
        "Walk002", "Walk003", "Walk005",
        
        "Z_Eat1", "Z_Eat2", "Z_LayIdle1", "Z_LayIdle2", "Z_Lunge1", "Z_Lunge2", "Z_Lunge3",
        
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