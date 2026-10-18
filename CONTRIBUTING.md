# Contributing

1. Fork, then create a branch: `git checkout -b feat/my-change`.
2. Set up: `python -m venv .venv`, activate it, then `python -m pip install -e ".[all,dev]"`.
3. Before committing run `ruff check . --fix`, `pytest -q` and `python -m ragkit ingest data/corpus && python -m ragkit eval --ablate`.
4. Add or update tests for behaviour changes. If you change retrieval/generation, include before/after evaluation numbers in the pull request.
5. Keep pull requests focused; describe the problem, the change and how you verified it.

**Evaluation data:** each answerable question in `data/eval/qa_dataset.jsonl` needs `evidence` strings that appear verbatim in the corpus (a test enforces this).
