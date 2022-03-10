from flask import Flask, redirect, url_for, abort, request

print('[--- Flask Test ---]')
app = Flask(__name__)

@app.route('/nametest/<username>')
@app.route('/nametest/')
def hello_name(username=None):
    if username is None:
        username = request.args.get('name')
        print('none %s' % username)
        return 'none hello name %s' % username
    else:
        abort(404)


@app.route('/admin')
def hello_admin():
    return 'Hello Admin'

@app.route('/guest/<g>')
def hello_guest(g):
    return 'Hello %s as Guest' % g

@app.route('/user/<name>')
def hello_user(name):
    if name == 'admin':
        return redirect(url_for('hello_admin'))
    else:
        return redirect(url_for('hello_guest', guest=name))

if __name__ == '__main__':
    app.run(debug=True)
