.PHONY: install test eval ui api lint
install: ; python -m pip install -e ".[all,dev]"
test:    ; pytest -q
lint:    ; ruff check . --fix
eval:    ; python -m ragkit ingest data/corpus && python -m ragkit eval --ablate
ui:      ; python -m streamlit run app/streamlit_app.py
api:     ; python -m ragkit serve
