# ft_linear_regression project

I. Description:
    
    * folder data is consist:
        - data.csv file with data set (this file is input data for the project)
        - train_out.yaml (out file wich crate by train mode)
    * folder bin is consist pre-build executeble files of:
        - train part of project
        - predict part of project
    * folder graph
    
II. Make commands:
    
    * make - build project:
        - build train executeble
        - build predict executeble
        - build docker image with all needed dependencies
    * make run:
        - run docker image project
        
III. CLI commands:
    
    1. CLI Train:
        * help
        * train
        * view
    
    2. CLI Predict:
        * help
        * predict
        
    3. Common flags:
        * --h help for app
        * --t read target
        * --i read independent variable

    
    
