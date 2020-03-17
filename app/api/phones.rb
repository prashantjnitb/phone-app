class Phones < Grape::API
  format :json

  helpers do
    def create_phone_number
      phone = Phone.new(number: params[:number])
      phone.validate_and_save
      { phone: phone.number }
    end
  end

  resource '/' do

    # Allots a number
    desc 'Create a phone number'
    params do
      optional :number, type: String
    end

    post '/' do
      create_phone_number
    end

    
    # Allots the number
    desc 'Create a phone number'
    params do
    end

    post '/:number' do
      create_phone_number
    end

    
    # Lists all allotted numbers
    desc 'List all allotted numbers'
    params do
    end

    get '/' do
      {phones: Phone.all.pluck(:number)}
    end

  end
end