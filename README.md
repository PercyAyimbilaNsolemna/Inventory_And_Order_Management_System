<div align="center">

# 📦 INVENTORY & ORDER MANAGEMENT SYSTEM
### *Enterprise-Grade MySQL Backend for Supply Chain Operations*

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-Advanced-CC2927?style=for-the-badge&logo=postgresql&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

---

### 🎯 **Robust. Automated. Scalable.**

*A modular SQL-driven backend solution for inventory tracking, order processing, and business intelligence*

[✨ Features](#-key-features) • [🚀 Quick Start](#-installation--setup) • [📖 Documentation](#-usage) • [🤝 Contributing](#-contributing)

</div>

---

## 🌟 **System Highlights**

<table>
<tr>
<td width="50%">

### 💡 **Core Capabilities**

- 📊 **Real-time Inventory Tracking**
- 🔄 **Automated Stock Alerts**
- 🛒 **Multi-item Order Processing**
- 📈 **Business Intelligence & KPIs**
- 🔐 **ACID-Compliant Transactions**
- 🤖 **Trigger-based Automation**

</td>
<td width="50%">

### 🎯 **Technical Excellence**

```sql
✓ Stored procedures for business logic
✓ Database triggers for automation
✓ Analytical views & CTEs
✓ Window functions for rankings
✓ JSON order processing
✓ Referential integrity enforcement
```

</td>
</tr>
</table>

---

## 📋 **Table of Contents**

- [Overview](#-overview)
- [Project Architecture](#-project-architecture)
- [Installation & Setup](#-installation--setup)
- [Key Features](#-key-features)
- [Usage Examples](#-usage)
- [Analytics & KPIs](#-analytical-views-and-kpis)
- [System Safeguards](#-system-level-safeguards)

---

## 🎯 **Overview**

The **Inventory & Order Management System** is a production-ready, MySQL-powered backend that handles the complete lifecycle of inventory and order operations with enterprise-grade reliability.

<div align="center">

### **What This System Does**

**Inventory Management** → **Order Processing** → **Business Analytics**

</div>

<table>
<tr>
<th width="33%">📦 Inventory Layer</th>
<th width="33%">🛒 Order Layer</th>
<th width="33%">📊 Analytics Layer</th>
</tr>
<tr>
<td>
• Track stock levels<br>
• Monitor reorder points<br>
• Automatic alerts<br>
• Stock replenishment<br>
• Product categorization
</td>
<td>
• Multi-item orders<br>
• Customer validation<br>
• Stock availability checks<br>
• Atomic transactions<br>
• Order history tracking
</td>
<td>
• Sales rankings<br>
• Revenue metrics<br>
• Customer analytics<br>
• Inventory turnover<br>
• Performance KPIs
</td>
</tr>
</table>

### **🔑 Design Principles**

```
✓ ACID compliance for data integrity
✓ Modular SQL architecture for maintainability
✓ Defensive programming with validation
✓ Automated workflows via triggers
✓ Optimized for analytical queries
✓ Scalable and extensible design
```

---

## 🏗️ **Project Architecture**

<div align="center">

### **Modular SQL Structure**

**DDL** (Schema) → **DML** (Logic) → **Analytics** (Insights)

</div>

```
📦 Inventory_And_Order_Management_System/
│
├── 🗄️ Database_Design/
│   └── 📐 ERD/                          # Entity Relationship Diagrams
│       ├── conceptual_model.png         # High-level business entities
│       ├── logical_model.png            # Detailed relationships
│       └── physical_model.png           # Implementation schema
│
├── 🏗️ DDL/                              # Data Definition Language
│   ├── 📝 Create_Tables/
│   │   ├── customers.sql                # Customer master table
│   │   ├── products.sql                 # Product catalog
│   │   ├── orders.sql                   # Order headers
│   │   ├── order_items.sql              # Order line items
│   │   ├── inventory_alerts.sql         # Stock alert tracking
│   │   └── create_all_tables.sql        # Complete schema setup
│   │
│   ├── 🗑️ Delete_Tables/
│   │   └── drop_all_tables.sql          # Clean teardown script
│   │
│   └── 🔧 Update_Tables/
│       └── alter_tables.sql             # Schema modifications
│
├── 🔄 DML/                              # Data Manipulation Language
│   ├── 📊 Analytical_Queries/
│   │   ├── revenue_analysis.sql         # Revenue trends & breakdowns
│   │   ├── customer_insights.sql        # Customer behavior analysis
│   │   ├── product_performance.sql      # Sales & inventory metrics
│   │   └── inventory_health.sql         # Stock status reports
│   │
│   ├── 📥 Insert_Data/
│   │   ├── seed_customers.sql           # Sample customer data
│   │   ├── seed_products.sql            # Sample product catalog
│   │   └── seed_data.sql                # Complete test dataset
│   │
│   ├── 📈 KPIs/
│   │   ├── sales_kpis.sql               # Sales performance metrics
│   │   ├── inventory_kpis.sql           # Stock health indicators
│   │   └── customer_kpis.sql            # Customer value metrics
│   │
│   ├── ⚙️ stored_procedures/
│   │   ├── ProcessNewOrder.sql          # Order creation workflow
│   │   ├── UpdateInventory.sql          # Stock adjustment logic
│   │   └── GenerateReports.sql          # Analytics generation
│   │
│   ├── 🔔 triggers/
│   │   ├── low_stock_alert.sql          # Auto-generate alerts
│   │   ├── auto_resolve_alert.sql       # Auto-close alerts
│   │   └── order_validation.sql         # Pre-insert checks
│   │
│   └── 👁️ views/
│       ├── vw_product_sales.sql         # Product performance view
│       ├── vw_customer_orders.sql       # Customer order history
│       ├── vw_inventory_status.sql      # Real-time stock levels
│       └── create_all_views.sql         # View deployment script
│
├── ⚙️ Config/
│   └── database_config.py               # Connection management
│
├── 📁 Read_files/
│   └── sql_executor.py                  # Batch SQL file runner
│
├── 📋 requirements.txt                  # Python dependencies
├── 🔐 .env.example                      # Environment template
├── 🚫 .gitignore                        # Git ignore rules
└── 📖 README.md                         # This file
```

---

## 🚀 **Installation & Setup**

### **📋 Prerequisites**

<div align="center">

| Requirement | Version | Purpose |
|:---:|:---:|:---|
| 🐬 MySQL | 8.0+ | Database engine |
| 🐍 Python | 3.8+ | Orchestration & tooling |
| 📦 pip | Latest | Package management |
| 🌿 Git | Latest | Version control |

</div>

---

### **1️⃣ Clone the Repository**

```bash
# Clone the project
git clone https://github.com/PercyAyimbilaNsolemna/Inventory_And_Order_Management_System.git

# Navigate to project directory
cd Inventory_And_Order_Management_System
```

---

### **2️⃣ Install Python Dependencies**

All required packages are defined in `requirements.txt`:

```bash
pip install -r requirements.txt
```

**📦 Key Packages Installed:**

<table>
<tr>
<td width="50%">

**Database Connectivity:**
- `PyMySQL` - Pure Python MySQL client
- `mysql-connector-python` - Official MySQL driver
- `SQLAlchemy` - Database ORM

</td>
<td width="50%">

**Development Tools:**
- `python-dotenv` - Environment management
- `ipython-sql` - SQL magic for Jupyter
- `jupyter` - Interactive notebooks

</td>
</tr>
</table>

---

### **3️⃣ Configure Environment Variables**

```bash
# Create environment file
cp .env.example .env
```

**Edit `.env` with your credentials:**

```env
# Database Configuration
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_secure_password
DB_NAME=inventory

# Optional: Connection Pool Settings
DB_POOL_SIZE=10
DB_MAX_OVERFLOW=20
```

> ⚠️ **Security Note:** Never commit your `.env` file to version control!

---

### **4️⃣ Initialize the Database**

**Option A: MySQL Command Line**

```sql
CREATE DATABASE inventory CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE inventory;
```

**Option B: Python Script**

```python
from config.database_config import create_database
create_database()
```

---

### **5️⃣ Execute DDL Scripts (Schema Creation)**

```bash
# Method 1: MySQL CLI
mysql -u root -p inventory < DDL/Create_Tables/create_all_tables.sql

# Method 2: Python executor
python scripts/execute_ddl.py
```

**Tables Created:**
```
✓ customers           # Customer master data
✓ products            # Product catalog
✓ categories          # Product categories
✓ orders              # Order headers
✓ order_items         # Order line items
✓ inventory_alerts    # Stock alert tracking
```

---

### **6️⃣ Load Seed Data**

```sql
SOURCE DML/Insert_Data/seed_data.sql;
```

**Sample Data Loaded:**
- 50+ Customers
- 100+ Products across 10 categories
- 200+ Historical orders
- Realistic inventory levels

---

### **7️⃣ Deploy Stored Procedures**

```sql
SOURCE DML/stored_procedures/ProcessNewOrder.sql;
SOURCE DML/stored_procedures/UpdateInventory.sql;
```

---

### **8️⃣ Deploy Database Triggers**

```sql
SOURCE DML/triggers/low_stock_alert.sql;
SOURCE DML/triggers/auto_resolve_alert.sql;
```

**Triggers Activated:**
- ✅ `before_order_insert` - Validate customer & stock
- ✅ `after_inventory_update` - Check reorder levels
- ✅ `after_stock_replenish` - Auto-resolve alerts

---

### **9️⃣ Create Analytical Views & KPIs**

```sql
SOURCE DML/views/create_all_views.sql;
SOURCE DML/KPIs/kpi_queries.sql;
```

**Views Created:**
```
✓ vw_product_sales_summary     # Revenue by product
✓ vw_customer_lifetime_value   # Customer analytics
✓ vw_inventory_health          # Stock status dashboard
✓ vw_top_selling_products      # Sales rankings
```

---

## ✨ **Key Features**

### **🛒 Transaction-Safe Order Creation**

<div align="center">

**The `ProcessNewOrder` Stored Procedure**

*Enterprise-grade order processing with full ACID compliance*

</div>

<table>
<tr>
<th width="50%">🔍 Validation Steps</th>
<th width="50%">⚙️ Processing Steps</th>
</tr>
<tr>
<td>

**Pre-Flight Checks:**
- ✅ Customer existence validation
- ✅ Empty order rejection
- ✅ JSON format validation
- ✅ Stock availability verification
- ✅ Product existence confirmation

</td>
<td>

**Atomic Operations:**
- 📝 Parse JSON order items
- 💾 Insert order header
- 📦 Insert order line items
- 🔄 Update inventory levels
- 🎯 Return order confirmation
- ↩️ Rollback on any error

</td>
</tr>
</table>

**🔐 ACID Guarantees:**
```
✓ Atomicity    - All-or-nothing execution
✓ Consistency  - Data integrity maintained
✓ Isolation    - Concurrent order safety
✓ Durability   - Permanent on commit
```

---

### **🤖 Smart Inventory Automation**

#### **📉 Low Stock Alert Trigger**

```sql
-- Automatically fires when:
CREATE TRIGGER low_stock_alert
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.QuantityOnHand <= NEW.ReorderLevel 
       AND NOT EXISTS (SELECT 1 FROM inventory_alerts 
                       WHERE ProductID = NEW.ProductID 
                       AND Status = 'Open')
    THEN
        INSERT INTO inventory_alerts 
        (ProductID, AlertType, Status, CreatedAt)
        VALUES (NEW.ProductID, 'Low Stock', 'Open', NOW());
    END IF;
END;
```

**Trigger Conditions:**
- `QuantityOnHand <= ReorderLevel`
- No existing open alert for the product
- Prevents duplicate alerts

---

#### **✅ Auto-Resolve Alert Trigger**

```sql
-- Automatically fires when:
CREATE TRIGGER auto_resolve_alert
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.QuantityOnHand > NEW.ReorderLevel THEN
        UPDATE inventory_alerts
        SET Status = 'Resolved', ResolvedAt = NOW()
        WHERE ProductID = NEW.ProductID 
        AND Status = 'Open';
    END IF;
END;
```

**Benefits:**
```
✓ Zero manual intervention
✓ Real-time alert management
✓ Audit trail preservation
✓ Timestamp tracking
```

---

## 📊 **Analytical Views and KPIs**

<div align="center">

### **Business Intelligence Layer**

*Advanced analytics powered by SQL*

</div>

### **📈 Available Analytics**

<table>
<tr>
<th>Category</th>
<th>Metric</th>
<th>Description</th>
</tr>
<tr>
<td rowspan="3">💰 <strong>Revenue</strong></td>
<td>Total Sales</td>
<td>Aggregate revenue across all orders</td>
</tr>
<tr>
<td>Monthly Trends</td>
<td>Revenue breakdown by month/quarter</td>
</tr>
<tr>
<td>Product Revenue Rank</td>
<td>Top revenue-generating products</td>
</tr>
<tr>
<td rowspan="3">👥 <strong>Customer</strong></td>
<td>Lifetime Value (CLV)</td>
<td>Total customer spending</td>
</tr>
<tr>
<td>Purchase Frequency</td>
<td>Average orders per customer</td>
</tr>
<tr>
<td>Customer Segmentation</td>
<td>High/Medium/Low value tiers</td>
</tr>
<tr>
<td rowspan="3">📦 <strong>Product</strong></td>
<td>Top Sellers</td>
<td>Most frequently ordered items</td>
</tr>
<tr>
<td>Slow Movers</td>
<td>Low turnover products</td>
</tr>
<tr>
<td>Stock Health</td>
<td>Inventory status by category</td>
</tr>
<tr>
<td rowspan="2">🔄 <strong>Inventory</strong></td>
<td>Turnover Rate</td>
<td>Sales velocity by product</td>
</tr>
<tr>
<td>Reorder Priority</td>
<td>Products needing restocking</td>
</tr>
</table>

---

### **🔧 Technologies Used in Analytics**

<table>
<tr>
<td width="50%">

**SQL Techniques:**
- 🪟 **Window Functions** - Ranking & partitioning
- 🔗 **CTEs** - Readable query decomposition
- 📊 **Aggregate Functions** - SUM, AVG, COUNT
- 🎯 **Subqueries** - Complex filtering

</td>
<td width="50%">

**Optimization:**
- 🚀 **Indexed Columns** - Fast lookups
- 💾 **Materialized Views** - Pre-computed results
- 🔍 **Query Caching** - Reduced computation
- 📈 **Partitioning** - Large dataset handling

</td>
</tr>
</table>

---

### **📊 Sample KPI Query**

```sql
-- Top 10 Products by Revenue (with ranking)
SELECT 
    ProductID,
    ProductName,
    TotalRevenue,
    TotalQuantitySold,
    ROW_NUMBER() OVER (ORDER BY TotalRevenue DESC) as RevenueRank,
    PERCENT_RANK() OVER (ORDER BY TotalRevenue DESC) as PercentileRank
FROM vw_product_sales_summary
ORDER BY TotalRevenue DESC
LIMIT 10;
```

---

## 💻 **Usage**

### **🔹 Running with Jupyter Notebook**

```python
# Load SQL extension
%load_ext sql

# Connect to database
%sql mysql+pymysql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME

# Execute queries
%%sql
SELECT 
    p.ProductName,
    p.QuantityOnHand,
    p.ReorderLevel,
    CASE 
        WHEN p.QuantityOnHand <= p.ReorderLevel THEN 'Reorder Now'
        ELSE 'Adequate Stock'
    END as StockStatus
FROM products p
ORDER BY p.QuantityOnHand ASC
LIMIT 10;
```

---

### **🔹 Processing a New Order**

**Example: Multi-Item Customer Order**

```sql
-- Set customer and order details
SET @CustomerID = 15;
SET @OrderItems = '[
  {"ProductID": 101, "Quantity": 5},
  {"ProductID": 205, "Quantity": 2},
  {"ProductID": 312, "Quantity": 10}
]';

-- Execute order processing
CALL ProcessNewOrder(@CustomerID, @OrderItems);

-- Verify order creation
SELECT 
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    COUNT(oi.OrderItemID) as ItemCount
FROM orders o
JOIN order_items oi ON o.OrderID = oi.OrderID
WHERE o.CustomerID = @CustomerID
ORDER BY o.OrderDate DESC
LIMIT 1;
```

---

### **🔹 Checking Inventory Alerts**

```sql
-- View all active low-stock alerts
SELECT 
    a.AlertID,
    p.ProductName,
    p.QuantityOnHand,
    p.ReorderLevel,
    a.CreatedAt,
    DATEDIFF(NOW(), a.CreatedAt) as DaysOpen
FROM inventory_alerts a
JOIN products p ON a.ProductID = p.ProductID
WHERE a.Status = 'Open'
ORDER BY DaysOpen DESC;
```

---

### **🔹 Customer Analytics Query**

```sql
-- Top 10 customers by lifetime value
SELECT 
    CustomerID,
    CustomerName,
    TotalOrders,
    TotalSpent,
    AvgOrderValue,
    CASE 
        WHEN TotalSpent > 10000 THEN 'VIP'
        WHEN TotalSpent > 5000 THEN 'Premium'
        ELSE 'Standard'
    END as CustomerTier
FROM vw_customer_lifetime_value
ORDER BY TotalSpent DESC
LIMIT 10;
```

---

## 🛡️ **System-Level Safeguards**

<div align="center">

### **Enterprise-Grade Data Protection**

</div>

<table>
<tr>
<th width="33%">🔐 Transaction Safety</th>
<th width="33%">✅ Data Integrity</th>
<th width="33%">⚡ Performance</th>
</tr>
<tr>
<td>

**ACID Compliance:**
- Atomic transactions
- Rollback on errors
- Isolation levels
- Durable commits
- Deadlock handling

</td>
<td>

**Constraints:**
- Foreign key enforcement
- NOT NULL checks
- UNIQUE constraints
- CHECK validations
- Referential integrity

</td>
<td>

**Optimization:**
- Indexed primary keys
- Composite indexes
- Query optimization
- Connection pooling
- Prepared statements

</td>
</tr>
</table>

---

### **🔒 Built-in Validations**

```sql
✓ Customer existence checks before order creation
✓ Product availability validation
✓ Quantity > 0 enforcement
✓ Price integrity checks (no negative values)
✓ Duplicate order prevention
✓ Cascading delete prevention for referenced records
```

---

### **🤖 Automated Workflows**

```
📉 Stock drops below threshold → Alert created automatically
📈 Stock replenished above threshold → Alert auto-resolved
🛒 New order placed → Inventory updated atomically
❌ Insufficient stock → Order rejected with clear error
📊 Daily analytics → Views refreshed automatically
```

---

## 🚀 **Performance Optimization**

<table>
<tr>
<th>Optimization</th>
<th>Implementation</th>
<th>Impact</th>
</tr>
<tr>
<td>🔑 <strong>Indexing Strategy</strong></td>
<td>
• Primary keys on all tables<br>
• Foreign key indexes<br>
• Composite indexes for common queries<br>
• Full-text search indexes
</td>
<td>
🚀 <strong>10-100× faster</strong> lookups
</td>
</tr>
<tr>
<td>📊 <strong>Materialized Views</strong></td>
<td>
• Pre-computed KPIs<br>
• Aggregated sales data<br>
• Customer analytics cache
</td>
<td>
⚡ <strong>Near-instant</strong> dashboard loads
</td>
</tr>
<tr>
<td>🔗 <strong>Connection Pooling</strong></td>
<td>
• Reusable connections<br>
• Configurable pool size<br>
• Timeout management
</td>
<td>
📈 <strong>Reduced latency</strong> for concurrent users
</td>
</tr>
<tr>
<td>💾 <strong>Query Optimization</strong></td>
<td>
• Optimized JOIN orders<br>
• Subquery elimination<br>
• Index hints where needed
</td>
<td>
🎯 <strong>Consistent</strong> sub-second response
</td>
</tr>
</table>

---

## 🔮 **Future Enhancements**

<table>
<tr>
<th>Feature</th>
<th>Priority</th>
<th>Description</th>
</tr>
<tr>
<td>🏢 <strong>Supplier Management</strong></td>
<td>🔴 High</td>
<td>Purchase order generation, vendor tracking, lead time analysis</td>
</tr>
<tr>
<td>🤖 <strong>Predictive Analytics</strong></td>
<td>🟡 Medium</td>
<td>ML-based demand forecasting, optimal reorder point calculation</td>
</tr>
<tr>
<td>🔔 <strong>Real-time Notifications</strong></td>
<td>🔴 High</td>
<td>Email/SMS alerts for low stock, high-value orders, anomalies</td>
</tr>
<tr>
<td>📜 <strong>Audit Logging</strong></td>
<td>🟡 Medium</td>
<td>Complete change history, user activity tracking, compliance reporting</td>
</tr>
<tr>
<td>📊 <strong>BI Dashboard Integration</strong></td>
<td>🟢 Low</td>
<td>Power BI, Tableau, or custom React dashboard</td>
</tr>
<tr>
<td>📤 <strong>Exportable Reports</strong></td>
<td>🟡 Medium</td>
<td>PDF, Excel, CSV generation for invoices and analytics</td>
</tr>
<tr>
<td>🌐 <strong>REST API Layer</strong></td>
<td>🔴 High</td>
<td>Flask/FastAPI endpoints for external integrations</td>
</tr>
<tr>
<td>🔐 <strong>Role-Based Access</strong></td>
<td>🟡 Medium</td>
<td>User authentication, permission management, data masking</td>
</tr>
</table>

---

## 🤝 **Contributing**

<div align="center">

**We welcome contributions from the community!**

</div>

### **How to Contribute:**

```
1. 🍴 Fork the repository
2. 🌿 Create a feature branch (git checkout -b feature/AmazingFeature)
3. ✍️ Commit your changes (git commit -m 'Add some AmazingFeature')
4. 📤 Push to the branch (git push origin feature/AmazingFeature)
5. 🔃 Open a Pull Request
```

### **Contribution Guidelines:**

- ✅ Follow existing code style and structure
- ✅ Add comments for complex SQL logic
- ✅ Update documentation for new features
- ✅ Test changes with sample data
- ✅ Ensure backward compatibility

---

## 👨‍💻 **About the Author**

<div align="center">

### **Percy Ayimbila Nsolemna**

*Deep Learning & Data Engineering Enthusiast*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/percy-ayimbila-nsolemna-a4b1a01a7/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/PercyAyimbilaNsolemna)
[![Black in AI](https://img.shields.io/badge/Black_in_AI-Member-purple?style=for-the-badge)](https://blackinai.github.io/)

**Mission**: Leveraging ML & Data Engineering for Quality Healthcare

**Specializations**: Database Design • SQL Optimization • Data Warehousing • Healthcare Informatics

</div>

---

## 📄 **License**

This project is licensed under the **MIT License**.

```
MIT License

Copyright (c) 2024 Percy Ayimbila Nsolemna

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction...
```

See the [LICENSE](LICENSE) file for full details.

---

## 🙏 **Acknowledgments**

<div align="center">

**Special Thanks To:**

| Organization | Contribution |
|:---:|:---|
| 🎓 **AmaliTech** | Training & mentorship |
| 🐬 **MySQL Team** | Comprehensive documentation |
| 🐍 **Python Software Foundation** | Robust language & ecosystem |
| 🌍 **Open Source Community** | Inspiration & collaboration |
| 💜 **Black in AI Organization** | Community & advocacy |

</div>

---

## ⭐ **Show Your Support**

<div align="center">

### **If this project helped you learn database design, give it a ⭐️!**

[![Star](https://img.shields.io/github/stars/PercyAyimbilaNsolemna/Inventory_And_Order_Management_System?style=social)](https://github.com/PercyAyimbilaNsolemna/Inventory_And_Order_Management_System)

---

*Built with 💙 for the data engineering community*

**Questions? Suggestions? Let's connect!**

[📧 Email](mailto:percyayimbila@gmail.com) • [💼 LinkedIn](https://www.linkedin.com/in/percy-ayimbila-nsolemna-a4b1a01a7/) • [🐙 GitHub](https://github.com/PercyAyimbilaNsolemna)

---

**Made with ❤️ by Percy Ayimbila Nsolemna**

</div>