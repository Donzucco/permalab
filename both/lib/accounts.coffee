AccountsTemplates.configure
  defaultLayout: 'MasterLayout'
  defaultLayoutRegions:
    main: 'Login'
  defaultContentRegion: 'main'

AccountsTemplates.configureRoute 'signUp',
    name: 'signup'
    path: '/signup'
    template: 'Signup'

AccountsTemplates.configureRoute 'signIn',
    name: 'signin'
    path: '/login'
    template: 'Login'