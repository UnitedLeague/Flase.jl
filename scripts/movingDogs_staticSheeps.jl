using Flase

world = World(
    v0 = 1.,
    n_dogs = 500,
    boxsize = 10.0,
    freedom_rate = 0.1,
    motion = BrownianMotion(
        noise = 0.5,
        friction = 1.0
        ),
    sheeps = DenseSheeps(
        n_sheeps = 25,
        gridsize = 10,
        )
    )
simulation = FiniteSimulation(;
    dt = 0.2,
    end_time = 200.0,
    world = world,
    plotter = UnicodePlotter()
    )
Flase.runsim( simulation )
