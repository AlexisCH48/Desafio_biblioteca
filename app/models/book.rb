class Book < ApplicationRecord
    enum state: [:en_estante, :prestado]
    paginates_per 15
end
