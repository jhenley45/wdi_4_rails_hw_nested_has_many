User.create(name: 'Jack Henley', email: 'jackdawg@aol.com')
User.create(name: 'Billy Boy', email: 'BillyBoy@aol.com')
User.create(name: 'Homie James', email: 'Jamey@aol.com')
User.create(name: 'Wesley Snipes', email: 'Wezley43@aol.com')


#Album.find(5).songs << Song.create(name: "Good kid, Madd City!")

User.find(1).articles << Article.create(title: 'Zebra Mussels in the St. Croix River', body: 'The population of zebra mussels is on the decline... who cares!', user_id: 1)
User.find(2).articles << Article.create(title: 'Home on the Range', body: 'Man it sure gets lonely out here on the range. With I had a gun to shoot...', user_id: 2)
User.find(3).articles << Article.create(title: 'Not up in here', body: 'Cant stop wont stop!', user_id: 3)
User.find(4).articles << Article.create(title: 'My greatest movie', body: 'Was definitely Blade. Got I was such a good actor in that movie!', user_id: 4)
