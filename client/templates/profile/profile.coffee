uploadPicture = (newFile) ->
    # remove images before uploading new one
    image = Images.findOne({'metadata.owner': Meteor.userId()},{sort: uploadedAt: -1})
    image.remove() if image
    newFile.metadata =
        owner: Meteor.userId()
    Images.insert newFile, (err, fileObj) ->
        if err
        else

Template.Profile.events
    'change .js-profilePictureInput': (e, template) ->
        e.preventDefault()
        newFile = new FS.File(e.target.files[0])
        uploadPicture(newFile)

    'submit #editProfile': (e,tmpl) ->
        e.preventDefault()
        title = $('#displayName').val()
        
        Users.update Meteor.userId(), $set:
            'profile.displayname': title
        
        FlowRouter.go '/'