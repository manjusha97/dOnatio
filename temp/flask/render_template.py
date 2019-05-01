from flask import Flask, render_template

appln = Flask(__name__)

@appln.route('/hello/<int:name>')
def hello(name):
	return render_template('hello.html', name = name)

@appln.route('/result')
def table():
	dic = {'mat' : 25, 'phy' : 30, 'chem' : 29}
	return render_template('result.html', result = dic)

if __name__ == '__main__':
	appln.run(debug = True)