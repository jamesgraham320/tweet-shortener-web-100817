# Write your code here.
def dictionary(word)
  substituter = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  word = substituter[word.downcase] if substituter.keys.include?(word.downcase)
  word

end

def word_substituter(tweet)
  tweet_array = []
  tweet.split(" ").collect do |word|
    tweet_array << dictionary(word)
  end
  tweet_array.join(" ")

end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.collect {|tweet|
    short_tweet = word_substituter(tweet)
    puts short_tweet
  }
end
    

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator (tweet)
  return_tweet = word_substituter(tweet)
  if return_tweet.length > 140
    return_tweet = return_tweet[0..136] << "..."
  end
  return_tweet
end
