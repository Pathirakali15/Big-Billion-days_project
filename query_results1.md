Query Results


## q01 – Pending Orders

Row count: 19

| order_id | customer_id | item | amount |
|---|---|---|---|
| 1001 | 10 | Bluetooth Speaker | NULL |
| 1002 | 16 | Smart Watch | 4500 |
| 1004 | 19 | Cotton Kurta | 2800 |
| 1010 | 19 | Wireless Earbuds | NULL |
| 1033 | 18 | Denim Jacket | 2500 |
| 1035 | 5 | Bluetooth Speaker | 2800 |
| 1036 | 22 | Denim Jacket | 5000 |
| 1037 | 3 | Bedsheet Set | 3800 |
| 1042 | 14 | Table Lamp | 1100 |
| 1044 | 10 | Running Shoes | 3600 |
| 1052 | 15 | Smart Watch | 13500 |
| 1057 | 4 | Bluetooth Speaker | 2800 |
| 1058 | 13 | Bedsheet Set | 1900 |
| 1063 | 10 | Air Fryer | 5200 |
| 1064 | 20 | Bluetooth Speaker | NULL |
| 1068 | 23 | Air Fryer | 5200 |
| 1071 | 22 | Air Fryer | 5200 |
| 1075 | 4 | Running Shoes | 3600 |
| 1078 | 3 | Cotton Kurta | 1400 |

## q02 – Orders with Missing Amounts

Row count: 3

| order_id | customer_id | item | amount | status |
|---|---|---|---|---|
| 1001 | 10 | Bluetooth Speaker | NULL | pending |
| 1010 | 19 | Wireless Earbuds | NULL | pending |
| 1064 | 20 | Bluetooth Speaker | NULL | pending |

## q03 – Five Biggest Completed Orders

Row count: 5

| order_id | customer_id | item | amount |
|---|---|---|---|
| 1061 | 16 | Air Fryer | 15600 |
| 1065 | 22 | Air Fryer | 15600 |
| 1069 | 15 | Air Fryer | 15600 |
| 1077 | 3 | Air Fryer | 15600 |
| 1006 | 5 | Smart Watch | 13500 |

## q04 – North and West Customers Aged 25 to 40

Row count: 8

| customer_id | first_name | last_name | region | age |
|---|---|---|---|---|
| 24 | Reena | Kulkarni | West | 25 |
| 8 | Divya | Gupta | West | 26 |
| 17 | Farhan | Shah | North | 27 |
| 1 | aarav | Sharma | North | 28 |
| 16 | Nisha | Mishra | West | 36 |
| 5 | Vikram | Singh | North | 37 |
| 12 | Pooja | Menon | West | 39 |
| 21 | Manoj | Desai | North | 40 |

## q05 – Headline KPIs for Completed Orders

Row count: 1

| total_orders | total_revenue | avg_order_value | min_order_value | max_order_value |
|---:|---:|---:|---:|---:|
| 63 | 346200 | 5495.24 | 1100 | 15600 |

## q06 – Orders and Amounts by Status

Row count: 3

| status | number_of_orders | total_amount |
|---|---:|---:|
| completed | 63 | 346200 |
| pending | 19 | 64900 |
| disputed | 8 | 73200 |

## q07 – Product Revenue Above 20000

Row count: 4

| item | number_of_orders | revenue |
|---|---:|---:|
| Air Fryer | 9 | 104000 |
| Smart Watch | 9 | 67500 |
| Wireless Earbuds | 11 | 60800 |
| Running Shoes | 8 | 43200 |

## q08 – Customer Age Summary by Region

Row count: 4

| region | number_of_customers | average_age | min_age | max_age |
|---|---:|---:|---:|---:|
| East | 6 | 34 | 29 | 41 |
| North | 6 | 37.5 | 27 | 48 |
| South | 6 | 36.33 | 24 | 52 |
| West | 6 | 28.5 | 22 | 39 |

## q09 – Enriched Orders Result
 
