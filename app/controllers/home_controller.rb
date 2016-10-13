class HomeController < ApplicationController
  def index
  end

  def about
  end

  def calendar
  end

  def faqs
    # page variables
      @page_header = 'AsK aWaY?'
  end

  def contact
  # page variables
    @page_header = 'Leave a Message'
  end
end
