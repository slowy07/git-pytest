def capitalize_case(x):
    return x.capitalize()


def test_capital_case():
    assert capitalize_case("hello") == "Hello"
