Runing a python function inside your drop down to r                                                             
                                                                                                                
Should work in SAS/IML/R                                                                                        
                                                                                                                
github                                                                                                          
https://tinyurl.com/y3ghtot3                                                                                    
https://github.com/rogerjdeangelis/utl-runing-a-python-function-inside-your-drop-down-to-r                      
                                                                                                                
SackOverFlow                                                                                                    
https://tinyurl.com/y2lnthxt                                                                                    
https://stackoverflow.com/questions/56786507/is-it-possible-to-integrate-a-python-function-in-a-r-script        
                                                                                                                
LFischer profile                                                                                                
https://stackoverflow.com/users/7185997/lfischer                                                                
                                                                                                                
*_                   _                                                                                          
(_)_ __  _ __  _   _| |_                                                                                        
| | '_ \| '_ \| | | | __|                                                                                       
| | | | | |_) | |_| | |_                                                                                        
|_|_| |_| .__/ \__,_|\__|                                                                                       
        |_|                                                                                                     
;                                                                                                               
                                                                                                                
filename ft15f001 "d:/py/sample.py";                                                                            
parmcards4;                                                                                                     
def useful_function(x):                                                                                         
    return x *2                                                                                                 
;;;;                                                                                                            
run;quit;                                                                                                       
                                                                                                                
*            _               _                                                                                  
  ___  _   _| |_ _ __  _   _| |_                                                                                
 / _ \| | | | __| '_ \| | | | __|                                                                               
| (_) | |_| | |_| |_) | |_| | |_                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                               
                |_|                                                                                             
;                                                                                                               
                                                                                                                
LOG                                                                                                             
                                                                                                                
> library(reticulate);                                                                                          
> use_python("c:/python27");                                                                                    
> source_python("d:/py/sample.py");                                                                             
> result <- useful_function(2);                                                                                 
> print(result);                                                                                                
                                                                                                                
[1] 4                                                                                                           
                                                                                                                
*                                                                                                               
 _ __  _ __ ___   ___ ___  ___ ___                                                                              
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                             
| |_) | | | (_) | (_|  __/\__ \__ \                                                                             
| .__/|_|  \___/ \___\___||___/___/                                                                             
|_|                                                                                                             
;                                                                                                               
                                                                                                                
%utl_submit_r64(%tslit(                                                                                         
library(reticulate);                                                                                            
use_python("c:/python27");                                                                                      
source_python("d:/py/sample.py");                                                                               
result <- useful_function(2);                                                                                   
print(result);                                                                                                  
));                                                                                                             
                                                                                                                
*_                                                                                                              
| | ___   __ _                                                                                                  
| |/ _ \ / _` |                                                                                                 
| | (_) | (_| |                                                                                                 
|_|\___/ \__, |                                                                                                 
         |___/                                                                                                  
;                                                                                                               
                                                                                                                
> library(reticulate);                                                                                          
use_python("c:/python27");                                                                                      
source_python("d:/py/sample.py");                                                                               
result <- useful_function(2); print(result);                                                                    
[1] 4                                                                                                           
>                                                                                                               
