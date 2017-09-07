

# We want to hold an array of people who are queuing in a barbershop
# waiting for their turn to get a hair cut

barber_queue = ["Mark", "Benjamin", "Harry"]


# Whenever a new customer joins the queue they get pushed into the array.
# Whenever the barber calls the following customer on the queue, the first
# element from the array will be returned and removed from the array.

def add_new_customer_to_queue(customer, queue)
  result = queue.push(customer)
  return result
end

def call_next_customer_from_queue(queue)
  next_customer = queue.shift()
  return next_customer
end

puts "The current state of the barber queue is #{barber_queue}"
puts "We will now call the next customer in the queue..."

next_customer = call_next_customer_from_queue(barber_queue)

puts "The next customer is #{next_customer}"
puts "The current state of the barber queue is #{barber_queue}"
puts

puts "A new customer arrived to the barbar shop and we will add it to the queue"
puts "Adding a new customer 'Michael' to the barber queue..."

add_new_customer_to_queue("Michael", barber_queue)

puts "The current state of the barber queue is #{barber_queue}"