Row count : 90

| ID | Month | First Name | Last Name | Region | Manager | Product | Quantity | Amount | Status |
|---|---|---|---|---|---|---|---:|---:|---|
| 1001 | 2026-09 | MEERA | Patil | South | Kavya Nair | Bluetooth Speaker | 2 | null | pending |
| 1002 | 2026-09 | Nisha | Mishra | West | Neha Kulkarni | Smart Watch | 1 | 4500 | pending |
| 1003 | 2026-09 | Lakshmi | Kapoor | South | Kavya Nair | Air Fryer | 2 | 10400 | disputed |
| 1004 | 2026-09 | Gaurav | Yadav | East | Sanjay Roy | Cotton Kurta | 2 | 2800 | pending |
| 1005 | 2026-09 | Tanvi | Thakur | South | Kavya Nair | Table Lamp | 1 | 1100 | completed |
| 1006 | 2026-09 | Vikram | Singh | North | Arjun Mehta | Smart Watch | 3 | 13500 | completed |
| 1007 | 2026-09 | Tanvi | Thakur | South | Kavya Nair | Bedsheet Set | 1 | 1900 | completed |
| 1008 | 2026-09 | Sneha | Das | West | Neha Kulkarni | Wireless Earbuds | 2 | 6400 | completed |
| 1009 | 2026-09 | RAHUL | VERMA | East | Sanjay Roy | Bedsheet Set | 1 | 1900 | completed |
| 1010 | 2026-09 | Gaurav | Yadav | East | Sanjay Roy | Wireless Earbuds | 1 | null | pending |
| 1011 | 2026-09 | Isha | Pillai | West | Neha Kulkarni | Air Fryer | 3 | 15600 | disputed |
| 1012 | 2026-09 | Sneha | Das | West | Neha Kulkarni | Running Shoes | 1 | 3600 | completed |
| 1013 | 2026-09 | Harsh | Chopra | East | Sanjay Roy | Smart Watch | 2 | 9000 | disputed |
| 1014 | 2026-09 | Aditya | Rao | East | Sanjay Roy | Smart Watch | 1 | 4500 | completed |
| 1015 | 2026-09 | Lakshmi | Kapoor | South | Kavya Nair | Smart Watch | 2 | 9000 | completed |
| 1016 | 2026-09 | Pooja | Menon | West | Neha Kulkarni | Denim Jacket | 3 | 7500 | completed |
| 1017 | 2026-09 | Vikram | Singh | North | Arjun Mehta | Wireless Earbuds | 1 | 3200 | completed |
| 1018 | 2026-09 | Manoj | Desai | North | Arjun Mehta | Bedsheet Set | 2 | 3800 | completed |
| 1019 | 2026-09 | Vikram | Singh | North | Arjun Mehta | Running Shoes | 2 | 7200 | completed |
| 1020 | 2026-09 | Tanvi | Thakur | South | Kavya Nair | Wireless Earbuds | 2 | 6400 | completed |
| 1021 | 2026-09 | Manoj | Desai | North | Arjun Mehta | Air Fryer | 2 | 10400 | completed |
| 1022 | 2026-09 | Vikram | Singh | North | Arjun Mehta | Air Fryer | 2 | 10400 | completed |
| 1023 | 2026-09 | Manoj | Desai | North | Arjun Mehta | Running Shoes | 1 | 3600 | completed |
| 1024 | 2026-09 | Priya | iyer | South | Kavya Nair | Cotton Kurta | 1 | 1400 | completed |
| 1025 | 2026-09 | Divya | Gupta | West | Neha Kulkarni | Table Lamp | 1 | 1100 | completed |
| 1026 | 2026-09 | Vikram | Singh | North | Arjun Mehta | Cotton Kurta | 1 | 1400 | completed |
| 1027 | 2026-10 | aarav | Sharma | North | Arjun Mehta | Smart Watch | 1 | 4500 | completed |
| 1028 | 2026-10 | Swati | Banerjee | South | Kavya Nair | Wireless Earbuds | 1 | 3200 | completed |
| 1029 | 2026-10 | Aditya | Rao | East | Sanjay Roy | Denim Jacket | 2 | 5000 | completed |
| 1030 | 2026-10 | Lakshmi | Kapoor | South | Kavya Nair | Denim Jacket | 2 | 5000 | completed |
| 1031 | 2026-10 | Isha | Pillai | West | Neha Kulkarni | Denim Jacket | 2 | 5000 | disputed |
| 1032 | 2026-10 | karthik | nair | East | Sanjay Roy | Table Lamp | 2 | 2200 | completed |
| 1033 | 2026-10 | Swati | Banerjee | South | Kavya Nair | Denim Jacket | 1 | 2500 | pending |
| 1034 | 2026-10 | Divya | Gupta | West | Neha Kulkarni | Running Shoes | 2 | 7200 | completed |
| 1035 | 2026-10 | Vikram | Singh | North | Arjun Mehta | Bluetooth Speaker | 1 | 2800 | pending |
| 1036 | 2026-10 | Tanvi | Thakur | South | Kavya Nair | Denim Jacket | 2 | 5000 | pending |
| 1037 | 2026-10 | RAHUL | VERMA | East | Sanjay Roy | Bedsheet Set | 2 | 3800 | pending |
| 1038 | 2026-10 | RAHUL | VERMA | East | Sanjay Roy | Cotton Kurta | 2 | 2800 | completed |
| 1039 | 2026-10 | RAHUL | VERMA | East | Sanjay Roy | Table Lamp | 2 | 2200 | completed |
| 1040 | 2026-10 | aarav | Sharma | North | Arjun Mehta | Smart Watch | 3 | 13500 | completed |
| 1041 | 2026-10 | Divya | Gupta | West | Neha Kulkarni | Bluetooth Speaker | 1 | 2800 | completed |
| 1042 | 2026-10 | Lakshmi | Kapoor | South | Kavya Nair | Table Lamp | 1 | 1100 | pending |
| 1043 | 2026-10 | Rohit | Khan | North | Arjun Mehta | Bluetooth Speaker | 1 | 2800 | completed |
| 1044 | 2026-10 | MEERA | Patil | South | Kavya Nair | Running Shoes | 1 | 3600 | pending |
| 1045 | 2026-10 | Nisha | Mishra | West | Neha Kulkarni | Cotton Kurta | 3 | 4200 | completed |
| 1046 | 2026-10 | Vikram | Singh | North | Arjun Mehta | Bedsheet Set | 1 | 1900 | completed |
| 1047 | 2026-10 | Isha | Pillai | West | Neha Kulkarni | Wireless Earbuds | 3 | 9600 | disputed |
| 1048 | 2026-10 | Priya | iyer | South | Kavya Nair | Table Lamp | 1 | 1100 | completed |
| 1049 | 2026-10 | aarav | Sharma | North | Arjun Mehta | Smart Watch | 2 | 9000 | completed |
| 1050 | 2026-10 | Pooja | Menon | West | Neha Kulkarni | Running Shoes | 1 | 3600 | completed |
| 1051 | 2026-10 | Sneha | Das | West | Neha Kulkarni | Cotton Kurta | 2 | 2800 | completed |
| 1052 | 2026-10 | Aditya | Rao | East | Sanjay Roy | Smart Watch | 3 | 13500 | pending |
| 1053 | 2026-10 | Tanvi | Thakur | South | Kavya Nair | Air Fryer | 1 | 5200 | completed |
| 1054 | 2026-10 | Manoj | Desai | North | Arjun Mehta | Wireless Earbuds | 3 | 9600 | completed |
| 1055 | 2026-10 | Swati | Banerjee | South | Kavya Nair | Smart Watch | 1 | 4500 | completed |
| 1056 | 2026-10 | Pooja | Menon | West | Neha Kulkarni | Wireless Earbuds | 1 | 3200 | disputed |
| 1057 | 2026-11 | Sneha | Das | West | Neha Kulkarni | Bluetooth Speaker | 1 | 2800 | pending |
| 1058 | 2026-11 | suresh | BOSE | North | Arjun Mehta | Bedsheet Set | 1 | 1900 | pending |
| 1059 | 2026-11 | Priya | iyer | South | Kavya Nair | Bluetooth Speaker | 2 | 5600 | completed |
| 1060 | 2026-11 | suresh | BOSE | North | Arjun Mehta | Wireless Earbuds | 3 | 9600 | disputed |
| 1061 | 2026-11 | Nisha | Mishra | West | Neha Kulkarni | Air Fryer | 3 | 15600 | completed |
| 1062 | 2026-11 | Isha | Pillai | West | Neha Kulkarni | Wireless Earbuds | 2 | 6400 | completed |
| 1063 | 2026-11 | MEERA | Patil | South | Kavya Nair | Air Fryer | 1 | 5200 | pending |
| 1064 | 2026-11 | Isha | Pillai | West | Neha Kulkarni | Bluetooth Speaker | 1 | null | pending |
| 1065 | 2026-11 | Tanvi | Thakur | South | Kavya Nair | Air Fryer | 3 | 15600 | completed |
| 1066 | 2026-11 | suresh | BOSE | North | Arjun Mehta | Wireless Earbuds | 1 | 3200 | completed |
| 1067 | 2026-11 | Priya | iyer | South | Kavya Nair | Air Fryer | 1 | 5200 | completed |
| 1068 | 2026-11 | Harsh | Chopra | East | Sanjay Roy | Air Fryer | 1 | 5200 | pending |
| 1069 | 2026-11 | Aditya | Rao | East | Sanjay Roy | Air Fryer | 3 | 15600 | completed |
| 1070 | 2026-11 | MEERA | Patil | South | Kavya Nair | Table Lamp | 2 | 2200 | completed |
| 1071 | 2026-11 | Tanvi | Thakur | South | Kavya Nair | Air Fryer | 1 | 5200 | pending |
| 1072 | 2026-11 | Isha | Pillai | West | Neha Kulkarni | Bedsheet Set | 1 | 1900 | completed |
| 1073 | 2026-11 | Harsh | Chopra | East | Sanjay Roy | Smart Watch | 1 | 4500 | completed |
| 1074 | 2026-11 | Nisha | Mishra | West | Neha Kulkarni | Running Shoes | 2 | 7200 | completed |
| 1075 | 2026-11 | Sneha | Das | West | Neha Kulkarni | Running Shoes | 1 | 3600 | pending |
| 1076 | 2026-11 | Gaurav | Yadav | East | Sanjay Roy | Cotton Kurta | 2 | 2800 | completed |
| 1077 | 2026-11 | RAHUL | VERMA | East | Sanjay Roy | Air Fryer | 3 | 15600 | completed |
| 1078 | 2026-11 | RAHUL | VERMA | East | Sanjay Roy | Cotton Kurta | 1 | 1400 | pending |
| 1079 | 2026-11 | Sneha | Das | West | Neha Kulkarni | Cotton Kurta | 1 | 1400 | completed |
| 1080 | 2026-11 | Harsh | Chopra | East | Sanjay Roy | Bluetooth Speaker | 1 | 2800 | completed |
| 1081 | 2026-11 | Vikram | Singh | North | Arjun Mehta | Wireless Earbuds | 2 | 6400 | completed |
| 1082 | 2026-11 | karthik | nair | East | Sanjay Roy | Running Shoes | 3 | 10800 | disputed |
| 1083 | 2026-11 | Lakshmi | Kapoor | South | Kavya Nair | Air Fryer | 2 | 10400 | completed |
| 1084 | 2026-11 | Lakshmi | Kapoor | South | Kavya Nair | Running Shoes | 1 | 3600 | completed |
| 1085 | 2026-11 | aarav | Sharma | North | Arjun Mehta | Wireless Earbuds | 1 | 3200 | completed |
| 1086 | 2026-11 | Manoj | Desai | North | Arjun Mehta | Running Shoes | 2 | 7200 | completed |
| 1087 | 2026-11 | Manoj | Desai | North | Arjun Mehta | Smart Watch | 1 | 4500 | completed |
| 1088 | 2026-11 | Sneha | Das | West | Neha Kulkarni | Wireless Earbuds | 1 | 3200 | completed |
| 1089 | 2026-11 | MEERA | Patil | South | Kavya Nair | Table Lamp | 1 | 1100 | completed |
| 1090 | 2026-11 | karthik | nair | East | Sanjay Roy | Wireless Earbuds | 3 | 9600 | completed |

