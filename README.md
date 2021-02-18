# My SICP workbook is here

Started on Fri Jan 2021
___

Used by [mit-scheme](https://www.gnu.org/software/mit-scheme/):

```bash
$ scheme < main.scm
```

Output:

```bash
1 ]=> (square 10)
;Value: 100

1 ]=> (sum-of-squares 2 3)
;Value: 13
```

### Run in VSCode

The comfortable way to run code may be use the [vscode-code-runner](https://github.com/formulahendry/vscode-code-runner) (it is not ad).

Preference:

```json
{
    // ...
    "code-runner.executorMapByFileExtension": {
        // ...
        ".scm": "scheme",
        // ...
    },
    "code-runner.executorMap": {
        // ...
        "scheme": "scheme <",
        // ...
    },
    // ...
}
```
