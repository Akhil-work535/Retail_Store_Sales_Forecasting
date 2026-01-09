# 📊 Retail Store Sales Forecasting

## 🔍 Business Problem
Retail sales vary significantly due to seasonality, holidays, fuel prices, and economic conditions, making it difficult for retailers to plan inventory, staffing, and promotions effectively.  
Inaccurate forecasts can lead to stockouts, overstocking, poor service levels, and lost revenue.

This project focuses on building reliable time-series forecasting models to support better operational and planning decisions.

## 🎯 Objectives
- Analyze historical sales patterns and demand drivers  
- Build and compare multiple time-series forecasting models  
- Evaluate model performance using appropriate error metrics  
- Translate forecasts into actionable insights for retail planning  

## 📦 Dataset Overview
- **Source:** Walmart Store Sales Forecasting dataset (Kaggle)  
- **Granularity:** Weekly store-level sales  
- **Key Columns:**  
  - `Store`, `Date`  
  - `Weekly_Sales`  
  - `Holiday_Flag`  
  - `Temperature`  
  - `Fuel_Price`  
  - `CPI`  
  - `Unemployment`  

## 🧹 Data Preparation
- Converted `Date` into datetime format for time-series analysis  
- Handled missing and inconsistent values  
- Engineered time-based features such as month, week, year, and holiday indicators  
- Prepared data to ensure stability and consistency across forecasting models  

## 🛠️ Modeling & Evaluation

### Forecasting Models Built
- **ARIMA** (baseline time-series model)  
- **SARIMA** (seasonality-aware model)  
- **Prophet** (captures strong seasonal and holiday effects)  

### Model Performance

| Model  | MAE         | RMSE        | Expected Sales Improvement* |
|--------|------------|------------|----------------------------|
| ARIMA  | 8.18 × 10⁵ | 8.18 × 10⁵ | 12.08%                     |
| SARIMA | 8.27 × 10⁵ | 8.27 × 10⁵ | 13.27%                     |
| Prophet| 1.05 × 10⁶ | 1.05 × 10⁶ | 44.32%                     |

\*Expected improvement based on forecast-driven demand planning simulations, not live deployment.

## 📈 Business Insights
- Holiday weeks consistently show higher demand, making accurate forecasts critical for staffing and inventory decisions  
- Fuel price increases show a moderate inverse relationship with sales, indicating economic sensitivity in customer spending  
- Prophet captured seasonal and holiday effects most strongly, making it suitable for high-demand planning scenarios  
- Forecast-driven planning showed double-digit improvement in expected sales performance, especially during peak periods  

## 📊 Dashboard & Visualization
Developed an interactive Power BI dashboard to support business users, featuring:  
- Actual vs Forecast sales comparison  
- Store-wise weekly sales trends  
- Seasonal and holiday impact analysis  
- KPI cards for forecast accuracy and demand trends  

## 🧰 Tools & Technologies
- **Python:** pandas, numpy, matplotlib  
- **Forecasting Models:** ARIMA, SARIMA, Prophet  
- **Visualization:** Power BI  
- **Environment:** Jupyter Notebook  

## 🔑 Key Takeaways
- Time-series forecasting improves inventory planning, staffing, and promotion timing  
- Incorporating holiday and economic indicators enhances forecast reliability  
- Different models serve different purposes:  
  - ARIMA as baseline  
  - SARIMA for stable seasonal patterns  
  - Prophet for strong holiday-driven demand  

## 🚀 Future Improvements
- Implement rolling-window cross-validation for time-series evaluation  
- Explore advanced models such as XGBoost and LSTM  
- Deploy forecasts via a dashboard or API  
- Integrate additional demand signals like promotions and weather data  

## 👤 Author
**Akhil**  
Aspiring Data Analyst / Data Scientist  
🔗 [LinkedIn](http://www.linkedin.com/in/vankayalapati-akhil)
