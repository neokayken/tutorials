Getting started flask
----

- Install Python in short

first you need a python installed. 
Many Linux distributions and MacOS have it but for Windows you need to install it yourself.
it is easy you go to Python Website and click download and then install it.

- Virtual Environment

it is better to have a virtual environment. there are several python virtual environment you can choose from. 
but simply venv comes with the basic python packages it is recommended since python version 3.3.
conda is a good choice too. if you look for a lightweight virtual environment miniconda would be resonable.
version control in conda is good as well.

Some wants to dockerize it. it is fine to docker it. 
what matters is to contain the runtime and version control.

- start flask

to start flask

```
pip install Flask
```

to check if flask works go to python interactive mode and type

```
import flask
flask.__version__
```

you see a flask version it is ready
exit it out and create a text file like this below

```python
from flask import Flask
 
print('[Hello, Flask!]')
app = Flask(__name__)
 
@app.route('/')
def index():
    return 'Hello, Flask!'
 
if __name__ == '__main__':
    app.run(debug=True)
```

run the file with python and server will start

```
Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

you see the console message like this
open a webbrowser put the URL, you see 'Hello, Flask!' text
it shows everything is set to go.
it is a relatively easy job compared to other languages and frameworks
that is why python so popular also flask.