## q10 – Customers Who Never Placed an Order

Row count: 4

| customer_id | first_name | last_name | region |
|---:|---|---|---|
| 6 | Ananya | Reddy | South |
| 11 | Imran | Joshi | East |
| 17 | Farhan | Shah | North |
| 24 | Reena | Kulkarni | West |

## q11 – Completed-Order Revenue by Region and Month

Row count: 12

| region | order_month | number_of_orders | number_of_customers | total_revenue | average_revenue |
|---|---|---:|---:|---:|---:|
| East | 2026-09 | 2 | 2 | 6400 | 3200 |
| East | 2026-10 | 4 | 3 | 12200 | 3050 |
| East | 2026-11 | 6 | 5 | 50900 | 8483.33 |
| North | 2026-09 | 8 | 2 | 53500 | 6687.5 |
| North | 2026-10 | 6 | 4 | 41300 | 6883.33 |
| North | 2026-11 | 5 | 4 | 24500 | 4900 |
| South | 2026-09 | 5 | 3 | 19800 | 3960 |
| South | 2026-10 | 5 | 4 | 19000 | 3800 |
| South | 2026-11 | 7 | 4 | 43700 | 6242.86 |
| West | 2026-09 | 4 | 3 | 18600 | 4650 |
| West | 2026-10 | 5 | 4 | 20600 | 4120 |
| West | 2026-11 | 6 | 3 | 35700 | 5950 |

