from bottle import route, run, static_file 

@route('/hello')
def hello():
    return 'hello from python!'

@route('/index')
def index():
    return static_file('C:/projects/helloworld/index.html', root="")

run(host='localhost', port=8080)
