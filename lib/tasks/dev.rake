namespace :dev do
  task :fetch_oil => :environment do
    puts "Fetch oil data..."
    response = RestClient.get "http://apis.juhe.cn/cnoil/oil_city", :params => { :key => "2583d9dbccd57f731b256e0c3773185b" }
    data = JSON.parse(response.body)

    data["result"].each do |o|
      existing_oil = Oil.find_by_juhe_city( o["city"] )
      if existing_oil.nil?
        Oil.create!( :juhe_city => o["city"], :b90 => o["b90"],
                      :b93 => o["b93"], :b97 => o["b97"], :b0 => o["b0"])
      end
    end

    puts "Total: #{Oil.count} cities"
  end
end
