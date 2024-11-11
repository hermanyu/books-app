from os import environ
from dotenv import load_dotenv

# load the environment variables stored in
# the .env file
load_dotenv()

# Set the constant DATABASE_URI to the 
# URI specifying the connection to the datbase.
# This URI string is stored in the .env file.
DATABASE_URI = environ["DATABASE_URI"]