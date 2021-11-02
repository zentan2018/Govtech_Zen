import pandas as pd
import glob

#Helper functions for preprocessing

#This function takes in the whole name and returns the first name
def first_name(name):
    return name.split()[0]

#This function takes in the whole name and returns the last name
def last_name(name):
    return name.split()[1]

# This function takes in the price and returns true if > 100 and false if < 100
def above_100(price):
    if float(price) > 100:
        return True
    return False

# This function removes prepended zero
def remove_prepended_zero(price):
    price = float(price)
    return str(price)

# Importing all the Data
all_files = glob.glob( "Data/*.csv")
all_df = {}

# all datasets will be stored as dataframe in the all_df dictionary
for i in range(len(all_files)):
    file = all_files[i]
    file_name = file.split('.')[0].split('/')[-1]
    all_df[file_name] = pd.read_csv(file, encoding = 'unicode_escape')

# preprocessing for all the dataset
for df in list(all_df):
    #dropping all rows of df which do not have a name
    all_df[df].dropna(subset=['name'], inplace=True)
    
    #creating first name column
    all_df[df]['first_name'] = all_df[df]['name'].apply(first_name)

    #creating last name column
    all_df[df]['last_name'] = all_df[df]['name'].apply(last_name)
    
    #creating above_100 column
    all_df[df]['above_100'] = all_df[df]['price'].apply(above_100)
    
    #removing prepended 0 from price
    all_df[df]['price'] = all_df[df]['price'].apply(remove_prepended_zero)
    
# Saving the preprocessed dataset
for df in list(all_df):
    all_df[df].to_csv("Data_preprocessed/" + df + "_preprocessed.csv", index=False)