Meteor.publish null, () ->
    [
        Images.find()
        Users.find({},{fields: 'profile.displayname': 1})
    ]