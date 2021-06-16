from typing import Dict, Optional

from requests import Response
from requests import get as requests_get

API_URL: str = "http://api.icndb.com/jokes/random"


class Demo:
    """
    This class is used to demo a templated Python project.
    """

    def __init__(self) -> None:
        """Class Constructor"""
        pass

    @staticmethod
    def _get_joke() -> Optional[Dict]:
        """
        Get a random joke from the internet Chuck Norris database.

        return: Optional[Dict]
        """
        response: Response = requests_get(API_URL)
        joke: Optional[Dict] = response.json()
        return joke

    def print_joke(self) -> None:
        """Print the joke to standard out."""
        joke: Optional[Dict] = self._get_joke()
        if joke is not None:
            joke_value: Optional[Dict] = joke.get("value")
        if joke_value is not None:
            joke_msg: Optional[str] = joke_value.get("joke")
        print(joke_msg)
