# AGENTS.md

Template repo for lab **P1.2** ("read a failed run") of the StaffOps mentoring pipelines track. Students fork
it with all branches; the lab statement and its verify script live in the private
`StaffOps-Mentoring/mentoria-roadmap` (`labs/pipelines/P1.2-ler-o-run/`).

## Branches

| Branch | Use |
|---|---|
| `main` | The green pipeline. Changes go through a pull request |
| `chamado-1042` … `chamado-1045` | One deliberate CI failure each. They are lab content: never fix, rebase or delete them |

The lab's verify compares a student's commit with the tip of the `chamado-*` branch in this repo. Moving a
branch tip forces every student with an older fork to sync it.

## Commands

```bash
docker run --rm -v "$PWD:/mnt" -w /mnt koalaman/shellcheck:stable app/saudacao.sh testes/rodar.sh
docker run --rm -v "$PWD:/w" -w /w bash:5 sh -c 'cp config/app.env.exemplo config/app.env && bash testes/rodar.sh'
```

CI: [`.github/workflows/ci.yml`](.github/workflows/ci.yml) (`lint`, `teste`, `pacote`). GitHub Actions is
**disabled on this repo**; runs happen only in student forks.

## Rules

- New documentation, commit messages and PR text are in English. The README and the app's strings are
  student-facing Portuguese lab content: change them only together with the lab in `mentoria-roadmap`.
- Conventional Commits (`fix(ci): ...`, `docs: ...`).
- Update `CHANGELOG.md` `[Unreleased]` and the affected doc in the same commit as the change.
- Never commit secrets. `chamado.txt` holds a placeholder line; students write their own token in their fork.

## Pitfalls

| Pitfall | What to do |
|---|---|
| A fork made with "Copy the `main` branch only" has no `chamado-*` branches | The README tells students to uncheck it; keep that line |
| Workflows in a new fork stay disabled until the student enables them in the Actions tab | Expected; the lab statement covers it |

## Docs map

| Need | Read |
|---|---|
| What the student does | [README.md](README.md) and the lab statement in the mentoring portal |
| Current state | [docs/handoff.md](docs/handoff.md) |
| History | [CHANGELOG.md](CHANGELOG.md) |
