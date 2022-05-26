class ItemFacade
  def self.create_items
    json = ItemService.get_data

    json[:results].map do |data|
      Item.new(data)
    end
  end
end
