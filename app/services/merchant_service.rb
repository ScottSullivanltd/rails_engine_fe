class MerchantService < BaseService
  def self.get_data
    response = conn("https://localhost:3000").get("/api/v1/merchants")
    get_json(response)
  end
end