## q12 – Product Revenue Contribution Tiers

Row count: 9

| item | total_revenue | contribution_tier |
|---|---:|---|
| Air Fryer | 104000 | High |
| Smart Watch | 67500 | High |
| Wireless Earbuds | 60800 | High |
| Running Shoes | 43200 | Medium |
| Denim Jacket | 17500 | Medium |
| Cotton Kurta | 16800 | Medium |
| Bluetooth Speaker | 14000 | Low |
| Bedsheet Set | 11400 | Low |
| Table Lamp | 11000 | Low |

## q13 – Monthly Sales Representative Performance

Row count: 12

| rep_name | order_month | monthly_target | revenue | performance_tier |
|---|---|---:|---:|---|
| Arjun Mehta | 2026-09 | 40000 | 428000 | Above Target |
| Arjun Mehta | 2026-10 | 40000 | 330400 | Above Target |
| Arjun Mehta | 2026-11 | 40000 | 196000 | Above Target |
| Kavya Nair | 2026-09 | 20000 | 158400 | Above Target |
| Kavya Nair | 2026-10 | 20000 | 152000 | Above Target |
| Kavya Nair | 2026-11 | 20000 | 349600 | Above Target |
| Neha Kulkarni | 2026-09 | 20000 | 148800 | Above Target |
| Neha Kulkarni | 2026-10 | 20000 | 164800 | Above Target |
| Neha Kulkarni | 2026-11 | 20000 | 285600 | Above Target |
| Sanjay Roy | 2026-09 | 12000 | 51200 | Above Target |
| Sanjay Roy | 2026-10 | 12000 | 97600 | Above Target |
| Sanjay Roy | 2026-11 | 12000 | 407200 | Above Target |