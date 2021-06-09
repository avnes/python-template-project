import requests
from requests import Response

API_URL: str = "http://api.icndb.com/jokes/random"


class Demo:
    """
    This class is used to demo a templated Python project.
    """

    def __init__(self) -> None:
        """Class Constructor"""
        pass

    @staticmethod
    def _get_joke() -> dict:
        """
        Get a random joke from the internet Chuck Norris database.

        return: dict
        """
        response: Response = requests.get(API_URL)
        return response.json()

    def print_joke(self) -> None:
        """Print the joke to standard out."""
        joke: dict = self._get_joke()
        print(joke.get("value").get("joke"))
