
module ItemsDal 
    @@objects = [
        { :id => 1, :val => "item 1" },
        { :id => 2, :val => "item 2" },
        { :id => 3, :val => "item 3" }
    ]
    def self.getItems
        return @@objects
    end
    def self.getItem(id)
        @@objects.select { |item| item[:id] === id.to_i }
    end
end