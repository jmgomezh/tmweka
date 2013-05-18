#!/bin/bash

# Apply the StringToWordVector filter to the datasets in the LangID example

java weka.filters.unsupervised.attribute.StringToWordVector -O -L -tokenizer "weka.core.tokenizers.WordTokenizer -delimiters \" \\r\\n\\t.,;:\\\"\\'()?!-¿¡+*&#$%\\\\/=<>[]_`@\"" -W 10000000 -b -i langid.collection.train.arff -o langid.collection.train.vector.arff -r langid.collection.test.arff -s langid.collection.test.vector.arff