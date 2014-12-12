require 'virtus'

module Form
  class BaseForm
    include Virtus.model
    include ActiveModel::Model

    def validate!
      raise ValidationError, errors.full_messages.join("\n") unless valid?
    end

    ValidationError = Class.new RuntimeError

  end
end