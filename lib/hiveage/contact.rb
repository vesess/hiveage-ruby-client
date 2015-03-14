module Hiveage
  class Contact < Hiveage::Base
    self.prefix = "/network/:hash_key/"
    self.collection_name = "contacts"

    def self.find_by_network(*args)
      all(*args)
    end

    def self.find_by_id(id, *args)
      find(id, *args)
    end

    def self.update_by_id(id, *args)
      modify(id, *args)
    end

    def self.create_by_network(*attributes)
      create(*attributes)
    end

    def self.destroy_by_id(id, args)
      delete(id, args)
    end
  end
end

=begin
Hiveage::Contact.all(params: {hash_key: 'dvsIYJgWrOJoxw'})

Hiveage::Contact.find(:all, params: {hash_key: "dvsIYJgWrOJoxw"})
=end
