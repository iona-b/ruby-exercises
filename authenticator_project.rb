# users array where username and password are stored
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def auth_user(username, password, users)

    users.each do |user| 
        if user[:username] === username && user[:password] === password
            return "Welcome, #{username}! :)"
        end
    end

    return "Sorry, your credentials are incorrect! :("

end

# program execution flow
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 0

while attempts < 4
    
    puts "Press n to quit or another key to continue: "

    print "Username: "
    username = gets.chomp
    break if username === "n"

    print "Password: "
    password = gets.chomp
    break if password === "n"

    authentication = auth_user(username, password, users)
    puts authentication

    attempts += 1

end

puts "You have exceeded the number of attempts! :(" if attempts === 4