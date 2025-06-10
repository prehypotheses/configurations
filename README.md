<br>

These notes describe some of the arguments of the configurations.

<br>

## Architecture

### Arguments for Population Based Training

Ray's <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">Population Based Training Scheduler</a> includes a perturbation interval, $perturbation\\_interval$, parameter.  For more about perturbation intervals, in context, study <a href="https://docs.ray.io/en/latest/tune/examples/pbt_guide.html" target="_blank">A Guide to Population Based Training with Tune</a>.  The `arguments.json` files also include

* $quantile\\_fraction$
* $resample\\_probability$

These parameters are <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">defined within the population based training pages</a>.  The hyperparameter spaces are set within the `hyperspace.json` files.

<br>

### Maximum Sequence Length

The `MAX_LENGTH` argument of an `arguments.json` is in place for an architecture's maximum sequence length (`max_position_embeddings`) parameter.  Thus far, the project depends on the default values, i.e., the default `max_position_embeddings` values

* [DistilBERT](https://huggingface.co/docs/transformers/model_doc/distilbert#transformers.DistilBertConfig)
* [BERT](https://huggingface.co/docs/transformers/model_doc/bert#transformers.BertConfig)

It is $512$ in each case.

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
