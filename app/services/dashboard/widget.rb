module Dashboard
  class Widget
    attr_reader :name, :col, :row, :sizex, :sizey, :hide

    def initialize(options)
      @name = options[:name]
      @col = options[:col]
      @row = options[:row]
      @sizex = options[:sizex]
      @sizey = options[:sizey] || 1
      @hide = options[:hide] || false
    end

  end
end
