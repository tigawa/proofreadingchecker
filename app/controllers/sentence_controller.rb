class SentenceController < ApplicationController
  def index
    @results = Array.new
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def check
  	@sentende = params[:sentence]
  	@results = Yahoo::Proofreading.make(@sentende).css("Result")

    respond_to do |format|
      format.html { render action: "index" }
    end
  end
end
