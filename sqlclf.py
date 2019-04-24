# import data from sql and classify it
import mysql.connector
mydb = mysql.connector.connect(
    host= "localhost",
    user="root",
    passwd="",
    database="donatio"
)
cursor = mydb.cursor()
cursor.execute("select * from data")
features= []
label = []
for i in cursor:\n",
    features.append([i[1],i[2], i[3]])
    label.append(i[4])
print(features)
print(label)
from sklearn import svm
clf = svm.SVC(kernel='linear')
clf.fit(features, label)
pred = clf.predict([[5, 15, 20]])
print(pred)