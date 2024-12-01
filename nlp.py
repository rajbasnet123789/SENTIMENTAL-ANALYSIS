import streamlit as st
import joblib
import numpy as np

# Load the saved model (including TF-IDF vectorizer and classifier)
pipeline = joblib.load('text_classification_model.joblib')

# Streamlit UI
st.title("Text Classification Prediction")

# Input text
input_text = st.text_area("Enter text for classification:")

# Prediction
if input_text:
    # Preprocess the input and make prediction
    input_array = np.array([input_text])  # Convert input text to array
    prediction = pipeline.predict(input_array)[0]  # Get the first prediction

    # Interpret the result
    if prediction == 1:
        st.success("Good Comment")
    elif prediction == 0:
        st.error("Bad Comment ")
    else:
        st.warning(f"Unknown Class: {prediction}")
