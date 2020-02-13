require 'pry'

#Creates and returns hash with basketball game statistics
def game_hash  
  bball_game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        { :player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
         },
         { :player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
         },
         { :player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
         },
         { :player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
         },
        { :player_name => "Jason Terry",
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
        { :player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
         },
         { :player_name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
         },
         { :player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
         },
         { :player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
         },
         { :player_name => "Kemba Walker",
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
bball_game_hash
end 

#Takes in a player's name and returns his points 
def num_points_scored(players_name)
  game_hash
  home_counter = 0
  away_counter = 0
  #Checks to see if the player exists on the away team, if so returns player's points
  while away_counter < game_hash[:away][:players].length do
    if game_hash[:away][:players][away_counter][:player_name] == players_name
      return game_hash[:away][:players][away_counter][:points]
    else 
    end 
    away_counter += 1
  end 
  #Checks to see if the player exists on the home team, if so returns player's points
    while home_counter < game_hash[:home][:players].length do
    if game_hash[:home][:players][home_counter][:player_name] == players_name
      return game_hash[:home][:players][home_counter][:points]
    else 
    end 
    home_counter += 1
  end 
end 

#Takes in a player's name and returns his shoe size
def shoe_size(players_name)
  game_hash
  home_counter = 0
  away_counter = 0
  #Checks to see if the player exists on the away team, if so returns player's shoe
  while away_counter < game_hash[:away][:players].length do
    if game_hash[:away][:players][away_counter][:player_name] == players_name
      return game_hash[:away][:players][away_counter][:shoe]
    else 
    end 
    away_counter += 1
  end 
  #Checks to see if the player exists on the home team, if so returns player's shoe
    while home_counter < game_hash[:home][:players].length do
    if game_hash[:home][:players][home_counter][:player_name] == players_name
      return game_hash[:home][:players][home_counter][:shoe]
    else 
    end 
    home_counter += 1
  end 
end 

#Takes a team name, and returns the team colors
def team_colors(team_name)
  game_hash
  #Checks to see if home team matches team_name
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home][:colors]
  else
  end 
  #Checks to see if away team matches team_name
  if game_hash[:away][:team_name] == team_name
    return game_hash[:away][:colors]
  else 
  end 
end 

#Returns the name of the home and away team
def team_names
  game_hash
  #Creates a new teams array and adds both team names to it and returns the new teams array
  teams = []
  teams << game_hash[:away][:team_name]
  teams << game_hash[:home][:team_name]
  return teams 
end 

#Returns the jersey numbers of the entire team
def player_numbers(team_name)
  game_hash 
  home_counter = 0
  away_counter = 0
  jersey_numbers = []
   #Checks to see if home team matches team_name and adds player's jersey numbers to new jersey_number array
  if game_hash[:home][:team_name] == team_name
    while home_counter < game_hash[:home][:players].length
      jersey_numbers << game_hash[:home][:players][home_counter][:number]
      home_counter += 1
    end 
  else
  end 
  #Checks to see if away team matches team_name and adds player's jersey numbers to new jersey_number array
  if game_hash[:away][:team_name] == team_name
     while away_counter < game_hash[:away][:players].length
      jersey_numbers << game_hash[:away][:players][away_counter][:number]
      away_counter += 1
      end 
  else 
  end 
  return jersey_numbers
end 

#Returns a player's stats 
def player_stats(players_name)
  game_hash
  home_counter = 0 
  away_counter = 0
  final_stats = {}
  #Checks to see if the player exists on the home team, if so fills player's stats
    while home_counter < game_hash[:home][:players].length do
    if game_hash[:home][:players][home_counter][:player_name] == players_name
       final_stats = { :assists => game_hash[:home][:players][home_counter][:assists],
                       :blocks => game_hash[:home][:players][home_counter][:blocks],
                       :number => game_hash[:home][:players][home_counter][:number],
                       :points => game_hash[:home][:players][home_counter][:points],
                       :rebounds => game_hash[:home][:players][home_counter][:rebounds],
                       :shoe => game_hash[:home][:players][home_counter][:shoe],
                       :slam_dunks => game_hash[:home][:players][home_counter][:slam_dunks],
                       :steals => game_hash[:home][:players][home_counter][:steals]
       }
    else 
    end 
    home_counter += 1
  end
    #Checks to see if the player exists on the away team, if so fills player's stats
  while away_counter < game_hash[:away][:players].length do
    if game_hash[:away][:players][away_counter][:player_name] == players_name
        final_stats = { :assists => game_hash[:away][:players][away_counter][:assists],
                        :blocks => game_hash[:away][:players][away_counter][:blocks],
                        :number => game_hash[:away][:players][away_counter][:number],
                        :points => game_hash[:away][:players][away_counter][:points],
                        :rebounds => game_hash[:away][:players][away_counter][:rebounds],
                        :shoe => game_hash[:away][:players][away_counter][:shoe],
                        :slam_dunks => game_hash[:away][:players][away_counter][:slam_dunks],
                        :steals => game_hash[:away][:players][away_counter][:steals]
       }
    else 
    end 
    away_counter += 1
  end 
  #return player's stats
  final_stats
end 

#Returns the rebounds for the player with the largest shoe size 
def big_shoe_rebounds 
  game_hash 
  home_counter = 0
  away_counter = 0
  home_counter2 = 0
  away_counter2 = 0 
  shoe_sizes = []
  largest_shoe = 0
   #Adds shoe size of all the home players 
    while home_counter < game_hash[:home][:players].length
      shoe_sizes << game_hash[:home][:players][home_counter][:shoe]
      home_counter += 1
    end 
  #Adds shoe size of all the away players 
     while away_counter < game_hash[:away][:players].length
      shoe_sizes << game_hash[:away][:players][away_counter][:shoe]
      away_counter += 1
      end 
  #Find largest shoe in array and set it to variable 
  largest_shoe = shoe_sizes.max 
     #Checks to see if the largest shoe belongs to a player on the away team, if so, returns his rebounds 
  while away_counter2 < game_hash[:away][:players].length do
    if game_hash[:away][:players][away_counter2][:shoe] == largest_shoe
      return game_hash[:away][:players][away_counter2][:rebounds]
    else 
    end 
    away_counter2 += 1
  end 
  #Checks to see if the largest shoe belongs to a player on the home team, if so, returns his rebounds 
    while home_counter2 < game_hash[:home][:players].length do
    if game_hash[:home][:players][home_counter2][:shoe] == largest_shoe
      return game_hash[:home][:players][home_counter2][:rebounds]
    else 
    end 
    home_counter2 += 1
  end 
end 

#Returns the player's name with the most points scored
def most_points_scored 
  game_hash 
  home_counter = 0
  away_counter = 0
  home_counter2 = 0
  away_counter2 = 0 
  point_totals = []
  most_points = 0
   #Adds point total of all the home players to array
    while home_counter < game_hash[:home][:players].length
      point_totals << game_hash[:home][:players][home_counter][:points]
      home_counter += 1
    end 
  #Adds point total of all the away players to array
     while away_counter < game_hash[:away][:players].length
      point_totals << game_hash[:away][:players][away_counter][:points]
      away_counter += 1
      end 
  #Find largest point total in array and set it to variable 
  most_points = point_totals.max  
     #Checks to see if the largest point total belongs to a player on the away team, if so, returns his name
  while away_counter2 < game_hash[:away][:players].length do
    if game_hash[:away][:players][away_counter2][:points] == most_points
      return game_hash[:away][:players][away_counter2][:player_name]
    else 
    end 
    away_counter2 += 1
  end 
  #Checks to see if the largest point total belongs to a player on the home team, if so, returns his name
    while home_counter2 < game_hash[:home][:players].length do
    if game_hash[:home][:players][home_counter2][:points] == most_points
      return game_hash[:home][:players][home_counter2][:player_name]
    else 
    end 
    home_counter2 += 1
  end 
end 

#Returns team name with largest point total
def winning_team 
  home_counter = 0
  away_counter = 0 
  home_point_totals = 0
  away_point_totals = 0 
   #Adds point total of all the home players 
    while home_counter < game_hash[:home][:players].length
      home_point_totals += game_hash[:home][:players][home_counter][:points]
      home_counter += 1
    end 
  #Adds point total of all the away players 
     while away_counter < game_hash[:away][:players].length
      away_point_totals += game_hash[:away][:players][away_counter][:points]
      away_counter += 1
      end 
      #Determines if home has more points than away, then returns team name of highest point total 
    if home_point_totals > away_point_totals
      return game_hash[:home][:team_name]
    else 
      return game_hash[:away][:team_name]
    end 
end 
#Returns the player with the longest name 
def player_with_longest_name
  longest_name = ""
  name_length = 0  
  longest_name_length = 0
  home_counter = 0 
  away_counter = 0 
  #Checks to see if the longest name belongs to the away team
  while away_counter < game_hash[:away][:players].length do
    name_length = game_hash[:away][:players][away_counter][:player_name].length
    if name_length > longest_name_length
      longest_name_length = name_length
      longest_name = game_hash[:away][:players][away_counter][:player_name]
    else 
    end 
    away_counter += 1
  end 
  #Checks to see if the longest name belongs to the home team 
    while home_counter < game_hash[:home][:players].length do
      name_length = game_hash[:home][:players][home_counter][:player_name].length
      if name_length > longest_name_length
        longest_name_length = name_length
        longest_name = game_hash[:home][:players][home_counter][:player_name]
      else 
      end 
    home_counter += 1
  end 
  #Return player's name that is the longest 
  return longest_name
end 

#Determines if the player with the longest name also has the most #steals 
def long_name_steals_a_ton?
  steals_most_name = ""
  player_steals = 0
  most_steals = 0
  home_counter = 0 
  away_counter = 0 
  #Checks to see if the most steals belongs to an away player
  while away_counter < game_hash[:away][:players].length do
    player_steals = game_hash[:away][:players][away_counter][:steals]
    if player_steals > most_steals
      most_steals = player_steals
      steals_most_name = game_hash[:away][:players][away_counter][:player_name]
    else 
    end 
    away_counter += 1
  end 
  #Checks to see if the most steals belongs to a home player
    while home_counter < game_hash[:home][:players].length do
      player_steals = game_hash[:home][:players][home_counter][:steals]
      if player_steals > most_steals
        most_steals = player_steals
        steals_most_name = game_hash[:home][:players][home_counter][:player_name]
      else 
      end 
    home_counter += 1
  end 
  #Returns true if the player with the most steals also has the 
  # longest name 
  if steals_most_name == player_with_longest_name
    return true 
  end 
end 



