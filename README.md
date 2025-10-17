**                                                  # Meta Product Analytics — Data Engineering Project
**

[![dbt](https://img.shields.io/badge/dbt-v1.10.13-brightgreen)](https://www.getdbt.com/)
[![Python](https://img.shields.io/badge/Python-3.12-blue)](https://www.python.org/)
[![DuckDB](https://img.shields.io/badge/DuckDB-embedded%20OLAP-orange)](https://duckdb.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)



# Meta Product Analytics — Data Engineering Project

End-to-end analytics pipeline using **dbt + DuckDB + Python** to simulate a Meta-style product analytics workflow (Raw → Staging → Marts → KPI dashboards). Includes lineage, tests, docs, and reproducible local runs.

---

## 🚀 Highlights
- **Modern stack:** dbt (models/tests/docs) + **DuckDB** (local OLAP) + Python utilities  
- **Medallion layers:** `raw` → `staging` → `marts` with reusable macros & sources  
- **Product analytics focus:** DAU/MAU, retention, engagement, feature adoption, funnel KPIs  
- **Quality built-in:** dbt tests (unique/not null/relationships) + freshness checks  
- **Docs & lineage:** auto-generated dbt docs with DAG/graph views  
- **Optional BI:** export parquet/CSV for **Power BI/Tableau** dashboards  

---

## 📂 Repository Structure
meta_product_analytics_de_project/
├─ data/
│ └─ raw/
├─ models/
│ ├─ raw/
│ ├─ staging/
│ └─ marts/
│ ├─ core/
│ └─ product_analytics/
├─ infra/
├─ logs/
├─ target/
├─ schema.yml
├─ dbt_project.yml
├─ profiles.yml
├─ warehouse.duckdb
├─ README.md
└─ images/
├─ dbt_lineage.png
└─ fct_returns_summary.png


---

## 🧰 Prerequisites
- Python 3.10+  
- `pipx` or `pip`  
- dbt-duckdb: `pip install dbt-duckdb`  
- (Optional) Power BI / Tableau for dashboards  

---

## ⚙️ Quickstart
```bash
# 1) Clone the repository
git clone https://github.com/Kurapati1309/meta_product_analytics_de_project.git
cd meta_product_analytics_de_project

# 2) Create and activate virtual environment
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate

# 3) Install dependencies
pip install -r requirements.txt  # if available
pip install dbt-duckdb duckdb pandas pyarrow

# 4) Verify dbt installation
dbt --version

# 5) Run models and tests
dbt run
dbt test

# 6) Generate documentation
dbt docs generate
dbt docs serve   # open http://localhost:8080

🧱 Data Model (Medallion Architecture)

Raw: external sources (CSV, JSON, APIs, etc.)

Staging: type casting, deduplication, column standardization (user_id, event_time, event_type)

Marts:

core/: dim_users, fct_events, fct_sessions

product_analytics/: dau_mau, retention_cohorts, feature_adoption, engagement_kpis, funnel_steps

📊 KPIs & Metrics

DAU / MAU ratio

Retention cohorts (D1/D7/D30)

Engagement (events per user, session duration)

Feature adoption & funnel conversion

Each KPI model includes dbt tests for integrity:

unique

not_null

relationships

🖼️ Lineage & Documentation

Visuals included under /images/:
![dbt Lineage](images/dbt_lineage.png)
![Fact Table Summary](images/fct_returns_summary.png)

To generate interactive docs:
dbt docs generate
dbt docs serve

🧪 Data Quality & Freshness

Automated data tests ensure schema consistency and reliability.

Freshness checks configured via sources.yml using loaded_at_field.

Relationship tests maintain referential integrity (e.g., fct_events.user_id → dim_users.user_id).

📤 Export for BI

Export analytics-ready marts for Power BI or Tableau:
COPY (SELECT * FROM product_analytics.dau_mau)
TO 'exports/dau_mau.parquet' (FORMAT PARQUET);

Suggested dashboards:

DAU & MAU trends

Retention heatmap (D1, D7, D30)

Funnel conversion steps

Feature adoption over time
🔁 CI/CD (Optional Setup)

Integrate with GitHub Actions or any CI pipeline:
- name: Build and Test dbt
  run: |
    dbt deps
    dbt build
    dbt docs generate

🧠 Why This Project (Meta-style)

This project mirrors Meta’s Product Analytics framework — focusing on:

Experimentation readiness

Scalable KPI modeling

Data quality automation

User engagement insights

It demonstrates real-world data engineering and analytics integration with modern open-source tools.

📦 requirements.txt
dbt-duckdb
duckdb
pandas
pyarrow
sqlfluff

🧩 profiles.yml (DuckDB Local Target)
meta_product_analytics_de_project:
  outputs:
    dev:
      type: duckdb
      path: warehouse.duckdb
      schema: main
  target: dev

## 👨‍💻 Author & Credits

**Hemanth Kumar Kurapati**
Founder — Moonlight Aura Data Warehouse
📍 Houston, TX
✉️ [hk485@nau.edu](mailto:hk485@nau.edu)
🔗 [LinkedIn](https://www.linkedin.com/in/hemanth-kurapati1021)
🔗 [GitHub](https://github.com/Kurapati1309)

