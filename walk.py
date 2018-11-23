import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import glob
import sys

k = np.loadtxt('walk.txt')
l = np.loadtxt('walks.txt')
    
plt.hist(k, label="parallel")
plt.hist(l, label="serial")
plt.savefig("walk.pdf")