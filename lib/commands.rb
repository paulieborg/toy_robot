require_relative 'place.rb'
require_relative 'move.rb'
require_relative 'change_direction.rb'
require_relative 'report.rb'

class Commands

  def initialize

    while command = gets.chomp.split(' ')

      action = command.shift

      begin

        case action
          when 'PLACE'
            params = command.first.split(',')
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
            exit
          when /quit|exit|q|x/
            exit
          else
            puts 'Invalid Command'
        end

      rescue NoMethodError
        puts 'You need to PLACE first'
      end
    end

  end

end
