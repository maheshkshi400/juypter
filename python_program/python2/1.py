import matplotlib.pyplot as plt
import numpy as np
from matplotlib.animation import FuncAnimation

t = np.linspace(0, 10, 100)
y = np.sin(t)

fig, ax = plt.subplots()
ax.set_xlim([min(t), max(t)])  # Use ax.set_xlim instead of plt.xlim
ax.set_ylim(-2, 2)            # Use ax.set_ylim instead of plt.ylim

line, = ax.plot([], [])

def update_data(frame):
    line.set_data(t[:frame], y[:frame])
    return line,

animation = FuncAnimation(fig, update_data, frames=len(t), interval=25)

animation.save("animation_sin.gif")

plt.show()
