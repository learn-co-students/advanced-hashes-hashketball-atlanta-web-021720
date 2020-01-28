require "pry"

# Write your code here!
def game_hash
  hash = {
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
    }
  }
  hash
end

def num_points_scored(name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute === :players
        data.each do |player|
          if player[:player_name] === name
            return player[:points]
          end
        end
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute === :players
        data.each do |player|
          if player[:player_name] === name
            return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |place, team|
    if team[:team_name] === name
      return team[:colors]
    end
  end
end

def team_names
  arr = []
  game_hash.each do |place, team|
    if team[:team_name]
      arr << team[:team_name]
    end
  end
  arr
end

def player_numbers(name)
  arr = []
  game_hash.each do |place, team|
    if team[:team_name] === name
      team.each do |attribute, value|
        if attribute == :players
          value.each do |p_number|
            arr << p_number[:number]
          end
        end
      end
    end
  end
  arr
end

def player_stats(name)
  game_hash.each do |place, team|
    team.each do |attribute, value|
      if attribute === :players
        value.each do |val|
          if val[:player_name] === name
            val.shift
            return val
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebound_num = 0

  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        rebound_num = player[:rebounds]
      end
    end
  end
  rebound_num
end

def most_points_scored
  most_points = 0
  playerz_name = " "

  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]
        playerz_name = player[:player_name]
      end
    end
  end
  playerz_name
end

def winning_team
  total_points = 0
  win_team = " "

  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:points] > total_points
        total_points += player[:points]
        win_team = team[:team_name]
      end
    end
  end
  win_team
end

def player_with_longest_name
longest_name = 0
player_with_name = " "

game_hash.each do |place, team|
  team[:players].each do |player|
    if player[:player_name].length > longest_name
      longest_name = player[:player_name].length
      player_with_name = player[:player_name]
      end
    end
  end
  player_with_name
end


def long_name_steals_a_ton?
most_steals = 0
name_of_most_steals = " "

  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:steals] > most_steals
        most_steals = player[:steals]
        name_of_most_steals = player[:player_name]
      end
    end
  end
  if player_with_longest_name === name_of_most_steals
    return true
  else
    return false
  end
end
