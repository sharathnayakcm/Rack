# Rack
**This is basic example for Rack application**

I have create 3 rack application

1. RackApp (application.rb)

    This Rack application will displays the user IP address
2. FilterLocalHost (filter_local_host.rb)

    This Rack application will check user is calling this method from localhost or not
    if localhost then call other Rack application or display 403 error 
3. LoggingMiddleware (logging_middleware.rb)

    Once the user is in localhost,then this Rack application is called 
    This Rack application will add the Sleep for 2 seconds  and logs the time taken to body


I have  define all these 3 rack file in a
 ```
 config.ru 
 ```
 file which is a Rack specific (.ru stands for "rackup") file, 
which we can then run directly through the rack gem's executable:


## How to run this application

***prerequest***
```
gem install rack 
gem install thin
or 
gem install puma
```


Open this folder in the terminal and run following command 

```
rackup 
```

after this you will see the server is running and the port will be displayed in terminal like below 
```
Listening on http://127.0.0.1:9292

```

open the URL  in browser which is displayed in the terminal and you will see rack application

