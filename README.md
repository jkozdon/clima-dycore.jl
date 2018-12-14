# clima-dycore.jl

## Setup

```bash
julia --project=. -e "using Pkg; Pkg.instantiate(); Pkg.API.precompile()"
```

## Running locally

```bash
mpirun -n 4 julia --project=. drivers/atmo/rising_thermal_bubble.jl
```
