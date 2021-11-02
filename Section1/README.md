## Detailed Write Up Section 1: Data Pipelines

Section 1 of the test was conducted using python and cron. The preprocessing job would be run everyday at 1am with the cron job using the following preprocessing steps found below. 

### Preprocessing
The following preprocessing task could be found in the `Section1/section1.py` script containing the following preprocessing steps:

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

