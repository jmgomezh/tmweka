#!/bin/bash

# Apply the AttributeSelection filter to the datasets in the LangID example

java weka.filters.supervised.attribute.AttributeSelection -c 1 -E weka.attributeSelection.InfoGainAttributeEval -S "weka.attributeSelection.Ranker -T 0.0" -b -i langid.collection.train.vector.arff -o langid.collection.train.vector.ig0.arff -r langid.collection.test.vector.arff -s langid.collection.test.vector.ig0.arff