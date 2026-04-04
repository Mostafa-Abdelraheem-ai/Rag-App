# Rag App

A lightweight Retrieval-Augmented Generation (RAG) application for question answering, built as a compact learning project with a FastAPI backend and Docker support.

## Overview

This repository is designed to demonstrate the essential pieces of a small RAG system in a simpler, easier-to-follow codebase. It combines configuration, backend serving, and local container orchestration in one repository so the project can be run locally and extended over time.

## What The Project Covers

- RAG-oriented application structure
- FastAPI-based backend serving
- local environment configuration
- Docker Compose support for local services
- Postman-friendly API testing workflow

## Repository Layout

```text
.
├── docker/
├── src/
│   ├── .env.example
│   ├── main.py
│   └── requirements.txt
└── README.md
```

## Getting Started

### Prerequisites

- Python 3.8+
- Docker and Docker Compose for the containerized workflow

### Local Setup

```bash
cp src/.env.example src/.env
pip install -r src/requirements.txt
cd src
uvicorn main:app --reload --host 0.0.0.0 --port 5000
```

### Docker Setup

```bash
cd docker
cp .env.example .env
docker compose up -d
```

## Why This Repository Is Useful

This project works well as:

- a small-scale RAG learning project
- a base for experimenting with retrieval-backed APIs
- a stepping stone toward more production-ready RAG systems

## Next Improvements

- document the retrieval and generation flow more clearly
- add example API requests and outputs
- explain the data source and indexing process
- include architecture notes and screenshots
