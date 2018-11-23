import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import glob
import sys

k = np.loadtxt(sys.argv[1])
    
plt.hist(k)
plt.savefig(sys.argv[1]+".pdf")