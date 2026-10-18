FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN python -m ragkit ingest data/corpus
EXPOSE 8000 8501
# API:  docker run -p 8000:8000 -e RAG_API_KEY=... image
# UI:   docker run -p 8501:8501 image streamlit run app/streamlit_app.py --server.address=0.0.0.0
CMD ["python", "-m", "ragkit", "serve", "--host", "0.0.0.0"]
