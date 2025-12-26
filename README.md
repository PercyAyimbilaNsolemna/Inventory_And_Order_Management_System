# INVENTORY & ORDER MANAGEMENT SYSTEM

A robust **MySQL-powered backend system** for inventory management, order processing, alerts, procurement workflows, KPIs, and analytics.

**Features • Installation • Usage • Documentation • Contributing**

---

## OVERVIEW

The **Inventory & Order Management System** is a modular, SQL-driven backend solution that manages core inventory and order operations, business automation, and analytics.

Built with **MySQL 8**, structured SQL modules, and **Python orchestration**, the system ensures:

- ✅ Accurate inventory tracking  
- ✅ Safe transaction handling with ACID compliance  
- ✅ Automated low-stock alerts  
- ✅ Auto-resolve inventory alerts upon replenishment  
- ✅ Multi-item customer order processing  
- ✅ Business analytics (KPIs, views, rankings)  
- ✅ Clean and maintainable SQL architecture  

---

## PROJECT STRUCTURE

``` text

Inventory_And_Order_Management_System/
│
├── Config/                          # Configuration files
│   └── **pycache**/
│
├── Database_Design/                 # Database design documentation
│   └── ERD/                         # Entity Relationship Diagrams
│
├── DDL/                             # Data Definition Language
│   ├── Create_Tables/               # Table creation scripts
│   ├── Delete_Tables/               # Table deletion scripts
│   └── Update_Tables/               # Table modification scripts
│
├── DML/                             # Data Manipulation Language
│   ├── Analytical_Queries/           # Complex analytical queries
│   ├── Insert_Data/                  # Data seeding scripts
│   ├── KPIs/                         # Key Performance Indicators
│   ├── stored_procedures/            # Stored procedures
│   ├── triggers/                     # Database triggers
│   └── views/                        # Database views
│
├── Read_files/                      # File reading utilities
│   └── **pycache**/
│
├── requirements.txt                 # Python dependencies
├── .env.example                     # Environment variables template
├── .gitignore                       # Git ignore rules
└── README.md                        # Project documentation

```

---

## Installation & Setup

### Prerequisites

- MySQL 8.0+
- Python 3.8+
- pip
- Git

---

### Clone the Repository

```bash
git clone https://github.com/PercyAyimbilaNsolemna/Inventory_And_Order_Management_System.git
cd Inventory_And_Order_Management_System
````

---

All required packages are defined in:

```text
requirements/requirements.txt
```

Install them using:

```bash
pip install -r requirements/requirements.txt
```
**Key packages installed:**

* PyMySQL
* python-dotenv
* ipython-sql
* SQLAlchemy
* mysql-connector-python

---

### Configure Environment Variables

```bash
touch .env
```

Edit `.env`:

```env
DB_PASSWORD=your_mysql_password
DB_NAME=inventory
```

⚠️ **Security Note:** Never commit your `.env` file.

---

### Initialize the Database

```sql
CREATE DATABASE inventory

USE inventory;
```

---

### Execute DDL Scripts

```sql
SOURCE DDL/Create_Tables/create_all_tables.sql;
```

---

### Load Seed Data

```sql
SOURCE DML/Insert_Data/seed_data.sql;
```

---

### Deploy Stored Procedures

```sql
SOURCE DML/stored_procedures/ProcessNewOrder.sql;
```

---

### Deploy Database Triggers

```sql
SOURCE DML/triggers/low_stock_alert.sql;
SOURCE DML/triggers/auto_resolve_alert.sql;
```

---

### Create Views and KPIs

```sql
SOURCE DML/views/create_views.sql;
SOURCE DML/KPIs/kpi_queries.sql;
```

---

## 🚀 Usage

### Running with Jupyter Notebook

```python
%load_ext sql
%sql mysql+pymysql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME
```

```sql
%%sql
SELECT * FROM Products LIMIT 10;
```

---

### Example: Processing a New Order

```sql
SET @CustomerID = 3;

SET @newOrders = '[
  {"ProductID": 101, "Quantity": 2},
  {"ProductID": 103, "Quantity": 1}
]';

CALL ProcessNewOrder(@CustomerID, @newOrders);
```

---

## KEY FEATURES

### TRANSACTION-SAFE ORDER CREATION

The `ProcessNewOrder` stored procedure provides:

* Customer validation
* Empty order rejection
* Stock availability checks
* Atomic inserts for orders and items
* Automatic inventory updates
* Robust error handling
* JSON parsing via temporary tables
* Full ACID compliance

---

### SMART INVENTORY AUTOMATION

#### LOW INVENTORY ALERT TRIGGER

Triggers alerts when:

* `QuantityOnHand <= ReorderLevel`
* No existing open alert

#### AUTO-RESOLVE ALERT TRIGGER

Automatically resolves alerts when stock is replenished.

---

## ANALYTICAL VIEWS AND KPIs

Includes advanced analytics such as:

| Feature             | Description                |
| ------------------- | -------------------------- |
| Sales Ranking       | Product revenue ranking    |
| Customer Analytics  | Lifetime value & frequency |
| Revenue Metrics     | Monthly / quarterly trends |
| Product Performance | Top & slow movers          |
| Inventory Turnover  | Reorder recommendations    |

**TECHNOLOGIES USED**

* Window Functions
* CTEs
* Aggregate Views

---

## SYSTEM-LEVEL SAFEGUARDS

* ACID transactions
* Foreign key enforcement
* Defensive validation
* Trigger-based automation
* Referential integrity
* Duplicate prevention

---

## PERFORMANCE OPTIMIZATION

* Indexed keys
* Optimized joins
* Prepared statements
* Connection pooling
* Materialized analytics views

---

## FUTURE ENHANCEMENTS

* Supplier management
* Predictive analytics
* Real-time notifications
* Audit logging
* Exportable reports

---

## CONTRIBUTING

1. Fork the repo
2. Create a feature branch
3. Commit your changes
4. Push to GitHub
5. Open a Pull Request

---

## AUTHOR

**PERCY AYIMBILA NSOLEMNA**

* 🎓 Deep Learning & Data Engineering Enthusiast
* 🌍 Member, Black in AI
* 🏥 ML for Quality Healthcare
* 💼 [LinkedIn](https://www.linkedin.com/in/percy-ayimbila-nsolemna-a4b1a01a7/) | [GitHub](https://github.com/PercyAyimbilaNsolemna)

---

## 📄 LICENSE

This project is licensed under the **MIT License**.

---

## ACKNOWLEDGMENTS

* AmaliTech
* MySQL Documentation Team
* Python Software Foundation
* Open Source Community
* Black in AI Organization

---

<div align="center">

⭐ **Star this repository if you find it useful!**
Made with ❤️ by **Percy Ayimbila Nsolemna**

</div>
```

---

