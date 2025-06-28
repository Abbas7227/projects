def clear():
    print("         " * 200)

def processing_animation():
    clear()
    print("-")
    print("loading")
    time.sleep(1)
    clear()
    print("--")
    print("loading")
    time.sleep(1)
    clear()
    print("---")
    print("loading")
    time.sleep(1)
    clear()


import time

#title
print("___________________")
print("   bill  splitter   ")

#info
num_people = int(input("amount of people: "))
tip = float(input("tip percentage: "))
bill = float(input("bill: "))

#calculataions
final_bill = bill + (bill * tip / 100)
splitter = final_bill / num_people

#procesing
clear()
time.sleep(1)
processing_animation()


#telling user split info
print("each person should pay", round(splitter, 2))
