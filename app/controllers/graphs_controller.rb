class GraphsController < ApplicationController
  def index
    @data = [
      {name: "Current Year Sales", data: CoreTrackerTemplate.group(:style).sum(:cy_saleqty)},
      {name: "Previous Year Sales", data: CoreTrackerTemplate.group(:style).sum(:py_saleqty)}
    ]
  end
end
