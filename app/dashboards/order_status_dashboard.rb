require "administrate/base_dashboard"

class OrderStatusDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    orders: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime.with_options(format: "%Y-%m-%d %A %H:%M:%S"),
    updated_at: Field::DateTime.with_options(format: "%Y-%m-%d %A %H:%M:%S"),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :orders,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :orders,
    :name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :orders,
    :name,
  ].freeze

  # Overwrite this method to customize how order statuses are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(order_status)
    "订单状态 ##{order_status.name}"
  end
end
