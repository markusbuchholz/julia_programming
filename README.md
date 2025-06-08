# Julia Programming
---
![image](https://github.com/user-attachments/assets/8ffcfbac-0f6f-4adc-8e2c-91071ca15f49)


---

## Install Julia

```bash
#Download tar.gz file from: https://julialang.org/downloads/

sudo tar zxvf julia-1.10.9-linux-x86_64.tar.gz -C /opt/

sudo ln -s /opt/julia-1.10.9/bin/julia /usr/local/bin/julia

```

## Install Pluto

```bash

julia> ]

(@v1.10) pkg> add Pluto

julia> using Pluto

julia> Pluto.run()

```

## Run programs


```bash

julia program.jl

```

## Install Pkg

```bash

julia

julia> using Pkg

julia> Pkg.add("Plots")

julia> Pkg.add("PlotlyJS")

# Manage packages:
Pkg.status()           # list installed packages
Pkg.update()           # update all packages

```

## Links

- [Tutorials](https://julialang.org/learning/tutorials/)
