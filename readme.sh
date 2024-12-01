Sentiment Analysis of Drug Reviews
Project Overview
This project focuses on performing sentiment analysis on a dataset of drug reviews. The objective is to analyze the sentiment of these reviews, convert the review text into TF-IDF vectors, and train a model using a Random Forest classifier to classify the sentiment.

Steps Involved
1. Data Preprocessing
Load the Dataset:

The dataset consists of reviews for various drugs, each associated with sentiment scores.

Clean the Review Text:

A custom function was used to clean the text data by converting text to lowercase, removing punctuation, HTML tags, links, and words containing numbers.

2. Sentiment Analysis with TextBlob
Apply TextBlob:

TextBlob was utilized to calculate the sentiment polarity of the cleaned review text.

Sentiment polarity scores were then converted to binary labels: positive (1) and negative (0).

3. Feature Extraction with TF-IDF
Vectorize the Clean Reviews:

TF-IDF Vectorizer was employed to transform the cleaned review text into numerical vectors representing the importance of words in the context of the dataset.

4. Model Training with Random Forest Classifier
Train-Test Split:

The dataset was split into training and testing sets.

Create and Train the Pipeline:

A pipeline was created combining TF-IDF Vectorizer and Random Forest Classifier.

The model was trained on the training data.

Evaluate the Model:
# Clone the repository
git clone https://github.com/rajbasnet123789/drug-review-sentiment-analysis.git

# Navigate to the project directory
cd drug-review-sentiment-analysis

# Install the required dependencies
pip install -r requirements.txt

# Run the example code
python sentiment_analysis.py


Predictions were made on the test set.

Model performance was evaluated using metrics such as accuracy, precision, recall, and F1 score.
