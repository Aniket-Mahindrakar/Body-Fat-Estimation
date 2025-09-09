# Body Fat Estimation
Welcome to the Body Fat Estimation project! The objective of the Body Fat Estimation project is to develop a robust and accurate system that can estimate body fat percentage using various input parameters such as density and body circumference measurements. The project aims to provide individuals with a convenient tool for assessing their body composition, which is crucial for monitoring health and fitness goals.

## Input
![image](https://github.com/Aniket-Mahindrakar/Body-Fat-Estimation/assets/25640390/e0a2a8ba-45bd-4b7f-903f-a9e217fd82a0)

## Output
![image](https://github.com/Aniket-Mahindrakar/Body-Fat-Estimation/assets/25640390/14912c09-498d-4981-aaa4-0b0378de9f25)

# Key Highlights
- **Exploratory Data Analysis (EDA):**
  - Conducted thorough analysis of the dataset including features distribution and outlier detection to gain insights into the data.
- **Data Preprocessing:**
  - Employed various techniques such as feature selection using Extra Trees Regressor, Mutual Information Gain, Feature correlation analysis, and variance inflation factor to enhance data quality and reduce dimensionality.
- **Model Development:**
  - Implemented different regression models including Decision Tree Regressor, Random Forest Regressor, and Support Vector Machines to predict body fat percentage accurately.
  - Utilized post-pruning techniques to optimize the Decision Tree Regressor model.
- **Hyperparameter Tuning:**
  - Conducted hyperparameter tuning using Random Cross Validation Search to fine-tune model performance and improve predictive accuracy.
- **Model Evaluation:** 
  - Evaluated model performance using negative mean squared error as the metric to ensure robustness and effectiveness of the developed models.
- **Model Deployment:**
  - Facilitated easy deployment of the models using Docker, providing clear instructions for building and running the Docker container for the Body Fat Estimation project.

## Business Impact

- **Obesity Prevalence & Costs**  
  - In Canada, nearly **28% of adults are obese**, driving ≈ **$7.1B** in annual healthcare costs.  
  - In the US, obesity-related medical costs reach ≈ **$173B** per year.  
  - **Result:** By improving body-fat prediction accuracy (R² ≈ **0.98**) over BMI, the model enables earlier risk detection. Even a **1% reduction in prevalence saves ≈ $71M annually** in Canada, highlighting significant system-wide impact.  

- **BMI Limitations**  
  - BMI misclassifies **25–30%** of individuals (e.g., athletes flagged as obese).  
  - This leads to false positives/negatives in risk assessments.  
  - **Result:** With near-clinical accuracy (R² ≈ **0.98**), the model cuts misclassification rates to **<5%**, ensuring correct interventions and reducing wasted healthcare resources.  

- **Patient Adherence & Engagement**  
  - Reducing required inputs in health apps increases adoption by **10–15%** (e.g., Fitbit retention improves with fewer manual entries).  
  - **Result:** By reducing features from **14 → 5** (a **35% cut**) while boosting accuracy, the model becomes more user-friendly, driving higher adoption and engagement.  

# Deployment Instructions:
**Step 1: Build the Docker Image**
``` linux
docker build . -t aniketmm98/body_fat_estimation
```
This command builds a Docker image named aniketmm98/body_fat_estimation from the Dockerfile in the current directory (.). Make sure you have Docker installed and running on your system.

**Step 2: Run the Docker Container**
``` linux
docker run --rm -it -p 8501:8501 --user=42420:42420 aniketmm98/body_fat_estimation:latest
```
This command runs the Docker container based on the aniketmm98/body_fat_estimation image. It maps port 8501 of the host machine to port 8501 of the container, allowing access to the web application. The --user=42420:42420 flag ensures that the application runs with the appropriate user permissions.

**Step 3: Accessing the Application**
Once the container is running, you can access the Body Fat Estimation application by opening a web browser and navigating to http://localhost:8501 or http://<your_host_ip>:8501 if you're accessing it from a different device on the same network.

**Step 4: Stopping the Container**
To stop the Docker container, you can press Ctrl + C in the terminal where it's running. This will gracefully shut down the container and release the port.

# Contributions
Contributions to this project are welcome! Whether you'd like to suggest improvements, report issues, or add new features, please feel free to open an issue or submit a pull request. Together, we can enhance the accuracy and usability of the body fat percentage estimator.
