<br>

## Configurations

Each project has a GitHub Organization hub, and each hub has a <q>configurations</q> repository.  

<br>

Foremost, each hub hosts an overarching configuration file - <a href="data/s3_parameters.json">data/s3_parameters.json</a> - which outlines a few settings for each project's specific Amazon S3 (Simple Storage Service) sections; <a href="data/s3_parameters.yaml">data/s3_parameters.yaml</a> is the YAML format.  Via <a href="data/s3_parameters.json">data/s3_parameters.json</a>, and further settings, repositories, i.e., packages, retrieve data from, and deliver calculations to, project specific Amazon S3 sections.

<br>

Next, each of the hub's computation repositories has its own configurations directories. In brief

<br>

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

### data/architecture

A few notes about the contents of an architecture's configurations files.

<br>

#### Arguments for Population Based Training

Ray's <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">Population Based Training Scheduler</a> includes a perturbation interval, $perturbation\\_interval$, parameter.  For more about perturbation intervals, in context, study <a href="https://docs.ray.io/en/latest/tune/examples/pbt_guide.html" target="_blank">A Guide to Population Based Training with Tune</a>.  The `arguments.json` files also include

* $quantile\\_fraction$
* $resample\\_probability$

These parameters are <a href="https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.PopulationBasedTraining.html" target="_blank">defined within the population based training pages</a>.  The hyperparameter spaces are set within the `hyperspace.json` files.

#### Training Arguments

A few of the settings within an architecture's configuration file are for the <a href="https://huggingface.co/docs/transformers/main_classes/trainer#transformers.TrainingArguments" target="_blank">Training Arguments</a> class of the `transformers` library.  Hence, study the parameters descriptions of the <a href="https://huggingface.co/docs/transformers/main_classes/trainer#transformers.TrainingArguments" target="_blank">class</a>.

<br>
<br>


## Extra

Within each computation repository, a GitHub Actions work-file includes directives that build an image of the repository.  At present, containers of a project's images are ran via Amazon Web Services.  This leads to extra configuration considerations.

<br>

### Cloud Platforms & Services

Some of the project's repositories, i.e., packages, have to interact with services that require authenticated and/or authorised access.  In this case, because Amazon Web Services is the computation platform, secure interactions with Amazon and other services is aided by <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html" target="_blank">AWS Secrets Manager</a>.  The set-up is via a <b>named</b>

* dictionary, or
* key-value pair

For example, a dictionary named `TrafficTokenClassicationProject` for a traffic data token classification project, wherein the dictionary set-up is

```json
{
  "bucket": "traffic",
  "database-username": "...",
  "database-endpoint": "..."
}
```


<br>
<br>

### GitHub & Assets Delivery

In aid of continuous integration, delivery, and deployment, the delivery of project assets to Amazon Web Services (AWS) is automatic, via GitHub Actions.  The key delivery items are


<br>


#### GitHub OIDC

Secure delivery of items, e.g., built images, configuration files, etc., to AWS is via <a href="https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws" target="_blank">GitHub OIDC (Open Identifier Connect) identity provider.</a>  As the link illustrates, the solution requires connection configurations within both GitHub and AWS.  The section below summarises AWS configurations vis-à-vis identity and asset management roles.


<br>


#### Identity & Asset Management Role

Create AWS IAM (Identity & Asset Management) roles for GitHub OIDC connections.

<ul class="disc">
  <li class="disc"><a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html#idp_oidc_Create" target="_blank">create</a></li>
  <li class="disc"><a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html#idp_oidc_Create_GitHub" target="_blank">ascertain configuration</a></li>
</ul>

During the policy step, select a policy, or policies, in relation to the purpose of the role being created, e.g., for delivering images to Amazon ECR (Elastic Container Registry) ([REF: Point 8](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html#idp_oidc_Create))

> ... IAM includes a list of the AWS managed and customer managed policies in your account. Select the policy to use for the permissions policy ...


<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>


<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
