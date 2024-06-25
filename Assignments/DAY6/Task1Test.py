# test_add_numbers.py
import pytest
from add_numbers import add_numbers

def test_add_numbers():
    assert add_numbers(2, 3) == 5
    assert add_numbers(-2, 3) == 1
    assert add_numbers(-2, -3) == -5
    assert add_numbers(0, 0) == 0

def test_add_numbers_invalid_input():
    with pytest.raises(TypeError):
        add_numbers("2", 3)
    with pytest.raises(TypeError):
        add_numbers(2, "3")