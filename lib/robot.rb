require_relative 'place.rb'
require_relative 'move.rb'
require_relative 'change_direction.rb'
require_relative 'report.rb'

class Robot

  def initialize(stdin=$stdin)
    @stdin = stdin
    @state = nil
  end

  def interactive

    while input = @stdin.gets.chomp.split(' ')
      action = input.shift
      control(action, input)
      return if (/quit|exit|q|x|REPORT/).match(action)
    end

  end

  def input_file(lines)
    lines.each_line do |line |
      input = line.chomp.split(' ')
      action = input.shift
      control(action, input)
      return if (/quit|exit|q|x|REPORT/).match(action)
    end

  end

  private

  def control(action, place)

    begin

      case action
        when 'PLACE'
          params = place.first.split(',')
          x_coord = params.shift.to_i
          y_coord = params.shift.to_i
          direction = params.shift.upcase
          @state = Place.new(x_coord, y_coord, direction).execute
        when 'MOVE'
          Move.new.execute(@state)
        when 'RIGHT'
          ChangeDirection.new.turn(:right, @state)
        when 'LEFT'
          ChangeDirection.new.turn(:left, @state)
        when 'REPORT'
          Report.new.execute(@state)
        when /quit|exit|q|x/
          return
        else
          puts 'Invalid Command'
      end

    rescue NoMethodError
      puts 'You need to PLACE first'
    end
  end

end
