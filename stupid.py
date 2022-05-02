from ctypes import sizeof


a = ["G", "H", "I", "J", "K"]
for j in range (len(a)):
    for i in range (6, 17):
        print('=('+a[j]+'4/'+a[j] + str(i) + ') ', end="")
        #print('=({}4/{}{}) ' + a[j] + a[j] + str(i), end="")
    print("\n")