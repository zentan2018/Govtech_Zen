# DSAID Data Engineering Technical Test

This test is split into 5 sections, **data pipelines**, **databases**, **system design**, **charts & APIs**, **machine learning**. 


## Section 1: Data Pipelines

Section 1 of the test was conducted using python and cron. The preprocessing job would be run everyday at 1am with the cron job using the following preprocessing steps found in the **README** file under section 1. The detailed explaination could be found there.


## Section 2: Databases

Section 2 of the test was conducted using docker and postgres. The set up could be run following the instructions of the **README** file under section 2. Solutions of the SQL Query using sample data could also be found there.


## Section 3: System Design

The deliverable of this section are saved in PDF with a brief explaination of the services used in the solution diagram.


## Section 4: Charts and APIs

This section shows the visualisation of the **total number of cases in Singapore over a time period**. The data was retrieved from https://covid19api.com/ and displayed as an interactive chart using the python plotly library. This can be viewed the in `Section4/section 4.ipynb` or PDF which consist of the non interactive chart. There will be no readme in this section.


## Section 5: Machine Learning

This section shows a machine learning pipeline using dataset obtained from https://archive.ics.uci.edu/ml/datasets/Car+Evaluation. A machine learning model was created to predict the buying price given the following parameters:
- Maintenance = High
- Number of doors = 4
- Lug Boot Size = Big
- Safety = High
- Class Value = Good

This can be viewed the in `Section5/section5.ipynb` or PDF which consist of the entire machine learning pipeline. There will be no readme in this section.

