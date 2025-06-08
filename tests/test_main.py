from main import main


def test_main_output():
    """メインのテスト"""
    actual = main()
    assert actual == 'Hello from src!'
