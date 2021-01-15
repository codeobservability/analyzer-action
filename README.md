# Get the Green Github Action

This is a GitHub Action to check if your teams norms are met and analyze your code to get important metrics. This action **only works with the `pull_request` trigger**.

## Getting started

Add your workflow file, the following step

```yml
- uses: getthegreen/client-action@master
  with:
    gtg-key: ${{ secrets.GTG_KEY }}
```

A full workflow file example:

```yml
on: [pull_request]

jobs:
  analyse_code_job:
    runs-on: ubuntu-latest
    name: A job to analyse the code with Get the Green client
    steps:
    - name: Analyse the code step
      uses: getthegreen/client-action@master
      with:
        gtg-key: ${{ secrets.GTG_KEY }}
```