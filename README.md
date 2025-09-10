# Body Fat Estimation
![Dockerized](https://img.shields.io/badge/Docker-ready-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## 📌 Value Proposition
Predicts body fat with near-clinical accuracy (**R² ≈ 0.98**) using fewer inputs, enabling earlier risk detection, reducing BMI misclassifications, and improving user adoption.  

Applicable in **fitness, telehealth, and insurance** for cost savings and better engagement.

---

## 📖 Project Overview
This project develops a regression-based machine learning model to estimate body fat percentage from anthropometric measurements.  
It demonstrates a complete workflow: **EDA → Feature Engineering → Model Training → Deployment with Docker & Kubernetes.**

Key highlights:
- Reduced features by **65%** while improving accuracy.  
- Achieved **R² ≈ 0.98**, outperforming traditional BMI classification.  
- Dockerized app for scalable, reproducible deployment.  

---

## 💡 Business Impact

- **Obesity Prevalence & Costs**  
  - In Canada, nearly **28% of adults are obese**, driving ≈ **$7.1B** in annual healthcare costs.  
  - In the US, obesity-related medical costs reach ≈ **$173B** per year.  
  - **Impact:** By improving prediction accuracy (R² ≈ **0.98**) over BMI, the model enables earlier risk detection. Even a **1% reduction in prevalence could save ≈ $71M annually** in Canada.

- **BMI Limitations**  
  - BMI misclassifies **25–30%** of individuals (e.g., athletes flagged as obese).  
  - **Impact:** With near-clinical accuracy, the model reduces misclassification rates to **<5%**, ensuring correct interventions and lowering wasted healthcare resources.

- **Patient Adherence & Engagement**  
  - Reducing required inputs in health apps increases adoption by **10–15%**.  
  - **Impact:** By cutting features from **14 → 5** (a **65% reduction**) while boosting accuracy, the model becomes more user-friendly, driving higher engagement.

---

## 🔎 Exploratory Data Analysis (EDA)
- Identified Gaussian feature distributions.  
- Systematically eliminated outliers to improve model robustness.  
- Feature selection reduced dimensionality while retaining predictive power.  

---

## 🤖 Model Development
- Built regression models using **Random Forest and scikit-learn**.  
- Hyperparameter tuning improved R² from **0.97 → 0.98**.  
- Reduced BMI misclassification from **25–30% → <5%**.  

---

## 🚀 Deployment
The model is deployed as a **Streamlit app** containerized with Docker and orchestrated with Kubernetes.  

### Run with Docker
```bash
docker build -t body-fat-estimation .
docker run -p 8501:8501 body-fat-estimation
```

- Access the app at: http://localhost:8501

---

## Application Preview
### Input
![image](https://github.com/Aniket-Mahindrakar/Body-Fat-Estimation/assets/25640390/e0a2a8ba-45bd-4b7f-903f-a9e217fd82a0)

### Output
![image](https://github.com/Aniket-Mahindrakar/Body-Fat-Estimation/assets/25640390/14912c09-498d-4981-aaa4-0b0378de9f25)

---
## 📑 Model Card (Brief)
- **Intended use:** Non-clinical wellness estimation; not a substitute for medical diagnosis.
- **Data:** Anthropometric dataset (publicly available).
- **Known limits:** Performance may vary across demographics; BMI comparison caveats.
- **Ethics:** Should not be used for punitive or discriminatory purposes.

--- 

## 📜 License
This project is licensed under the MIT License.

---

## 🙌 Acknowledgments
- Public anthropometric dataset used for model training and evaluation.
- Inspiration from the limitations of BMI in clinical and health-tech settings.
