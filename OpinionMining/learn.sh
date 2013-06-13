#!/bin/bash

# Learn the model for the Semtiment Analysis problem with StringToWordVector, NGRamTokenizer, AttributeSelection and SMO
	
java weka.classifiers.meta.FilteredClassifier -t SFU_Review_Corpus.arff -no-cv -d smo.model.dat -v -F "weka.filters.MultiFilter -F \"weka.filters.unsupervised.attribute.StringToWordVector -O -tokenizer \\\"weka.core.tokenizers.NGramTokenizer -delimiters \\\\\\\"\\\\\\\W\\\\\\\" -min 1 -max 3\\\" -W 10000000\" -F \"weka.filters.supervised.attribute.AttributeSelection -E weka.attributeSelection.InfoGainAttributeEval -S \\\"weka.attributeSelection.Ranker -T 0.0\\\"\"" -W weka.classifiers.functions.SMO
	
	