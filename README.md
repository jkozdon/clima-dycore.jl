# clima-dycore.jl

## Setup with CPUs

```bash
julia --project=. -e "using Pkg; Pkg.instantiate(); Pkg.API.precompile()"
```

## Setup with GPUs

```bash
julia --project=env/gpu -e "using Pkg; Pkg.instantiate(); Pkg.API.precompile()"
```

## Running locally with CPUs

```bash
mpirun -n 4 julia --project=. drivers/atmo/rising_thermal_bubble.jl
```

## Running locally with GPUs

```bash
mpirun -n 4 julia --project=env/gpu drivers/atmo/rising_thermal_bubble.jl
```

## Directory Layout

The dynamical cores will live under `src` as modules, for example:

```
src/Atmo
src/Ocean
src/Land
```

There can also be modules common to all dynamical cores such as `src/Utils`.

We have driver files, the code to setup and run test cases, in the `drivers`
directory for example `drivers/atmo/rising_thermal_bubble.jl`.
All the case specific parameters and functions will live in
these driver files.  These files can be used for integration testing of the
dynamical cores.
