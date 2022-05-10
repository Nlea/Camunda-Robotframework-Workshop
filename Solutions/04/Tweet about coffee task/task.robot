*** Settings ***
Library    Collections
Library   RPA.Twitter
Variables   env.py


***Variables***
${twitter_consumer_key}   ${ENV_TWITTER_CONSUMER_KEY}
${twitter_consumer_secret}   ${ENV_TWITTER_CONSUMER_SECRET}
${twitter_access_token}   ${ENV_TWITTER_ACCESS_TOKEN}
${twitter_access_secret}   ${ENV_TWITTER_ACCESS_TOKEN_SECRET}


*** Tasks ***
Tweet coffee type
    [Setup]   Authorize   ${twitter_consumer_key}   ${twitter_consumer_secret}   ${twitter_access_token}   ${twitter_access_secret}

    Tweet   Hey ${name} your ${type} is ready!