<br>

Each project has a GitHub Organization hub, and each hub has a <q>configurations</q> repository.  Foremost, each hub hosts an overarching configuration file - <a href="data/s3_parameters.json">data/s3_parameters.json</a> - which outlines a few settings for each project's specific Amazon S3 (Simple Storage Service) sections; <a href="data/s3_parameters.yaml">data/s3_parameters.yaml</a> is the YAML format.  Consequently, via <a href="data/s3_parameters.json">data/s3_parameters.json</a>, and further settings, repositories, i.e., packages, interact with a project's specific Amazon S3 sections.


Next, each of the hub's computation repositories has its own configurations directories. In brief



<table style="width: 80%; margin-left: 1.25rem; margin-right: auto; margin-top: 35px;">
  <colgroup>
    <col span="1" style="width: 21.5%;">
    <col span="1" style="width: 47.5%;">
  </colgroup>
  <thead><tr><th>repository</th><th>configurations section</th></tr></thead>
  <tr><td><a href="https://github.com/prehypotheses/t5" target="_blank">t5</a></td><td><a href="data/architecture/t5">data/architecture/t5</a></td></tr>
  <tr><td><a href="https://github.com/prehypotheses/interface-internal" target="_blank">interface-internal</a></td><td><a href="data/interface-internal">data/interface-internal</a></td></tr>
<tr><td><a href="https://github.com/prehypotheses/metrics" target="_blank">metrics</a></td><td><a href="data/metrics">data/metrics</a></td></tr>
<tr><td><a href="https://github.com/prehypotheses/special" target="_blank">special</a></td><td><a href="data/special">data/special</a></td></tr>
</table>

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
