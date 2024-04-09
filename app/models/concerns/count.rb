module Count
    extend ActiveSupport::Concern

    class_methods do
        def public_count
            where(status: 'public').count
        end
    end
end