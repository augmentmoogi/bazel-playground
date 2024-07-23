from str_utils import prepend



def test_prepend():
    assert prepend("foo", "bar") == "barfoo"