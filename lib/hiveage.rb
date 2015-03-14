require 'active_resource'

require "hiveage/config"
require "hiveage/base"
require "hiveage/version"
require "hiveage/network"
require "hiveage/contact"
require "hiveage/item_category"
require "hiveage/task_category"
require "hiveage/expense_category"
require "hiveage/trip_category"
require "hiveage/invoice"
require "hiveage/invoice_payment"
require "hiveage/estimate"
require "hiveage/recurring_invoice"

module Hiveage
  extend Config
end
