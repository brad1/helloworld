# readme
# Python 3.6.3
# mongo 3.4.7
# pymongo 3.5.1
# bottle 0.12.13


from bottle  import route, run, static_file 
from pymongo import MongoClient
import os

@route('/hello')
def hello():
    return 'hello from python!'

@route('/mongo')
def mongo_function():
    mongo = MongoClient('mongodb://localhost:27017/')
    msg = "hello from mongo! databases : " + str(mongo.database_names())
    print(msg)
    return msg

@route('/index.html')
def index():
    return static_file('C:/projects/helloworld/index.html', root="")

@route('/angular.html')
def angular():
    return static_file('C:/projects/helloworld/angularjs/angular.html', root="")

@route('/test.html')
def test():
    return static_file('C:/projects/helloworld/test.html', root="")

run(host='localhost', port=8080)
