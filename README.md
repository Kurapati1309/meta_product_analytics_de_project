**# 🧠 Meta Product Analytics — Data Engineering Project**  

\[!\[dbt](https://img.shields.io/badge/dbt-v1.8.6-brightgreen)](https://www.getdbt.com/) 

\[!\[Python](https://img.shields.io/badge/Python-3.12-blue)](https://www.python.org/)

\[!\[DuckDB](https://img.shields.io/badge/DuckDB-embedded%20OLAP-orange)](https://duckdb.org/)

\[!\[License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

!\[Last Updated](https://img.shields.io/badge/Last\_Updated-October\_2025-lightgrey)



An \*\*end-to-end Data Engineering \& Analytics\*\* project simulating \*\*Meta’s internal analytics pipeline\*\* using \*\*dbt\*\*, \*\*DuckDB\*\*, and \*\*Python\*\*.  

This project demonstrates how to model event-based product analytics data using modern data engineering practices.



---



**## 🚀 Tech Stack**

\- dbt (Data Build Tool)\*\* → SQL-based data transformation \& lineage tracking  

\- DuckDB\*\* → In-process analytical database for OLAP-style workloads  

\- Python 3.12\*\* → Environment setup, data validation, and integration  

\- VS Code / CLI\*\* → Development and debugging environment  



---



**## 🧩 Architecture Overview**



\### 🔹 Medallion Data Flow

Raw Layer → Staging Layer → Dim/Facts → Aggregate KPIs



shell

Copy code



**### 🔹 Logical Lineage**

stg\_content ─┐

stg\_users ───┼──▶ dim\_content, dim\_users ─┐

stg\_events ─▶ fct\_product\_events ─────────▶ agg\_product\_kpis



yaml

Copy code



**📈 \*\*Business Goal\*\*:**  

Transform raw product interaction data (views, likes, follows, impressions) into KPI metrics such as Daily Active Users, Engagement Rates, and Impressions per User.



---



**## 🧮 Example KPI Output**



| event\_date | dau | daily\_followers | impressions | likes | like\_rate |

|-------------|-----|----------------|--------------|--------|------------|

| 2024-03-05  | 1   | 1              | 1            | 2      | 2.0        |



---



**## ⚙️ Setup Instructions**



**### 1️⃣ Clone the repository**

```bash

git clone https://github.com/Kurapati1309/meta\_product\_analytics\_de\_project.git

cd meta\_product\_analytics\_de\_project

**2️⃣ Create and activate virtual environment**

bash

Copy code

python -m venv .venv

.venv\\Scripts\\activate

**3️⃣ Install dependencies**

bash

Copy code

pip install dbt-duckdb

**4️⃣ Run dbt models and tests**

bash

Copy code

dbt build

dbt test

**5️⃣ Generate and view documentation**

bash

Copy code

dbt docs generate

dbt docs serve

Then open your browser at 👉 http://localhost:8080



**🗂️ Project Structure**

bash

Copy code

meta\_product\_analytics\_de\_project/

│

├── data/raw/                # CSV source data

├── infra/warehouse.duckdb   # DuckDB database

├── models/

│   ├── staging/             # Staging models for raw data

│   └── marts/               # Dim, Fact, Aggregate tables

├── target/                  # Compiled dbt output

├── profiles.yml             # dbt connection config

├── dbt\_project.yml          # dbt project metadata

└── README.md                # Documentation

**🖼️ Data Pipeline Diagram (Visual)**

markdown

Copy code

&nbsp;       ┌────────────┐

&nbsp;       │   Raw CSV  │

&nbsp;       └─────┬──────┘

&nbsp;             │

&nbsp;        dbt sources

&nbsp;             │

&nbsp;       ┌─────▼──────┐

&nbsp;       │  Staging   │  → Data cleaned \& standardized

&nbsp;       └─────┬──────┘

&nbsp;             │

&nbsp;       ┌─────▼──────┐

&nbsp;       │  Dim/Facts │  → Business logic \& transformations

&nbsp;       └─────┬──────┘

&nbsp;             │

&nbsp;       ┌─────▼──────┐

&nbsp;       │ Aggregates │  → KPIs, dashboards, reports

&nbsp;       └────────────┘

(Optional: Add visual later — e.g., dbt docs lineage screenshot)



**🧪 Example Commands Used**

bash

Copy code

dbt run --threads 1

dbt test --threads 1

dbt docs generate

dbt docs serve

**👨‍💻 Author**

**Name** :Hemanth Kumar Kurapati

**Email:** hk485@nau.edu

**LinkedIn :** www.linkedin.com/in/hemanth-kurapati1021





**🏢 Project: Meta Product Analytics (Educational Simulation)**



**✅ Future Enhancements**

Automate dbt jobs with Apache Airflow or Prefect



Deploy dbt models to Snowflake or Databricks



Add CI/CD pipelines with GitHub Actions



Integrate Power BI / Tableau dashboards



**🏷️ Tags**

**#DataEngineering #dbt #DuckDB #ETL #Analytics #Meta #SQL #Python**





