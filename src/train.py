# Simple ML example using scikit-learn
from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
import joblib

def train_model():
    data = load_iris()
    X_train, X_test, y_train, y_test = train_test_split(data.data, data.target, test_size=0.2, random_state=42)
    
    model = RandomForestClassifier()
    model.fit(X_train, y_train)
    
    score = model.score(X_test, y_test)
    print(f"Test Accuracy: {score}")

    joblib.dump(model, "model.pkl")
    return score

if __name__ == "__main__":
    train_model()
