require_relative "../items-dal/index.rb"

module ItemsApi
    def self.getAPI
        [
            [
                "get",
                "",
                lambda { |params| 
                    return {
                        :code => 200,
                        :message => "success",
                        :data => { :items => ItemsDal.getItems }
                    }.to_json
                }
            ],
            [
                "get",
                "/:id",
                lambda { |params| 
                    return {
                        :code => 200,
                        :message => "success",
                        :data => { :item => ItemsDal.getItem(params["id"]) }
                    }.to_json
                }
            ]
        ]
    end
end