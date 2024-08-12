module ApplicationHelper
  def quote_of_the_day
    quotes = [
      { text: "The only way to do great work is to love what you do.", author: "Steve Jobs" },
        { text: "Life is what happens when you're busy making other plans.", author: "John Lennon" },
        { text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt" },
        { text: "Strive not to be a success, but rather to be of value.", author: "Albert Einstein" },
        { text: "The best way to predict the future is to create it.", author: "Peter Drucker" },
        { text: "The only impossible journey is the one you never begin.", author: "Tony Robbins" },
        { text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt" },
        { text: "Do not wait to strike till the iron is hot, but make it hot by striking.", author: "William Butler Yeats" },
        { text: "In three words I can sum up everything I've learned about life: it goes on.", author: "Robert Frost" },
        { text: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky" },
        { text: "The best revenge is massive success.", author: "Frank Sinatra" },
        { text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau" },
        { text: "Opportunities don't happen. You create them.", author: "Chris Grosser" },
        { text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", author: "Roy T. Bennett" },
        { text: "You only live once, but if you do it right, once is enough.", author: "Mae West" },
        { text: "The purpose of our lives is to be happy.", author: "Dalai Lama" },
        { text: "Life is what happens when you're busy making other plans.", author: "John Lennon" },
        { text: "The way to get started is to quit talking and begin doing.", author: "Walt Disney" },
        { text: "You do not find the happy life. You make it.", author: "Camilla E. Kimball" },
        { text: "Happiness is not something ready made. It comes from your own actions.", author: "Dalai Lama" },
        { text: "It does not matter how slowly you go as long as you do not stop.", author: "Confucius" },
        { text: "The only limit to our realization of tomorrow is our doubts of today.", author: "Franklin D. Roosevelt" },
        { text: "Do what you can, with what you have, where you are.", author: "Theodore Roosevelt" },
        { text: "You can never cross the ocean until you have the courage to lose sight of the shore.", author: "Christopher Columbus" },
        { text: "The best time to plant a tree was 20 years ago. The second best time is now.", author: "Chinese Proverb" },
        { text: "Act as if what you do makes a difference. It does.", author: "William James" },
        { text: "Success is not in what you have, but who you are.", author: "Bo Bennett" },
        { text: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill" },
        { text: "The only person you are destined to become is the person you decide to be.", author: "Ralph Waldo Emerson" },
        { text: "Don’t watch the clock; do what it does. Keep going.", author: "Sam Levenson" },
        { text: "The only place where success comes before work is in the dictionary.", author: "Vidal Sassoon" },
        { text: "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.", author: "Christian D. Larson" },
        { text: "Don’t be afraid to give up the good to go for the great.", author: "John D. Rockefeller" },
        { text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis" },
        { text: "The mind is everything. What you think you become.", author: "Buddha" },
        { text: "Life is short, and it is up to you to make it sweet.", author: "Sarah Louise Delany" },
        { text: "The best way to find yourself is to lose yourself in the service of others.", author: "Mahatma Gandhi" },
        { text: "To live a creative life, we must lose our fear of being wrong.", author: "Joseph Chilton Pearce" },
        { text: "In order to succeed, we must first believe that we can.", author: "Nikos Kazantzakis" },
        { text: "You have within you right now, everything you need to deal with whatever the world can throw at you.", author: "Brian Tracy" },
        { text: "The only way to achieve the impossible is to believe it is possible.", author: "Charles Kingsleigh" },
        { text: "Start where you are. Use what you have. Do what you can.", author: "Arthur Ashe" },
        { text: "You are not your resume, you are your work.", author: "Seth Godin" },
        { text: "Do what you love, love what you do.", author: "Wayne W. Dyer" },
        { text: "Success is walking from failure to failure with no loss of enthusiasm.", author: "Winston Churchill" },
        { text: "The only way to make sense out of change is to plunge into it, move with it, and join the dance.", author: "Alan Watts" },
        { text: "The best way out is always through.", author: "Robert Frost" },
        { text: "It is never too late to be what you might have been.", author: "George Eliot" },
        { text: "The only limit to our realization of tomorrow is our doubts of today.", author: "Franklin D. Roosevelt" },
        { text: "The best revenge is massive success.", author: "Frank Sinatra" },
        { text: "Don't watch the clock; do what it does. Keep going.", author: "Sam Levenson" },
        { text: "Life is what happens when you're busy making other plans.", author: "John Lennon" },
        { text: "The best way to predict the future is to create it.", author: "Peter Drucker" },
        { text: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky" },
        { text: "Do what you can, with what you have, where you are.", author: "Theodore Roosevelt" },
        { text: "Act as if what you do makes a difference. It does.", author: "William James" },
        { text: "The only person you are destined to become is the person you decide to be.", author: "Ralph Waldo Emerson" },
        { text: "The only way to do great work is to love what you do.", author: "Steve Jobs" },
        { text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis" },
        { text: "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.", author: "Christian D. Larson" },
        { text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt" },
        { text: "Success is not in what you have, but who you are.", author: "Bo Bennett" },
        { text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau" },
        { text: "You can never cross the ocean until you have the courage to lose sight of the shore.", author: "Christopher Columbus" },
        { text: "The only limit to our realization of tomorrow is our doubts of today.", author: "Franklin D. Roosevelt" },
        { text: "Opportunities don't happen. You create them.", author: "Chris Grosser" },
        { text: "Do not wait to strike till the iron is hot, but make it hot by striking.", author: "William Butler Yeats" },
        { text: "The only impossible journey is the one you never begin.", author: "Tony Robbins" },
        { text: "You do not find the happy life. You make it.", author: "Camilla E. Kimball" },
        { text: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill" },
        { text: "The only way to achieve the impossible is to believe it is possible.", author: "Charles Kingsleigh" },
        { text: "Start where you are. Use what you have. Do what you can.", author: "Arthur Ashe" },
        { text: "You are not your resume, you are your work.", author: "Seth Godin" },
        { text: "Do what you love, love what you do.", author: "Wayne W. Dyer" }
    ]
    
    # Use the current date to select a quote, ensuring it changes daily
    quotes[Date.today.yday % quotes.length]
  end

end