import matplotlib.pyplot as plt

elementSize = [100000, 200000, 1000000, 2000000, 4000000, 8000000, 10000000, 100000000, 200000000, 1000000000]

core_count = [1,2,3,4,8,9,16,17,32,35,64,67,128]

time_1 = [
    0.020347,
    0.012086,
    0.010056,
    0.008093,
    0.006223,
    0.006772,
    0.005381, 
    0.006186,
    0.091379,
    0.131761,
    0.457784,
    0.344228,
    0.820825]

time_2 = [
    0.043116,
    0.025842,
    0.019688,
    0.017838,
    0.012078,
    0.013103,
    0.010027,
    0.011443,
    0.098630,
    0.135903,
    0.453899,
    0.364477,
    1.031798
]

time_3 = [
    0.240895,
    0.136647,
    0.103380, 
    0.083051,
    0.061808, 
    0.065801,
    0.049631,
    0.056324,
    0.122947,
    0.177291, 
    0.476536, 
    0.387322, 
    1.038174
]

time_4 = [
    0.509294,
    0.284894,
    0.213771,
    0.171938,
    0.126137,
    0.132635,
    0.099011,
    0.111793,
    0.191135,
    0.236231,
    0.560924,
    0.428029,
    1.078623
]

time_5 = [
    1.069869,
    0.593287,
    0.445401,
    0.357370,
    0.258702,
    0.272663,
    0.201093,
    0.229294,
    0.290158,
    0.342297,
    0.829225,
    0.684532,
    1.158825
]

time_6 = [
    2.203337,
    1.250382,
    0.936658,
    0.732373,
    0.527755,
    0.556146,
    0.408891,
    0.466839,
    0.466115,
    0.540715,
    1.008523,
    0.922356,
    1.323034
]

time_7 = [
    2.799605,
    1.576046,
    1.172773,
    0.939598,
    0.670875,
    0.700928,
    0.523229,
    0.584456,
    0.546458,
    0.640030,
    1.055601,
    1.020756,
    1.416116
]

time_8 = [
    32.438770,
    18.070385,
    13.397661,
    10.824934,
    7.704912 ,
    8.029595 ,
    5.863818,
    6.529597,
    4.986954,
    5.718006,
    4.963793,
    5.683454,
    4.985575
]

time_9 = [
    67.690753,
    37.473496,
    27.713741,
    22.155732,
    15.481177,
    16.066234,
    11.489801,
    13.012087,
    9.753759 ,
    11.074134,
    9.086367 ,
    10.524493,
    8.857850
]

time_10 = [
    369.811416,
    205.059555,
    149.043662,
    119.080791,
    82.427818 ,
    83.729335 ,
    60.678343,
    68.230467,
    50.264742,
    56.512016,
    44.034995,
    52.560458,
    41.055678
]


plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_1,label=str(elementSize[0]))
plt.legend()
#plt.title("mergeSort", elementSize[0])
plt.savefig("time_1.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_2,label=str(elementSize[1]))
plt.legend()
#plt.title("mergeSort", elementSize[1])
plt.savefig("time_2.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_3,label=str(elementSize[2]))
plt.legend()
#plt.title("mergeSort", elementSize[2])
plt.savefig("time_3.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_4,label=str(elementSize[3]))
plt.legend()
#plt.title("mergeSort", elementSize[3])
plt.savefig("time_4.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_5,label=str(elementSize[4]))
plt.legend()
#plt.title("mergeSort", elementSize[4])
plt.savefig("time_5.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_6,label=str(elementSize[5]))
plt.legend()
#plt.title("mergeSort", elementSize[5])
plt.savefig("time_6.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_7,label=str(elementSize[6]))
plt.legend()
# plt.title("mergeSort", elementSize[6])
plt.savefig("time_7.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_8,label=str(elementSize[7]))
plt.legend()
# plt.title("mergeSort", elementSize[7])
plt.savefig("time_8.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_9,label=str(elementSize[8]))
plt.legend()
# plt.title("mergeSort", elementSize[8])
plt.savefig("time_9.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_10,label=str(elementSize[9]))
plt.legend()
# plt.title("mergeSort", elementSize[9])
plt.savefig("time_10.jpg")
plt.clf()

plt.xlabel("number of processors")
plt.ylabel("time in seconds")
plt.plot(core_count,time_1,label=str(elementSize[0]))
plt.plot(core_count,time_2,label=str(elementSize[1]))
plt.plot(core_count,time_3,label=str(elementSize[2]))
plt.plot(core_count,time_4,label=str(elementSize[3]))
plt.plot(core_count,time_5,label=str(elementSize[4]))
plt.plot(core_count,time_6,label=str(elementSize[5]))
plt.plot(core_count,time_7,label=str(elementSize[6]))
plt.plot(core_count,time_8,label=str(elementSize[7]))
plt.plot(core_count,time_9,label=str(elementSize[8]))
plt.plot(core_count,time_10,label=str(elementSize[9]))
plt.legend()
plt.title("mergeSort total")
plt.savefig("mergesortTotal")