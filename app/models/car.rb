class Car < ApplicationRecord
    # validates_presence_of :make
    # validates_uniqueness_of :make

    validates :make, uniqueness: true, presence: true

    def self.by_make
        order(:make)
    end

    def self.by_color
        order(:color)
    end

    def self.by_year(direction = :asc)
        order(year: direction)
    end

    def paint(color)
        self.update(color: color)
    end

    def info
        self.attributes.except('id', 'created_at', 'updated_at')
    end

    def honk
        'beep beep!'
    end

end
