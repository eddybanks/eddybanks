class HomeController < ApplicationController
  def index
    # render layout: false
  end

  def about
    # page variables
      @page_header = 'About Me!'
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
