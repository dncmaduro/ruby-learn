class Person < ApplicationRecord
    include ActiveModel::AttributeMethods

    attribute_method_prefix 'reset_'
    attribute_method_suffix '_good?'

    private
        def reset_attribute(attribute)
            if send(attribute).is_a?(String)
                send("#{attribute}=", "")
            elsif
                send("#{attribute}=", 0)
            end
        end
end
