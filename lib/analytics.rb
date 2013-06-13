class Analytics
  def initialize (areas)
    @areas = areas
  end

  def set_options
    @options = []
    @options << { menu_id: 1, menu_title: 'Areas count', method: :how_many }
    @options << { menu_id: 2, menu_title: 'Smallest Population (non 0)', method: :smallest_pop }
    @options << { menu_id: 3, menu_title: 'Larest Population', method: :largest_pop }
    @options << { menu_id: 4, menu_title: 'How many zips in California?', method: :california_zips }
    @options << { menu_id: 5, menu_title: 'Information for a given zip', method: :zip_info }
    @options << { menu_id: 6, menu_title: 'Exit', method: :exit }
  end

  def run (num)
    opt = @options.select {|o| o[:menu_id] == num}.first
    if opt.nil?
      puts "Invalid choice"
    elsif opt[:method] != :exit
      self.send opt[:method]
      :done
    else
      opt[:method]
    end
end
