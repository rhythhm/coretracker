class GraphsController < ApplicationController
  def index
    @data = [
      {name: "Current Year Sales", data: CoreTrackerTemplate.group(:style).sum(:cy_saleqty)},
      {name: "Previous Year Sales", data: CoreTrackerTemplate.group(:style).sum(:py_saleqty)}
    ]
    #if user_signed_in?
      #@title = "User signed in."
    #else
      #@title = "User not signed in."
    #end
  end
end
