# DSAID Data Engineering Technical Test

This test is split into 5 sections, **data pipelines**, **databases**, **system design**, **charts & APIs**, **machine learning**. 

## Section 1: Data Pipelines

Section 1 of the test was conducted using python and cron. The preprocessing job would be run everyday at 1am with the cron job using the following preprocessing steps found below. 

### Preprocessing
The following preprocessing task could be found in the `section1.py` script containing the following preprocessing steps:

- Split the name field into first_name, and last_name
- Remove any zeros prepended to the price field
- Delete any rows which do not have a name
- Create a new field named above_100, which is true if the price is strictly greater than 100
- Saving the dataset into CSV. The preproccesed CSV would be stored with **preprocessed** appended to the csv name

### Cron for scheduling
The following steps was utilized to setup the cron script to run the preprocessing daily at 1am. the pattern `01***` is used to let the scheduler know to run the preprocessing at 1am everyday. 
1. Obtain **python3** and **preprocessing python script** working directory using your terminal
    - `which python3` would give you the working directory of python3
    - navigate to the same directory as the **section1**.**py** folder and execute `pwd`

2. Edit the cron file 
    - `crontab -e` which will open a vim editor. From the editor, click on `i` from your keyboard to edit the file.
    - Include the following line into the vim editor
    `0 1 * * * <python3 path> <preprocessing path>` an example of the full pattern is found below
    `0 1 * * * /usr/local/bin/python3 /Users/zentan/Documents/GitHub/Govtech/Section1/section1.py`
    - once done, press the `esc` key to exit the insert mode and save the file by using the following keys `:wq`
    - To verify that the file was saved successfully, use `crontab -l` to see your scheduled job
    - you should see the file you just created


## Section 2: Databases
You are appointed by a car dealership to create their database infrastructure. There is only one store. In each business day, cars are being sold by a team of salespersons. Each transaction would contain information on the date and time of transaction, customer transacted with, and the car that was sold. 

The following are known:
- Each car can only be sold by one salesperson.
- There are multiple manufacturers’ cars sold.
- Each car has the following characteristics:
- Manufacturer
- Model name
- Serial number
- Weight
- Price

Each sale transaction contains the following information:
- Customer Name
- Customer Phone
- Salesperson
- Characteristics of car sold

Set up a PostgreSQL database using the base `docker` image [here](https://hub.docker.com/_/postgres) given the above. We expect at least a `Dockerfile` which will stand up your database with the DDL statements to create the necessary tables. Produce entity-relationship diagrams as necessary to illustrate your design.

Your team also needs you to query some information from the database that you have designed. You are tasked to write a `sql` statement for each of the following task:

1) I want to know the list of our customers and their spending.

2) I want to find out the top 3 car manufacturers that customers bought by sales (quantity) and the sales number for it in the current month.

## Section 3: System Design
You are designing data infrastructure on the cloud for a company whose main business is in processing images. 

The company has a web application which collects images uploaded by customers. The company also has a separate web application which provides a stream of images using a Kafka stream. The company’s software engineers have already some code written to process the images. The company  would like to save processed images for a minimum of 7 days for archival purposes. Ideally, the company would also want to be able to have some Business Intelligence (BI) on key statistics including number and type of images processed, and by which customers.

Produce a system architecture diagram (e.g. Visio, Powerpoint) using any of the commercial cloud providers' ecosystem to explain your design. Please also indicate clearly if you have made any assumptions at any point.

## Section 4: Charts and APIs
Your team decided to design a dashboard to display the statistic of COVID19 cases. You are tasked to display one of the components of the dashboard which is to display a visualisation representation of number of COVID19 cases in Singapore over time. 

Your team decided to use the public data from https://documenter.getpostman.com/view/10808728/SzS8rjbc#b07f97ba-24f4-4ebe-ad71-97fa35f3b683.

Display a graph to show the number cases in Singapore over time using the APIs from https://covid19api.com/.

*Note: please submit screenshots of the dashboard and also export your notebook as pdf (if you are using python).*

## Section 5: Machine Learning
Using the dataset from https://archive.ics.uci.edu/ml/datasets/Car+Evaluation, create a machine learning model to predict the buying price given the following parameters:

- Maintenance = High
- Number of doors = 4
- Lug Boot Size = Big
- Safety = High
- Class Value = Good

*Note: please also export and submit your notebook as pdf.*
