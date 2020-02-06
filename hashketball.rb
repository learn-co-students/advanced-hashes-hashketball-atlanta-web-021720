# Write your code here!
require "pp"
require "pry"

def game_hash

new_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :player_name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    },
      {
      :player_name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
    },
      {
      :player_name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
    },
      {
      :player_name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 11,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
    },
      {
      :player_name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
    }
  ]

  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :player_name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
    },
      {
      :player_name => "Bismack Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 22,
      :blocks => 15,
      :slam_dunks => 10
    },
      {
      :player_name => "DeSagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
    },
      {
      :player_name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
    },
      {
      :player_name => "Kemba Walker",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 7,
      :blocks => 5,
      :slam_dunks => 12
    }
]
}}

return new_hash
end


def num_points_scored(searched_player)
  ## Input a players name if that player matches the player name in the data sheet return that players points.
result = 0

  game_hash.each do |location, team|
    team.each do | attributes, stats|
      if attributes == :players
        stats.each do |players|
          if searched_player == players[:player_name]
          result = players[:points]
          # binding.pry
          end
        end
      end
    end
  end
  result
end

def shoe_size(searched_player)
  game_hash.each do |home_or_away, team|
    team.each do |attributes, stats|
      if attributes == :players
        stats.each do |player|

        return player[:shoe] if player[:player_name] == searched_player
        end
      end
    end
  end
end

def team_colors(searched_team_name)
  game_hash.each do | location, team|
      return team[:colors] if team[:team_name] == searched_team_name
    end
  end

def team_names
    game_hash.collect do |key, value|
        value[:team_name]
    end
end

def player_numbers(searched_team_name)

  array = []
   game_hash.each do |location, team|
      if team[:team_name] == searched_team_name
        team.each do |attributes, stats|

          if attributes == :players
            stats.each do |players|
            array.push(players[:number])

            end
          end
      end
    end
  end
  array
end

def player_stats(searched_player)

new_hash = {}
  game_hash.each do |location, team|

    team.each do|attribute, data|
      if attribute == :players
        data.each do |players|

          if players[:player_name] == searched_player
            new_hash = players.delete_if do |key, value|
              key == :player_name
            end

  #binding.pry
          end
        end
      end
    end
  end
  new_hash
end

def big_shoe_rebounds
memo = 0
rebounds = 0

  game_hash.each do |location, team|

    team.each do |attribute, data|
      if attribute == :players
        data.each do |players|

          if players[:shoe] > memo
            memo = players[:shoe]
            rebounds = players[:rebounds]
          end

        end
      end
    end
  end
rebounds
end


def winning_team
home_total = 0
away_total = 0


  game_hash.each do |location, teams|
    teams.each do |attribute, data|
      if attribute == :players
        data.each do |players|
          if location == :home
            home_total += players[:points]
          elsif location == :away
            home_total += players[:points]
          end
        end
      end
    end
  end
  if home_total > away_total
    return game_hash[:home][:team_name]
  else
    return game_hash[:away][:team_name]
  end
end


def most_points_scored
  most_scored = 0
  top_player = 0
  game_hash.each do |location, team |
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:points] > most_scored
            most_scored = player[:points]
            top_player = player[:player_name]

          end
        end
      end
    end
  end
  top_player
end


def player_with_longest_name
  top_length = 0
  top_player = 0
  game_hash.each do |location, team |
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name].length > top_length
            top_length = player[:player_name].length
            top_player = player[:player_name]
          end

        end
      end
    end
  end
  top_player
end

def long_name_steals_a_ton?
  most_steals = 0
  most_steals_name = 0
  game_hash.each do |location, team |
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:steals] > most_steals
            most_steals = player[:steals]
            most_steals_name =  player[:player_name]
          end
        end
      end
    end
  end
    if most_steals_name = player_with_longest_name
      return true
      else
      return false
    end
end
