class ItemService < BaseService
  def self.get_data
    response = conn("https://localhost:5000").get("/api/v1/items")
    get_json(response)
  end
end
