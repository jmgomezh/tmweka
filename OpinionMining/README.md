OpinionMining
=============

An example of Sentiment Analysis with Text Mining in WEKA.

For more information, check <a href="http://www.esp.uem.es/jmgomez/tmweka">Text Mining in WEKA Cookbook</a> and the post <a href="http://jmgomezhidalgo.blogspot.com.es/2013/06/baseline-sentiment-analysis-with-weka.html">Baseline Sentiment Analysis with WEKA</a>.

The datasets posted in this folder are crafted from the <a href="http://www.sfu.ca/~mtaboada/research/SFU_Review_Corpus.html">SFU Review Corpus</a>. Please refer to its page for all credits.

Simple example code
-------------------

1. Run the `learn.sh` script to generate the model for the English language collection.

2. Compile the `SentimentClassifier.java` class with:

    ```
	javac SentimentClassifier.java
	```

3. Test the `SentimentClassifier` class with:

    ```
	java SentimentClassifier caryes1.txt smo.model.dat
    java SentimentClassifier carno1.txt smo.model.dat
	```
	
Things you can change easily
----------------------------

Edit the script to:

1. Change the size of the n-grams used, by seting `-min` and `-max` options in the `learn.sh` script. For instance, you can use bigrams to 4-grams by setting `-min 2 -max 4`. The longer the n-grams, the slower the training process will be. It will use more memory as well. HINT: Make use of JVM `-X` options to increase the heap space.

2. Change the learning algorithm, by setting the `-W` option in the `learn.sh` script. For instance, you can choose to use the Naive Bayes algorithm by setting `-W weka.classifiers.bayes.NaiveBayes`. HINT: If you need to set specific options for the learning algorithm, make use of the `--` separator at the end of the java invocation line.