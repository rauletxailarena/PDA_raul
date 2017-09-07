require 'pg'
require 'pry'

class User

  attr_reader :id
  attr_accessor :name, :age, :country

  def initialize (args)
    @id = args['id'].to_i if args['id']
    @name = args['name']
    @age = args['age'].to_i
    @country = args['country']
  end

  # The following function access a database called users and search for users
  # from a specific country
  def User.find_by_country(country)
    db = PG.connect({dbname: 'users', host: 'localhost'})
    sql = '
      SELECT *
      FROM users
      WHERE country = $1;
    '
    db.prepare("find_by_country", sql)
    values = [country]
    result = db.exec_prepared("find_by_country", values)
    return result.map(){
    |user_info| User.new(user_info)
    }
  end

 # The following function returns all the elemtns within the database
 # sorted by age in ascending order

  def User.sort_users_by_age()
    db = PG.connect({dbname: 'users', host: 'localhost'})
    sql = '
      SELECT *
      FROM users
    '
    result = db.exec(sql)
    users = result.map(){
    |user_info| User.new(user_info)
    }
    sorted_users = users.sort!() {
      |user_a, user_b| user_a.age <=> user_b.age
    }
    return sorted_users
  end

end









# We will demonstrate the results by calling the funcion through
# the code below:

result = User.sort_users_by_age

result.each(){
  |user|
  puts "User name:#{user.name}, #{user.age} years old."
}
