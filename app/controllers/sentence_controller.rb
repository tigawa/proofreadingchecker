class SentenceController < ApplicationController
  def check

  	@sentende = params[:sentence]

  	p @sentende

  	@results = Yahoo::Proofreading.make(@sentende).css("Result")
  end

  p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  p @results
  p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

  respond_to do |format|
      format.html # new.html.erb
  end
end
