class SendinblueContactCreator
  def self.call(contact)
    api_instance = SibApiV3Sdk::ContactsApi.new

    create_contact = SibApiV3Sdk::CreateContact.new # CreateContact | Values to create a contact

    create_contact = {
      'email'=>contact,
      'emailBlacklisted'=>false,
      'smsBlacklisted'=>false,
      'updateEnabled'=>false
    };

    #Create a contact
    result = api_instance.create_contact(create_contact)
  end
end
