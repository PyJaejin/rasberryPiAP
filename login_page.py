from bottle import get, post, request, run
import subprocess

@get('/login')
def login():
    return '''
        <form action="/login" method="post">
            SSID : <input name="ssid" type="text" />
            Password : <input name="passwd" type="text" />
            <input value="Connect" type="submit" />
        </form>
    '''

@post('/login')
def do_login():
    ssid = request.forms.get('ssid')
    passwd = request.forms.get('passwd')
    cmd = "~/jPi/login_connect.sh " + ssid + " " + passwd
    subprocess.call(cmd, shell=True)

run(host='172.24.1.1', port=8080)
