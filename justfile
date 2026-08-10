default:
    @just --list

github_actions:
    gh-pr list --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed -l 10 --label github_actions
python:
    gh-pr list --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed -l 10 --label python
javascript:
    gh-pr list --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed -l 10 --label javascript
java:
    gh-pr list --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed -l 10 --label java
go:
    gh-pr list --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed -l 10 --label go
devcontainer:
    gh-pr list --assigned-to-me --authored-by-renovate --requested-my-review --not-yet-reviewed -l 10 --repo siakhooi/devcontainers
