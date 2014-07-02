class Students


  def all
    [
      {name: "Peggy", age: 46},
      {name: "Fred", age: 51},
      {name: "Sarah", age: 34},
      {name: "Lisa", age: 51},
      {name: "Ian", age: 19},
    ]
  end

  def average_age
    #all_ages = 0
    #all.select do |student|
    #  all_ages += student[:age]
    #end
    #all_ages / all.length

    all.reduce(0) { |sum_of_ages, student| sum_of_ages + student[:age] } / all.length
  end

  def string_of_names
    #all.collect { |student| student[:name] }.join(" ")

    all.reduce("") { |accumulator, student| accumulator + student[:name] + " " }.strip
  end

  def older_than(age)
    total = all.reject do |students|
      students[:age] <= age
    end
    result = []
    total.each do |student|
      result << student[:name]
    end
    result.join(", ")
  end
end