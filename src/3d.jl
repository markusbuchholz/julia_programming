# 3d_surface.jl
using Plots
plotlyjs()  # or gr(), pyplot(), etc.

# Create a grid
xs = range(-2, 2, length=80)
ys = range(-2, 2, length=80)

# Compute z = sin(r)/r, with r = sqrt(x^2 + y^2)
r = [sqrt(x^2 + y^2) for x in xs, y in ys]
z = sin.(r) ./ r

# Surface plot
plot(
    xs, ys, z,
    st = :surface,
    title = "3D Surface: sin(r)/r",
    xlabel = "x",
    ylabel = "y",
    zlabel = "z"
)

savefig("3d_surface.png")
