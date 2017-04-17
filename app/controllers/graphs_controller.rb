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
 # @data kya hai?? Variable,Yeh vaala.. ahh I was looking for that missed it :P :P. So graphs done!! Next kya hain?
 #pivot ke tables jo export karna hai and decimal places wala kaam. Let's do the decimal ka issue. Okay range planner me hai. ahh isme bhiii. Basicallly, jahan jahan calculations hue hain. Haan, karte hain.