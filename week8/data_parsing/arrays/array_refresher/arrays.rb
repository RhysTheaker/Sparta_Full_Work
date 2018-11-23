# single arrays

# single_array = ['Steven Spielberg', 'Quentin Tarantino', 'George Lucas', 'M. Night Shamylan']

# single_array.each do |director|
#   p director
# end


# 2-d Arrays
# two_dimensional_array = [
#   ['Steven Spielberg', 1950],
#   ['Quentin Tarantino', 1960],
#   ['George Lucas', 1955],
#   ['M. Night Shamylan', 1970]
# ]

# p two_dimensional_array[3].last
# p two_dimensional_array.first.last

# multi-dimensional array
multi_dimensional_array = [
    ['Steven Spielberg', 1950,
      ["Jurrasic Park", "E.T", "Saving Private Ryan"]
    ],
    ['Quentin Tarantino', 1960,
      ["Reservoir Dogs", "Pulp Fuction", "Kill Bill"]
    ],
    ['George Lucas', 1955,
      ["Star Wars", "Indiana Jones"]
    ],
    ['M. Night Shamylan', 1970,
      ["Unbreakable", "The Sixth Sense", "Signs"]
    ]
  ]

  p multi_dimensional_array[1][2][1]
