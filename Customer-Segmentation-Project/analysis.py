# 1️⃣ Import libraries
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 2️⃣ Load dataset
df = pd.read_csv("Shopping Mall Customer Segmentation Data .csv")

# 3️⃣ Basic data check
print("First 5 rows:")
print(df.head())

print("\nDataset info:")
print(df.info())

# 4️⃣ Check missing values
print("\nMissing values:")
print(df.isnull().sum())

# 5️⃣ Remove duplicates (if any)
df = df.drop_duplicates()

# 6️⃣ Rename columns (optional – clean names)
df.columns = df.columns.str.strip().str.replace(" ", "_")

# ==========================
# 📊 GRAPHS (EDA)
# ==========================

# Age distribution
plt.figure()
sns.histplot(df["Age"], kde=True)
plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Count")
plt.show()

# Annual Income vs Spending Score
plt.figure()
sns.scatterplot(
    x="Annual_Income",
    y="Spending_Score",
    hue="Gender",
    data=df
)
plt.title("Annual Income vs Spending Score")
plt.xlabel("Annual Income")
plt.ylabel("Spending Score")
plt.show()

# Gender count
plt.figure()
sns.countplot(x="Gender", data=df)
plt.title("Gender Distribution")
plt.xlabel("Gender")
plt.ylabel("Count")
plt.show()

# ==========================
# 7️⃣ Save cleaned dataset
# ==========================
df.to_csv("cleaned_customer_data.csv", index=False)

print("\n✅ Cleaned data saved as 'cleaned_customer_data.csv'")
