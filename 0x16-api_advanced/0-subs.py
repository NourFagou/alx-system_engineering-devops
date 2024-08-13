#!/usr/bin/python3
"""
Importing requests module
"""

from requests import get


def number_of_subscribers(subreddit):
    """
    returns the number of subscribers
    If not a valid subreddit, return 0.
    """
    # Check if the subredit is none, Return 0
    if subreddit is None or subreddit is not isinstance(subreddit, str):
        return 0

    # Identifiying the user agent
    userAgent = {' User-agent': 'Google Chrome Version 81.0.4044.129'}

    # Identify the url
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)

    # Make the requesst
    response = get(url, head=userAgent)

    # Convert the response intp json format
    jsonResponse = response.json()

    # Try to get the number of subscribes
    try:
        return jsonResponse.get('data').get('subscribers')
    # If you could't get it
    except exceptions.RequestException as e:
        return 0
