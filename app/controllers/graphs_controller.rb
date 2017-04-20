class GraphsController < ApplicationController
  def index
    current_sales = CoreTrackerTemplate.group(:style).sum(:cy_saleqty)
    previous_sales = CoreTrackerTemplate.group(:style).sum(:py_saleqty)
    json_array = Array.new
    previous_sales_array = Array.new
    current_sales_array = Array.new

    current_sales.each_with_index do |current_sale, index|
      if previous_sales[current_sale[0]] != 0
        value_test = current_sale[0] + " - " + ((current_sale[1]-previous_sales[current_sale[0]])/previous_sales[current_sale[0]]).to_s + "\% change "
      else
        value_test = current_sale[0] + " - 0\% change"
      end
      json_array << { :label => value_test }
      previous_sales_array << {:value => previous_sales[current_sale[0]]}
      current_sales_array << {:value => current_sale[1]}
    end
    # #if user_signed_in?
    #   #@title = "User signed in."
    # #else
    #   #@title = "User not signed in."
    # #end
      @chart = Fusioncharts::Chart.new({
        :height => 600,
        :width => 2500,
        :type => 'mscolumn2d',
        :renderAt => 'chart-container',
        :dataSource => {
          :chart => {
            :caption => 'Comparison of Yearly sales of Styles',
            :subCaption => 'Lifestyle',
            :xAxisname => 'Styles',
            :yAxisName => 'Sales',
            :theme => 'ocean',
          },
          :categories => [{
            :category => [
              json_array
            ]
          }],
          :dataset =>  [{
            :seriesname => 'Previous Year',
            :data =>  [
              previous_sales_array
            ]},{
            :seriesname => 'Current Year',
            :data =>  [
              current_sales_array
            ]}
          ]
        }
      })

  end
end
 # @data kya hai?? Variable,Yeh vaala.. ahh I was looking for that missed it :P :P. So graphs done!! Next kya hain?
 #pivot ke tables jo export karna hai and decimal places wala kaam. Let's do the decimal ka issue. Okay range planner me hai. ahh isme bhiii. Basicallly, jahan jahan calculations hue hain. Haan, karte hain.