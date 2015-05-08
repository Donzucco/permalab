# Not Found
FlowRouter.notfound =
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'NotFound'})

# Home
FlowRouter.route '/',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Signups'})

# Profile
FlowRouter.route '/profile',
    middlewares: [AccountsTemplates.ensureSignedIn]
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Profile'})

###
FlowRouter.route '/intention',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Intention'})

FlowRouter.route '/collective',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Collective'})

FlowRouter.route '/manifest',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Manifest'})

FlowRouter.route '/service',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Service'})

FlowRouter.route '/solutions',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Solutions'})

FlowRouter.route '/user',
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'User'})
###