require_relative 'board'
require_relative 'robot'

class Simulator

  def initialize
    @board = Board.new(5, 5)
    @robot = Robot.new @board
  end

  def execute(command)
    begin
      puts @robot.execute(command)
    rescue Exception => e
      puts e.message
    end
  end

end