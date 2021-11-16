class Tournament
  POINTS_PER_WIN      = 3.freeze
  HEADER              = %w[Team MP W D L P].freeze
  PRINT_FORMAT_HEADER = "%-31s| %s |  %s |  %s |  %s |  %s\n".freeze
  PRINT_FORMAT_VALUES = "%-31s|  %s |  %s |  %s |  %s |  %s\n".freeze

  def self.tally(input)
    tournament = new
    input.split("\n").each do |match|
      tournament.add_a_match(match.split(';'))
    end
    tournament.positions
  end

  def initialize
    @teams = []
  end

  def add_a_match(match)
    case match[2]
      when 'win'
        add_a_win(match[0])
        add_a_loss(match[1])
      when 'loss'
        add_a_loss(match[0])
        add_a_win(match[1])
      when 'draw'
        add_a_tie(match[0])
        add_a_tie(match[1])
    end
  end

  def add_a_win(team_name)
    team = find_or_create_team(team_name)
    team.won!
  end

  def add_a_loss(team_name)
    team = find_or_create_team(team_name)
    team.lost!
  end

  def add_a_tie(team_name)
    team = find_or_create_team(team_name)
    team.tied!
  end

  def positions
    table = PRINT_FORMAT_HEADER % HEADER
    sorted_teams.each do |team|
      table += PRINT_FORMAT_VALUES % [team.name, team.matches_played, team.wins,
                                      team.ties, team.losses, team.points]
    end

    table
  end

  private

  def find_or_create_team(team_name)
    team = @teams.find { |team| team.name == team_name }
    return team if team

    team = Team.new(team_name)
    @teams << team
    team
  end

  def sorted_teams
    @teams.sort_by { |team| [-team.points, team.name] }
  end

  class Team
    attr_reader :name, :wins, :losses, :ties

    def initialize(name)
      @name = name
      @wins, @losses, @ties = 0, 0, 0
    end

    def won!
      @wins += 1
    end

    def lost!
      @losses += 1
    end

    def tied!
      @ties += 1
    end

    def matches_played
      @wins + @losses + @ties
    end

    def points
      (@wins * POINTS_PER_WIN) + @ties
    end
  end
end
