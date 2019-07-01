# utl-runing-a-python-function-inside-your-drop-down-to-r
Runing a python function inside your drop down to r
    SAS Forum: Including a long r script within your sas drop down to r code                                          
                                                                                                                      
    Should also work with SAS/IML/R                                                                                   
                                                                                                                      
    github                                                                                                            
    https://tinyurl.com/y57vpd8w                                                                                      
    https://github.com/rogerjdeangelis/utl-including-a-long-r-script-within-your-drop-down-r-code                     
                                                                                                                      
    SAS Forum                                                                                                         
    https://tinyurl.com/y5abf8zm                                                                                      
    https://communities.sas.com/t5/SAS-IML-Software-and-Matrix/Running-R-file-within-IML/m-p/570125                   
                                                                                                                      
    *_                   _                                                                                            
    (_)_ __  _ __  _   _| |_                                                                                          
    | | '_ \| '_ \| | | | __|                                                                                         
    | | | | | |_) | |_| | |_                                                                                          
    |_|_| |_| .__/ \__,_|\__|                                                                                         
            |_|                                                                                                       
    ;                                                                                                                 
                                                                                                                      
    filename ft15f001 "d:\r\sample.r";                                                                                
    parmcards4;                                                                                                       
    x<-2                                                                                                              
    y<-x+2                                                                                                            
    x                                                                                                                 
    ;;;;                                                                                                              
    run;quit;                                                                                                         
                                                                                                                      
    *            _               _                                                                                    
      ___  _   _| |_ _ __  _   _| |_                                                                                  
     / _ \| | | | __| '_ \| | | | __|                                                                                 
    | (_) | |_| | |_| |_) | |_| | |_                                                                                  
     \___/ \__,_|\__| .__/ \__,_|\__|                                                                                 
                    |_|                                                                                               
    ;                                                                                                                 
                                                                                                                      
    > source("d:/r/sample.r",echo=T);                                                                                 
                                                                                                                      
    > x <- 2                                                                                                          
                                                                                                                      
    > y <- x + 2                                                                                                      
                                                                                                                      
    > x                                                                                                               
    [1] 2                                                                                                             
                                                                                                                      
    *          _       _   _                                                                                          
     ___  ___ | |_   _| |_(_) ___  _ __                                                                               
    / __|/ _ \| | | | | __| |/ _ \| '_ \                                                                              
    \__ \ (_) | | |_| | |_| | (_) | | | |                                                                             
    |___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                             
                                                                                                                      
    ;                                                                                                                 
                                                                                                                      
    * turn echo off to run silently;                                                                                  
    %utl_submit_r64(%tslit(                                                                                           
      source("d:/r/sample.r",echo=T);                                                                                 
    ));                                                                                                               
                                                                                                                      
                                                                                                                      
    %let pgm=utl-runing-a-python-function-inside-your-drop-down-to-r;-                                                
                                                                                                                      
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
                                                                                                                      
