#imports
import datetime

#functions

def purchases():
    global balance, info
    item = input("what is the item: ")
    try:
        cost = float(input("what is the price: "))
    except ValueError:
        print("Invalid price entered.")
        return
    if cost > balance:
        print("you cant aford this")
        return
    balance -= cost
    time_of_purchase = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    purchase = {
        "type": "purchase",
        "item": item,
        "cost": cost,
        "time": time_of_purchase
    }
    info.append(purchase)

def deposit():
    global balance, info
    try:
        amount = float(input("pls input the amount you would like to deposit: "))
    except ValueError:
        print("Invalid amount entered.")
        return
    if amount <= 0:
        print("Deposit amount must be positive.")
        return
    balance += amount
    time_of_deposit = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    deposit_entry = {
        "type": "deposit",
        "item": "Deposit",
        "cost": amount,
        "time": time_of_deposit
    }
    info.append(deposit_entry)

def view_history():
    if not info:
        print("No transactions yet.")
    else:
        for entry in info:
            print(f"{entry['type'].capitalize()}: {entry['item']} - ${entry['cost']:.2f} at {entry['time']}")

def balance_view():
    print(f"Your current balance is: ${balance:.2f}")

#instructions
print('Type "new purchase" if you are buying something')
print('Type "history" to see your transaction history')
print('Type "balance" to see your current balance')
print('Type "deposit" to add money')
print('Type "exit" to close the app')

#veiw transactions history

info = []

#balance

balance = 0

#imput
while True:
    user_input = input()
    if user_input == "new purchase":
        purchases()
    elif user_input == "balance":
        balance_view()
    elif user_input == "history":
        view_history()
    elif user_input == "deposit":
        deposit()
    elif user_input == "exit":
        print("Goodbye! Thanks for using the banking app.")
        break
    else:
        print("Unknown command.")
