#!/bin/bash
# CafeOps Insight System — Repository Setup Script
# Run this once after cloning to create the full folder structure

echo "Setting up CafeOps Insight System repository structure..."

# Transactional Layer (OLTP)
mkdir -p transactional-layer
echo "# Transactional Layer (OLTP)
This folder contains the C# café operations system responsible for capturing and storing daily transactions via the POS interface." > transactional-layer/README.md

# Analytics Layer (OLAP) — Medallion Architecture
mkdir -p analytics-layer/bronze/logs
mkdir -p analytics-layer/bronze/raw-data
mkdir -p analytics-layer/silver/processed-data
mkdir -p analytics-layer/gold/curated-data

echo "# Analytics Layer (OLAP)
This folder contains the data pipeline built with Python and Apache Spark, following Medallion Architecture.

- **Bronze** — Raw logs and unprocessed data extracted from the OLTP layer
- **Silver** — Cleaned and structured data ready for transformation
- **Gold** — Curated, analytics-ready data consumed by Power BI" > analytics-layer/README.md

# Placeholder files to keep folders tracked by Git
touch analytics-layer/bronze/logs/.gitkeep
touch analytics-layer/bronze/raw-data/.gitkeep
touch analytics-layer/silver/processed-data/.gitkeep
touch analytics-layer/gold/curated-data/.gitkeep

# Frontend — Two versions
mkdir -p frontend/v1-winforms
mkdir -p frontend/v2-web-mvc

echo "# Frontend — Version 1 (WinForms)
Desktop-based POS interface built with C# WinForms for dedicated café counter terminals." > frontend/v1-winforms/README.md

echo "# Frontend — Version 2 (ASP.NET MVC)
Web-based interface built with ASP.NET MVC for multi-branch browser accessibility." > frontend/v2-web-mvc/README.md

# Database
mkdir -p database
echo "# Database
Contains SQL Server schema scripts, CREATE TABLE statements, and seed data.

Scripts should be run in the following order:
1. schema.sql — Create all tables
2. seed.sql — Insert initial data (if applicable)" > database/README.md
touch database/.gitkeep

# Design
mkdir -p design
echo "# Design
Contains system design artifacts including:
- ERD (Entity Relationship Diagram)
- System architecture diagrams
- Data flow diagrams" > design/README.md
touch design/.gitkeep

# Proposal
mkdir -p proposal
echo "# Proposal
Contains the full project proposal document for the CafeOps Insight System." > proposal/README.md

# Documentation
mkdir -p documentation
echo "# Documentation
Contains system documentation including:
- Technical documentation
- User guides
- API documentation (Phase 2)" > documentation/README.md
touch documentation/.gitkeep

echo ""
echo "Repository structure created successfully."
echo ""
echo "Next steps:"
echo "  1. Copy your proposal document into the proposal/ folder"
echo "  2. Add your ERD to the design/ folder once complete"
echo "  3. Push to GitHub: git add . && git commit -m 'chore: initialise repository structure' && git push"
