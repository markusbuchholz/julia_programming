#!/usr/bin/env julia
# 3dd.jl

using Pkg
# only need to run once:
# Pkg.add("PlotlyJS")

using PlotlyJS

# Build grid
xs = range(-2, 2, length=80)
ys = range(-2, 2, length=80)
r  = [sqrt(x^2 + y^2) for x in xs, y in ys]
z  = sin.(r) ./ r

# Create one surface trace
surf = surface(x = xs, y = ys, z = z)

# Layout with a 3D scene
lyt3 = Layout(
  title = "Interactive 3D Surface: sin(r)/r",
  scene = attr(
    xaxis_title = "x",
    yaxis_title = "y",
    zaxis_title = "z"
  )
)

# Wrap the single trace in a Vector
fig3 = Plot([surf], lyt3)

display(fig3)
savefig(fig3, "3d_interactive.html")
