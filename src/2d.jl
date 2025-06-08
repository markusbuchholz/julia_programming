# 2d_plot.jl
using Plots

# Data
x  = range(0, 2π, length=200)
y1 = sin.(x)
y2 = cos.(x)

# Plot
plot(
    x, y1,
    label = "sin(x)",
    xlabel = "x",
    ylabel = "y",
    title = "Sine and Cosine"
)
plot!(x, y2, label = "cos(x)")

# Save as PNG
savefig("2d_curves.png")
