# looker-pre-commit
A set of [pre-commit](https://pre-commit.com/) hooks for Looker

## Supported hooks:

* [LAMS](https://github.com/looker-open-source/look-at-me-sideways)
* [lkmlstyle](https://github.com/spectacles-ci/lkmlstyle)

## Example setup:
```yaml
repos:
- repo: https://github.com/getindata/looker-pre-commit
  rev: v0.1.3
  hooks:
    - id: lams
      args:
        - --reporting=no
        - --output-to-cli
    - id: lkmlstyle
```
