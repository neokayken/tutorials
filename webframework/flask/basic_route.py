from flask import Flask

print('[Hello, Flask!]')
app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello, Flask!'

@app.route('/<name>')
def hello(name):
    return 'Hello, %s' % name

@app.route('/blog/<int:postID>')
def show_blog(postID):
    return 'Blog Number %d' % postID
# app.add_url_rule('/')

@app.route('/rev/<float:revNo>')
def revision(revNo):
    return 'Revision Number %f' % revNo

if __name__ == '__main__':
    app.run(debug=True)
