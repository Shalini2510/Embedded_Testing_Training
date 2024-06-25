# test_divide_numbers.py
import pytest
from divide_numbers import divide_numbers

def test_divide_numbers():
    assert divide_numbers(4, 2) == 2
    assert divide_numbers(-4, 2) == -2
    assert divide_numbers(-4, -2) == 2

def test_divide_numbers_zero_division():
    with pytest.raises(ZeroDivisionError):
        divide_numbers(4, 0)