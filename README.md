# Code Observability Analyzer for Github Actions

This is a GitHub Action to check your teams norms and analyze your code to get important metrics. This action **only works with the `pull_request` trigger**.

## Usage

**Step 1: Set up Your workflow.yml File**

* **Add checkout to your workflow:**

For Code Observability Analyzer to run, check out your repository using [actions/checkout@v3](https://github.com/actions/checkout). **You will need to set fetch-depth: 0 to fetch all history for all branches and tags.** For example:
	 
```
- name: Checkout repository
  uses: actions/checkout@v3
  with:
    fetch-depth: 0 # This is a required field for Code Observability Analyzer
```

**Step 2: Add Code Observability Analyzer Action**

* co_repo_key: **Required** The repository key from [codeobservability.com]

```yml
- uses: codeobservability/analyzer-action@master
  with:
    co_repo_key: ${{ secrets.CO_REPO_KEY }}
```

After your job is completed, you can view your results on [Code Observability](https://codeobservability.com).

Example:

```yml
on: [pull_request]

jobs:
  analyze_code_job:
    runs-on: ubuntu-latest
    name: Analyze your code with Code Observability
    steps:
    - uses: actions/checkout@v3
      with:
        fetch-depth: 0
    - name: Code Observability Analyser
      uses: codeobservability/analyzer-action@master
      with:
        co-repo-key: ${{ secrets.CO_REPO_KEY }}
```

## License

This library is licensed under the Apache-2.0 License. See the [LICENSE](LICENSE) file.
