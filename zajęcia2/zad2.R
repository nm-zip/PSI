install.packages("wordcloud")
install.packages("qdap")

library(wordcloud)
library(qdap)
text <- readLines(file.choose())
text
frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)


wordcloud(frequent_terms$WORD, frequent_terms$FREQ)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))

