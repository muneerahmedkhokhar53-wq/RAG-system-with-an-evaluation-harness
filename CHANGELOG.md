# Changelog
All notable changes to this project are documented here. Format: [Keep a Changelog](https://keepachangelog.com), versioning: [SemVer](https://semver.org).

## [1.0.0]
### Added
- Ingestion (md/txt/html/pdf/docx), structure-aware chunking, SQLite vector store with incremental updates.
- Hybrid retrieval (BM25 + dense, reciprocal rank fusion) with lexical or cross-encoder reranking.
- Grounded generation (extractive offline baseline, Anthropic, OpenAI-compatible) with four hallucination guards.
- Evaluation harness: retrieval, answer, grounding, safety and latency metrics, bootstrap CIs, ablations, optional LLM judge, CI quality gate.
- Streamlit UI, FastAPI service, CLI, `.env` loading, Docker and GitHub Actions.
### Fixed
- Prompt-injection sanitiser removed whole lines (including legitimate facts); it now removes only the offending sentence.
- Streamlit evaluation tab printed a stray debug object.
