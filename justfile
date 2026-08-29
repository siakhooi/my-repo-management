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

install:
    npm install -g @siakhooi/gh-pr
    gh-pr -V

devcontainer-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-renovate --requested-my-review --not-yet-reviewed --repo siakhooi/devcontainers -l 20 --max-update 5 --max-update-per-repo 5
github-actions-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label github_actions -l 20 --max-update 5 --max-update-per-repo 2
go-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label go -l 10 --max-update 6 --max-update-per-repo 2
java-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label java -l 10 --max-update 8 --max-update-per-repo 2
javascript-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label javascript -l 20 --max-update 8 --max-update-per-repo 2
python-autoreview:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label python -l 20 --max-update 10 --max-update-per-repo 2
         
devcontainer-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-renovate --repo siakhooi/devcontainers -l 10 --max-update 1 --max-update-per-repo 1
github-actions-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label github_actions -l 20 --max-update 5 --max-update-per-repo 1
go-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label go -l 10 --max-update 3 --max-update-per-repo 1
java-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label java -l 10 --max-update 4 --max-update-per-repo 1
javascript-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label javascript -l 20 --max-update 4 --max-update-per-repo 1
python-automerge:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label python -l 20 --max-update 5 --max-update-per-repo 1

github-actions-autoreview-devcontainers:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label github_actions --allow-no-checks --repo siakhooi/devcontainers -l 5 --max-update 5 --max-update-per-repo 5
github-actions-autoreview-rpms:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label github_actions --allow-no-checks --repo siakhooi/rpms -l 5 --max-update 5 --max-update-per-repo 5
github-actions-autoreview-helm-charts:
    gh-pr autoreview --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --not-yet-reviewed --label github_actions --allow-no-checks --repo siakhooi/helm-charts -l 5 --max-update 5 --max-update-per-repo 5

github-actions-automerge-devcontainers:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label github_actions --allow-no-checks --repo siakhooi/devcontainers -l 20 --max-update 5 --max-update-per-repo 1
github-actions-automerge-rpms:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label github_actions --allow-no-checks --repo siakhooi/rpms -l 20 --max-update 5 --max-update-per-repo 1
github-actions-automerge-helm-charts:
    gh-pr automerge --dry-run --assigned-to-me --authored-by-dependabot --label dependencies --label github_actions --allow-no-checks --repo siakhooi/helm-charts -l 20 --max-update 5 --max-update-per-repo 1
