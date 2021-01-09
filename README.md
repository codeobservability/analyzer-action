# Get the Green Github Action

This is a GitHub Action to check if your teams norms are met and analyze your code to get important metrics.

## Getting started

Add your workflow file, the following step

```yml
- uses: getthegreen/client-action@master
  with:
    gtg-key: ${{ secrets.GTG_KEY }}
```
