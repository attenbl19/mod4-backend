################# AVOID MULTIPLICATIONS IN DATABASE #####################
Subscription.destroy_all
UserSubscription.destroy_all
User.destroy_all 


################# ALWAYS START W/FRESH IDS ###############################
Subscription.reset_pk_sequence
UserSubscription.reset_pk_sequence
User.reset_pk_sequence


######################## SEEDS FOR USERS ###########################
User.create(name: "Joe Smith", email: "jws100@aexample.com", password: "abc123")
User.create(name: "Lucy Bells", email: "bellszone9@aexample.com", password: "123abc")
User.create(name: "Sandy Brown", email: "sbrown@asafezone.com", password: "abcd1234")


####################### SEEDS FOR SUBS #######################
subscriptions_array = 
[
    {
        name: "HBO",
        image: "https://img.icons8.com/ultraviolet/40/000000/hbo-max.png",
        description: "Streaming media",
        category: "Monthly",
        date: "10-01-2020",
        amount: 14.99
    },

    {
        name: "Netflix",
        image: "https://img.icons8.com/ultraviolet/40/000000/hbo-max.png",
        description: "Streaming media",
        category: "Monthly",
        date: "10-01-2020",
        amount: 12.99
    },

    {
        name: "Hulu",
        image: "https://img.icons8.com/color/48/000000/hulu.png",
        description: "Streaming media",
        category: "Monthly",
        date: "10-01-2020",
        amount: 11.99
    },

    {
        name: "FreshDirect",
        image: "https://img.icons8.com/ultraviolet/40/000000/hbo-max.png",
        description: "Free delivery with 12 month pass",
        category: "Annual",
        date: "10-01-2020",
        amount: 129.95
    },

    {
        name: "GubHub",
        image: "https://img.icons8.com/ultraviolet/40/000000/hbo-max.png",
        description: "Free delievery from restaurants plus perks",
        category: "Monthly",
        date: "10-01-2020",
        amount: 9.99
    },

    {
        name: "GameHouse",
        image: "https://img.icons8.com/ultraviolet/40/000000/hbo-max.png",
        description: "Streaming media",
        category: "Free trial",
        date: "10-01-2020",
        amount: 10.99
    },

    {
        name: "Scrimba",
        image: "https://img.icons8.com/nolan/64/knowledge-sharing.png",
        description: "Coding learning platform",
        category: "Monthly",
        date: "10-01-2020",
        amount: 19.99
    },

    {
        name: "Amazon Prime",
        image: "https://img.icons8.com/color/48/000000/amazon.png",
        description: "Streaming media",
        category: "Free Trial",
        date: "10-01-2020",
        amount: 0.00
    },

    {
        name: "Audiobooks",
        image: "https://img.icons8.com/officel/16/000000/audio-book.png",
        description: "Streaming media",
        category: "Annual",
        date: "10-01-2020",
        amount: 149.40
    }
]


subscriptions_array.each do |sub_hash|
    Subscription.create(sub_hash)
end
