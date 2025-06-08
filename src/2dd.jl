#!/usr/bin/env julia
# 2dd.jl

using Pkg
# only need to run once:
# Pkg.add("PlotlyJS")

using PlotlyJS

# Generate data
x  = range(0, 2π, length=200)
y1 = sin.(x)
y2 = cos.(x)

# Create traces
t1 = scatter(x = x,  y = y1, mode = "lines", name = "sin(x)")
t2 = scatter(x = x,  y = y2, mode = "lines", name = "cos(x)")

# Layout
lyt = Layout(
  title       = "Interactive Sine & Cosine",
  xaxis_title = "x",
  yaxis_title = "y"
)

# **Note**: wrap traces in a Vector when calling Plot
fig = Plot([t1, t2], lyt)

display(fig)                      # inline in Jupyter or opens in browser
savefig(fig, "2d_interactive.html")  # standalone HTML
