<br>

These notes describe some of the arguments of the configurations.

<br>

## Architecture

A few notes about the contents of an architecture's configurations files.

### Arguments for Population Based Training

Ray's <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">Population Based Training Scheduler</a> includes a perturbation interval, $perturbation\\_interval$, parameter.  For more about perturbation intervals, in context, study <a href="https://docs.ray.io/en/latest/tune/examples/pbt_guide.html" target="_blank">A Guide to Population Based Training with Tune</a>.  The `arguments.json` files also include

* $quantile\\_fraction$
* $resample\\_probability$

These parameters are <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">defined within the population based training pages</a>.  The hyperparameter spaces are set within the `hyperspace.json` files.


<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
