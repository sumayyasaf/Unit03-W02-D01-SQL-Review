# **📌 SQL Lab: Customer Orders Database**  

### **Objective:**  
In this lab, you will create a **customer orders database**, insert sample data, and write SQL queries to analyze the data. You will apply key SQL concepts, including **filtering by date, finding max/min values, calculating averages, renaming columns with `AS`, using `AGE()`, and performing case-insensitive searches**.  

---

## **📂 Step 1: Create the `customer_orders` Table**  
First, you will create a table named `customer_orders` with the following columns:  
- `order_id`: A unique identifier for each order (auto-incrementing).  
- `customer_name`: The name of the customer placing the order.  
- `order_date`: The date the order was placed.  
- `total_amount`: The total price of the order.  
- `customer_dob`: The date of birth of the customer.  

**Write the `CREATE TABLE` statement to define the structure above.**  

---

## **📥 Step 2: Insert Sample Data**  
Run the following `INSERT` statements to populate the table with sample data:  

```sql
INSERT INTO customer_orders (customer_name, order_date, total_amount, customer_dob) VALUES
('Alice Johnson', '2024-02-10', 250.50, '1990-06-15'),
('Bob Smith', '2024-03-15', 500.00, '1985-08-22'),
('Charlie Brown', '2024-04-20', 120.75, '1995-12-05'),
('Diana Prince', '2023-12-25', 700.30, '1988-04-18'),
('Ethan Hunt', '2024-01-05', 320.40, '1992-09-30'),
('Frank Castle', '2023-11-12', 80.00, '1981-03-14'),
('Grace Harper', '2024-02-28', 150.25, '1997-07-25'),
('Harry Potter', '2024-05-03', 999.99, '2000-05-30'),
('Ivy Walker', '2024-01-17', 455.75, '1993-11-02'),
('Jack Reacher', '2023-10-30', 650.60, '1986-01-10');
```

After inserting the data, run the following command to verify that the records were inserted successfully:  
```sql
SELECT * FROM customer_orders;
```

---

## **📊 Step 3: Write SQL Queries**  
Now, you will write **15 SQL queries** to analyze and retrieve data from the `customer_orders` table.  

### **📝 Basic Queries**
1️⃣ Retrieve all columns from the table.  
2️⃣ Select all orders placed **before March 1, 2024**.  
3️⃣ Select all orders placed **after January 15, 2024**.  

### **📈 Aggregate Functions**
4️⃣ Find the **highest order total**.  
5️⃣ Find the **lowest order total**.  
6️⃣ Calculate the **average order total**.  

### **📝 Using `AS` to Rename Columns**
7️⃣ Retrieve **customer names and total order amounts**, renaming the columns for better readability.  

### **📅 Date & Age Calculations**
8️⃣ Calculate the **age of each customer** based on their date of birth (`customer_dob`).  

### **🔎 Filtering with Case Insensitivity**
9️⃣ Find orders where the customer’s name **contains "john"**, regardless of letter case.  

### **📊 More Queries**
🔟 Select all customers who **spent more than $400**.  
1️⃣1️⃣ Count the **total number of orders** placed.  
1️⃣2️⃣ Retrieve all orders **placed in the year 2023**.  
1️⃣3️⃣ Calculate the **total revenue** from all orders.  
1️⃣4️⃣ Retrieve all orders **placed in February 2024**.  
1️⃣5️⃣ Select all customers **born before 1990**.  

