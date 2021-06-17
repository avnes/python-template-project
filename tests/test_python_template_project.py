"""Just a template test for demo purposes"""
from python_template_project import __version__


def test_version() -> None:
    """Assert that the version found in __init__.py matches a certain value."""
    assert __version__ == "0.1.0"
