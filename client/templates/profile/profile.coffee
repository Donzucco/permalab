uploadPicture = (newFile) ->
    # remove images before uploading new one
    image = Images.findOne({'metadata.owner': Meteor.userId()},{sort: uploadedAt: -1})
    image.remove() if image
    newFile.metadata =
        owner: Meteor.userId()
    Images.insert newFile, (err, fileObj) ->
        if err
        else

Template.Profile.helpers
    checkCheckbox: (check) ->
        user = Meteor.user()
        return 'checked' if user.profile.status?[check]
        return ''

Template.Profile.events
    'change .js-profilePictureInput': (e, template) ->
        e.preventDefault()
        newFile = new FS.File(e.target.files[0])
        uploadPicture(newFile)

    'submit #editProfile': (e,tmpl) ->
        e.preventDefault()
        
        errorMessage = $(tmpl.find('.js-error-message'))

        title = $('#displayName').val()
        image = Images.findOne({'metadata.owner': Meteor.userId()},{sort: uploadedAt: -1})
        return errorMessage.html "Please upload an image to submit your profile" unless image

        Users.update Meteor.userId(), $set:
            'profile.displayname': title
            'profile.status.alreadyLivingInAProject': $('#alreadyLivingInAProject').is(':checked')
            'profile.status.wantToJoinAProject': $('#wantToJoinAProject').is(':checked')
            'profile.status.wantToSupportAProject': $('#wantToSupportAProject').is(':checked')
            'profile.status.wantToStartAProject': $('#wantToStartAProject').is(':checked')
            'profile.status.individual': $('#individual').is(':checked')
            'profile.status.couple': $('#couple').is(':checked')
            'profile.status.parent': $('#parent').is(':checked')
            'profile.status.group': $('#group').is(':checked')


        FlowRouter.go '/'