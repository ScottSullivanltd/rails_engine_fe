class MerchantFacade
  def self.create_merchants
    json = MerchantService.get_data

    json[:results].map do |data|
      Merchant.new(data)
    end
  end
end
