#!/bin/bash

# Learn the model fot the LangID problem with StringToWordVector, AttributeSelection and SMO
	
# java weka.classifiers.meta.FilteredClassifier 
	# -t langid.collection.train.arff 
	# -c first
	# -no-cv
	# -d smo.model.dat
	# -v
	# -F
		# "
			# weka.filters.MultiFilter
				# -F 
					# \"
						# weka.filters.unsupervised.attribute.StringToWordVector
						# -O
						# -L 
						# -tokenizer 
							# \\\"
								# weka.core.tokenizers.WordTokenizer
								# -delimiters
									# \\\\\\\"
									 # \\\\\\\r\\\\\\\n\\\\\\\t.,;:\\\\\\\\\\\\\\\"'()?!-¿¡+*&#$%/=<>[]_`@
									# \\\\\\\"
							# \\\"
						# -W 10000000
					# \"
				# -F
					# \"
						# weka.filters.supervised.attribute.AttributeSelection
						# -E weka.attributeSelection.InfoGainAttributeEval
						# -S 
						 	# \\\"
							# weka.attributeSelection.Ranker -T 0.0
							# \\\"
					# \"
		# "
	# -W weka.classifiers.functions.SMO
	
java weka.classifiers.meta.FilteredClassifier -t langid.collection.train.arff -c first -no-cv -d smo.model.dat -v -F "weka.filters.MultiFilter -F \"weka.filters.unsupervised.attribute.StringToWordVector -O -L -tokenizer \\\"weka.core.tokenizers.WordTokenizer -delimiters \\\\\\\" \\\\\\\r\\\\\\\n\\\\\\\t.,;:\\\\\\\\\\\\\\\"'()?!-¿¡+*&#$%/=<>[]_`@\\\\\\\"\\\" -W 10000000\" -F \"weka.filters.supervised.attribute.AttributeSelection -E weka.attributeSelection.InfoGainAttributeEval -S \\\"weka.attributeSelection.Ranker -T 0.0\\\"\"" -W weka.classifiers.functions.SMO
	
	