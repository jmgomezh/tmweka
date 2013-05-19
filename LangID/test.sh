#!/bin/bash

# Train and test sevearl classifiers on the LangID problem

java weka.classifiers.bayes.NaiveBayes -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > NB.txt

java weka.classifiers.rules.PART -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > PART.txt

java weka.classifiers.trees.J48 -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > J48.txt

java weka.classifiers.lazy.IBk -K 1 -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > IB1.txt

java weka.classifiers.lazy.IBk -K 3 -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > IB3.txt

java weka.classifiers.lazy.IBk -K 5 -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > IB5.txt

java weka.classifiers.functions.SMO -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > SMO.txt

java weka.classifiers.meta.AdaBoostM1 -W weka.classifiers.bayes.NaiveBayes -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > ADANB.txt

java weka.classifiers.meta.AdaBoostM1 -W weka.classifiers.trees.J48 -no-cv -i -t langid.collection.train.vector.ig0.arff -T langid.collection.test.vector.ig0.arff > ADANB.txt
