namespace :dev do
  task :fetch_food => :environment do
    puts "Fetch food data..."
    response = RestClient.get "http://apis.juhe.cn/catering/querybycity", :params => { :key => "5b90d34c8fd4a44561fa1cadf1542216", :city =>"%E5%8C%97%E4%BA%AC" }


    data["result"].each do |f|
      existing_food = Food.find_by_juhe_name( c["name"] )
      if existing_food.nil?
        Food.create!( :juhe_name => c["name"], :address => c["address"],
                      :city => c["city"], :avg_price => c["avg_price"], :phone => c["phone"], :tags => c["tags"] )
      end
    end

    puts "Total: #{Food.count} restrants"
  end
end
