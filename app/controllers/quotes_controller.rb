class QuotesController < Rulers::Controller
  def a_quote
    # "There is nothing either good or bad " +
    #   "but thinking makes it so. #{[1,2,3].hello}" +
    #   "\n<pre>\n#{env}\n<pre>"
    render :a_quote, noun: :winking
  end

  def exception
    raise "It's a bad one!"
  end

  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, obj: quote_1
  end
end
