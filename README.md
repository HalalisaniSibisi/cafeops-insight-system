# ☕ CafeOps Insight System

### *From café operations to business intelligence — one platform.*

![Status](https://img.shields.io/badge/Status-In%20Progress-blue?style=flat-square)
![Phase](https://img.shields.io/badge/Phase-1%20of%202-orange?style=flat-square)
![Stack](https://img.shields.io/badge/Stack-C%23%20%7C%20SQL%20Server%20%7C%20Python%20%7C%20Power%20BI-informational?style=flat-square)
![Last Updated](https://img.shields.io/badge/Last%20Updated-April%202026-green?style=flat-square)

---

## 📌 What Is This?

The **CafeOps Insight System** is a digital solution designed to replace fragmented, paper-based café operations with a centralised platform for managing orders, transactions, and business analytics across multiple branches.

The system bridges two layers:
- **Operational Layer (OLTP)** — Captures and stores real-time café transactions via a POS interface
- **Analytics Layer (OLAP)** — Transforms raw transactional data into business intelligence for owner-level decision-making

---

## 🎯 Why Was This Built?

Small to mid-sized café operations rely on paper-based or disconnected systems that prevent real-time visibility across branches, leading to:

- Lost or inaccurate transaction records
- No cross-branch performance comparison
- Delayed and uninformed decision-making

This system solves that problem by connecting three stakeholders through shared data:

| Stakeholder | What They Get |
|-------------|--------------|
| 👩‍💼 Waiter | Intuitive POS interface to capture orders accurately |
| 🏪 Branch Manager | Live transaction monitoring for daily operational control |
| 👔 Café Owner | Analytical dashboard with revenue, trends, and branch comparisons |

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────────┐
│                  OPERATIONAL LAYER                   │
│                                                      │
│   WinForms / ASP.NET MVC  →  C# Backend  →  SQL Server │
└─────────────────────┬───────────────────────────────┘
                      │
                 Python Extract
                      │
                      ▼
┌─────────────────────────────────────────────────────┐
│                  ANALYTICS LAYER                     │
│                                                      │
│  Bronze (Raw)  →  Silver (Cleaned)  →  Gold (Curated) │
│                  Apache Spark                        │
│              Azure Data Lakehouse                    │
│                  Power BI Dashboard                  │
└─────────────────────────────────────────────────────┘
```

> The analytics pipeline follows **Medallion Architecture**, separating raw, cleaned, and analytics-ready data into distinct zones for reliability and data quality.

---

## 📁 Repository Structure

```
cafeops-insight-system/
│
├── transactional-layer/        ← OLTP: C# café operations system
├── analytics-layer/            ← OLAP: Python + Spark + reporting
│   ├── bronze/                 ← Raw logs and unprocessed data
│   │   ├── logs/
│   │   └── raw-data/
│   ├── silver/                 ← Cleaned and structured data
│   └── gold/                   ← Curated, analytics-ready data
│
├── frontend/
│   ├── v1-winforms/            ← Phase 1: Desktop POS interface
│   └── v2-web-mvc/             ← Phase 2: ASP.NET MVC web interface
│
├── database/                   ← SQL scripts and schema
├── design/                     ← ERD and architecture diagrams
├── proposal/                   ← Project proposal document
└── documentation/              ← System documentation
```

---

## 🛠️ Technology Stack

| Technology | Layer | Purpose |
|------------|-------|---------|
| C# | Backend | Primary business logic and data access |
| WinForms | Frontend v1 | Desktop POS interface for café terminals |
| ASP.NET MVC | Frontend v2 | Web-based multi-branch interface |
| SQL Server | OLTP Database | Transactional data storage |
| Python | ETL — Extract | Pulls raw data from SQL Server |
| Apache Spark | ETL — Transform | Data transformation and format conversion |
| Azure Data Lakehouse | OLAP Storage | Medallion Architecture data zones |
| Power BI | Dashboard | Owner-level analytics and visualisation |
| Draw.io | Design | ERD and system architecture diagrams |
| Visual Studio | IDE | Primary development environment |

---

## 🗺️ Roadmap

### ✅ Completed
- [x] Project proposal drafted
- [x] System architecture defined
- [x] Repository structure established

### 🔄 Phase 1 — Desktop Application (In Progress)
- [ ] Database schema design (ERD)
- [ ] SQL Server setup and CREATE TABLE scripts
- [ ] C# data access layer
- [ ] WinForms POS interface
- [ ] Branch manager transaction view
- [ ] Unit testing

### 🔜 Phase 2 — Web Application + Analytics Pipeline
- [ ] ASP.NET MVC migration
- [ ] Python ETL pipeline (extract from SQL Server)
- [ ] Apache Spark transformation scripts
- [ ] Azure Data Lakehouse setup (Bronze → Silver → Gold)
- [ ] Power BI dashboard development
- [ ] End-to-end pipeline testing

---

## 📄 Proposal

The full project proposal is available in the [`proposal/`](./proposal/) folder.

It covers the problem statement, objectives, scope, technology stack, development methodology, and expected outcomes.

---

## 👤 Author

**Halalisani Sibisi**
National Diploma in Information Technology — NQF Level 6
[GitHub](https://github.com/HalalisaniSibisi)

---

*This project is part of an active portfolio being built in 2026. Development is ongoing.*
