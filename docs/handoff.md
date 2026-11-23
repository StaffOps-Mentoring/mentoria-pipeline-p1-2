# Handoff

Last updated: 2026-11-23 by Backstage docs-standard rollout · branch `main`

## State

**Lab template repo** (not a student's solution): state = what the P1.2 lab currently hands to students.
`main` holds a small shell app (`app/saudacao.sh`), its test (`testes/rodar.sh`), an example config and a
`ci` workflow with three jobs; four `chamado-*` branches each add one commit that breaks the run. The
catalog marks it `type: template`, `lifecycle: production`. GitHub Actions is disabled on this repo, so it
has no workflow runs; the lab runs in student forks. Per the mentoring repo's pipelines handoff, P1.2 is
ready and was measured on real GitHub (10 verify items). There are no tags or releases, and nothing is in
flight. The working log for this lab is `docs/handoff/pipelines.md` in the private
`StaffOps-Mentoring/mentoria-roadmap`.

## Done

- Backstage catalog and technology tags ([`bbc1cfc`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/bbc1cfc), [`3c52154`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/3c52154))
- Four `chamado-1042` … `chamado-1045` branches, one failure each ([`fb45b66`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/fb45b66), [`bcbb119`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/bcbb119),
  [`90e8426`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/90e8426), [`484fac7`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/484fac7))
- shellcheck no longer follows the generated `config/app.env` ([`edfe25a`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/edfe25a))
- The P1.2 template with the green pipeline ([`30b7a52`](https://github.com/StaffOps-Mentoring/mentoria-pipeline-p1-2/commit/30b7a52))

## In progress

- No open pull requests and no open issues. Check with `gh pr list -R StaffOps-Mentoring/mentoria-pipeline-p1-2`.

## Next steps

1. None recorded for this repo. Changes to the lab start in `mentoria-roadmap` and are mirrored here
   (suggested, inferred from where the lab statement and verify live).

## Decisions

No ADRs here. The lab design (four branches, read the run without fixing it) is decided in
`mentoria-roadmap`.

## Risks and open questions

- The verify compares a student commit with the tip of the `chamado-*` branch here; moving a branch tip
  makes older forks fail until they sync.
- The workflow pins actions by tag (`actions/checkout@v5`), not by SHA; for a lab whose failures must stay
  stable, a moved tag could change what a run shows (open question).

## How to verify

```bash
gh api repos/StaffOps-Mentoring/mentoria-pipeline-p1-2/actions/permissions --jq .enabled   # false
git branch -r
docker run --rm -v "$PWD:/mnt" -w /mnt koalaman/shellcheck:stable app/saudacao.sh testes/rodar.sh
docker run --rm -v "$PWD:/w" -w /w bash:5 sh -c 'cp config/app.env.exemplo config/app.env && bash testes/rodar.sh'
```
