# MNMarketLink Streamlit Application
Created a Python/MySQL application which enables users to discover nearby farmers markets, explore products, and pre-order products for pickup. (December 2025)

Utilizes the Streamlit Python framework and was never deployed on web. Setup for this app is completed locally using MySQL and an IDE such as VS Code. Instructions can be found below screenshots of the program.

## Core Features:

Market Search:
The system will list all markets with a name and location. Users will be able to view details for a specific market, including a list of vendors.

Product Search:
The system will store basic product info such as name, description, and price, and link the products to their vendor.
Users will be able to search for a specific product across all markets. 

Customers and Orders: 
The system will keep a record of pre-orders which include a date and pick-up time, and it will record basic order info such as products and quantities.

<img width="1740" height="835" alt="Image" src="https://github.com/user-attachments/assets/c01827cc-39b1-49c1-b5d5-def9327d3b2f" />
<br><br/>
<img width="1738" height="845" alt="Image" src="https://github.com/user-attachments/assets/df2a56d0-5244-4f15-88d9-b09f149031d3" />
<br><br/>
<img width="1740" height="847" alt="Image" src="https://github.com/user-attachments/assets/200e7b3d-af9b-4244-b746-80483efc91e9" />

# MNMarketLink Python App Setup (Offline)

1. In MySQL, make sure the MNMarketLink database is created with schema.sql and has the data from data.sql loaded.

2. Install Python, be sure to check “Add Python to PATH” during installation: https://www.python.org/downloads/

3. Create a project folder and place the following files from the "MNMarketLinkApp" folder from this repository inside, make sure you're inside this project folder in your IDE.
   - mnmarketlink.py
   - db_config_example.py
   - requirements.txt

5. In your IDE with the project folder open, open the Terminal and run this command to install required packages:

   > python -m pip install -r requirements.txt

   (If that command doesn't work, try using "py" instead of "python")

6. Create a file named db_config.py, and copy the contents of db_config_example.py into it. You'll need to change the username and password to be your own MySQL login.

7. Run this command in your terminal to open the program in your browser (ignore the pop-up that appears):

   > python -m streamlit run mnmarketlink.py

   (If that command doesn't work, try using "py" instead of "python")

