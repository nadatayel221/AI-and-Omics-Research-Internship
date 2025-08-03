# ===================================================================
# Module I: Getting Started with R (Class Ib)
# ===================================================================
# -------------------------------------------------------------------
# Task 1: Set Working Directory and Create Project Structure
# -------------------------------------------------------------------
# Set working directory to your main project folder
setwd(normalizePath("C:/Document/AI and Omics Research Internship/working_directory/AI-and-Omics-Research-Internship"))
# Create required sub directories 
dir.create("results", showWarnings = FALSE)
dir.create("plots", showWarnings = FALSE)
# -------------------------------------------------------------------
# Task 2: Reading Data from CSV file 
# -------------------------------------------------------------------
# Import the CSV file with proper encoding
patient_data <- read.csv(file.choose(), stringsAsFactors = FALSE)
# Verify column names
cat("Columns in dataset:\n")
print(names(patient_data))
# -------------------------------------------------------------------
# Task 3: Inspect and Clean Data 
# -------------------------------------------------------------------
# View first 6 rows
head(patient_data)
# Check dataset structure
str(patient_data)
# Convert to proper data types:
# 1. Gender: character to factor
patient_data$gender <- as.factor(patient_data$gender)
# 2. Diagnosis: character to factor
patient_data$diagnosis <- as.factor(patient_data$diagnosis)
# 3. Create binary smoking status factor (1 = Yes, 0 = No)
patient_data$smoking_binary <- as.factor(ifelse(patient_data$smoker == "Yes", 1, 0))
# Verify factor levels
cat("\nSmoking binary factor levels:\n")
print(levels(patient_data$smoking_binary))
write.csv(patient_data, file = "C:/Document/AI and Omics Research Internship/working_directory/AI-and-Omics-Research-Internship/data/patient_info_clean.csv",row.names = FALSE)
save(patient_data, file = "C:/Document/AI and Omics Research Internship/working_directory/AI-and-Omics-Research-Internship/data/patient_info_clean.RData")
png("C:/Document/AI and Omics Research Internship/working_directory/AI-and-Omics-Research-Internship/plots/smoking_status.png")
barplot(table(patient_data$smoking_binary),
        main = "Smoking Status Distribution",
        xlab = "Smoking Status (0 = Non-smoker, 1 = Smoker)",
        ylab = "Number of Patients",
        col = c("lightgreen", "salmon"))
dev.off()
# 3. Final verification
cat("\nFinal structure of cleaned data:\n")
str(patient_data)

