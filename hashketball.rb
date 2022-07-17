# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(name)
  scores = 0
  game_hash.each do |teams, data|
    data[:players].each do |players|
      if players[:player_name] == name
        scores = players[:points]
      end
    end
  end
  return scores    
end


def shoe_size(name)
  shoe_number = 0
  game_hash.each do |teams, data|
    data[:players].each do |players|
      if players[:player_name] == name
        shoe_number = players[:shoe]
      end
    end
  end
  return shoe_number      
end


def team_colors(team)
  color = []
  game_hash.each do |teams, data|
    if data[:team_name] == team
      color = data[:colors]
    end
  end
  return color  
end


def team_names
  names = []
  game_hash.each do |teams, data|
    names << data[:team_name]
  end
  return names
end


def player_numbers(name)
  jersey = []
  game_hash.each do |teams, data|
    if data[:team_name] == name
      data[:players].each do |player|
        jersey << player[:number]
      end
    end
  end
  jersey   
end

def player_stats(name)
  status = {}
  game_hash.each do |team, data|
    data[:players].each do |player|
      if player[:player_name] == name
        status = player
      end
    end
  end
  return status     
end


def big_shoe_rebounds
  shoe_number = 0
  rebound_count = 0
  game_hash.each do |team, data|
    data[:players].each do |player|
      if player[:shoe] > shoe_number
        shoe_number = player[:shoe]
        rebound_count = player[:rebounds]
      end
    end
  end
  rebound_count
end