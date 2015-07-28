Meteor.publish null, () ->
    [
        Images.find()
        Users.find({},{fields: 'profile': 1})
    ]