from src.train import train_model

def test_train_model():
    score = train_model()
    assert score > 0.7  
