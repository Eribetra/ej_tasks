import random

saldo = 100

while saldo > 0:
    print(f"Seu saldo atual é R${saldo}.")
    aposta = float(input("Digite quanto quer apostar. "))
    while aposta < 0 or aposta > saldo:
        aposta = float(input("Digite um número inteiro, menor que seu saldo atual. "))
    saldo = round(saldo - aposta, 2)
    
    r1 = random.randint(0, 9)
    r2 = random.randint(0, 9)
    r3 = random.randint(0, 9)
    
    print(f"Você girou a roleta.\n\n Roleta: {r1, r2, r3}\n")
    
    if r1 == r2 == r3 == 7:
        saldo += 5 * aposta
        print(f"Jackpot! Você ganhou R${7*aposta}!")
    elif r1 == r2 == r3:
        saldo += 5 * aposta
        print(f"Você ganhou R${4*aposta}!")
    elif r1 == r2 or r2 == r3 or r1 == r3:
        saldo += 2 * aposta
        print(f"Você ganhou R${2*aposta}!")
    elif saldo > 0:
        print("Tente de novo.")
        
print("Você perdeu todo seu dinheiro!")
