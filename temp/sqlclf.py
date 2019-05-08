#!/usr/bin/env python
# coding: utf-8

# In[360]:


# import data from sql and classify it

# import sql module
import mysql.connector

# create connection with the database
mydb = mysql.connector.connect(
    host= "localhost",
    user="root",
    passwd="",
    database="donatio"
)


# In[361]:


# get a cursor for the database to execute all the queries.

# This cursor will fetch the entire dataset from the database donatio
cursor = mydb.cursor()

# Execute the query to fetch data
cursor.execute("select donorQuant, organizationQuant, dist, label from data")

# Features will contain list of [donorQuant, orgQuant, dist]
features= []
# Label will contain the matching
label = []

# Assign the second, third and fourth column values to features as a list
# and the fifth column to label. Note that indexing starts from 0
for i in cursor:
    features.append([i[0],i[1], i[2]])
    label.append(i[3])

# Prints the values of Features and Labels
print('Total number of features : ', len(features))

# Split dataset into training and testing
# Using train_test_split
from sklearn.model_selection import train_test_split

# takes features,labels and ratio of training data and testing data as parameters and
# returns two sets of features and lebels for training and testing
# trainFeatures: contains all the attributes for training part
# testFeatures: contains all the attributes for testing part
# trainLabel: contains the classes of predictions whether there is a mtch or not
# testLabel: contains label for testing
trainFeatures, testFeatures, trainLabel, testLabel = train_test_split(features, label, test_size=0.2, shuffle=True)

# Print all the above values
print('Length of training dataset: ', len(trainFeatures))
print('Length of testing dataset: ', len(testFeatures))


# In[362]:


# Import the classifier, in this case SVM
from sklearn import svm

# Create the classifier
# SVM classifier has the parameters gamma, C, kernel
# Kernel values can be linear, rbf
# Linear will separate the using a line
# rbf will separate using a curve
clf = svm.SVC(kernel='rbf', gamma='scale')

# Fit the dataset into the classifier using the fit() method.
# It takes two parameters the features (X part) and its predictions (Y part)
clf.fit(trainFeatures, trainLabel)

# Test the classifier using predict() method
# it takes a list of features as input and 
# produces a list of corresponding predictions
pred = clf.predict(testFeatures)
for i in range(len(testFeatures)):
    print(testFeatures[i], testLabel[i], pred[i])


# In[363]:


# Get the score calculator for accuracy
from sklearn.metrics import accuracy_score

# accuracy_score() takes two parameters actual values of labels and the prediction
# compares these two values and tells how many predictions are correct
score = accuracy_score(testLabel, pred)
print(score)


# In[364]:


from sklearn.naive_bayes import GaussianNB
nbclf = GaussianNB()


# In[365]:


nbclf.fit(trainFeatures, trainLabel)


# In[366]:


nbpred = nbclf.predict(testFeatures)
for i in range(len(testFeatures)):
    print(testFeatures[i], testLabel[i], nbpred[i])


# In[367]:


nbscore = accuracy_score(testLabel, nbpred)
print(nbscore)


# In[ ]:





# In[ ]:




