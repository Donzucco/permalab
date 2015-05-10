AccountsTemplates.configure
  defaultLayout: 'MasterLayout'
  defaultLayoutRegions:
    main: 'Login'
  defaultContentRegion: 'main'
  # Behaviour
  confirmPassword: true
  enablePasswordChange: true
  forbidClientAccountCreation: false
  overrideLoginErrors: true
  sendVerificationEmail: false
  lowercaseUsername: true

  # Appearance
  showAddRemoveServices: false
  showForgotPasswordLink: false
  showLabels: true
  showPlaceholders: false

  # Client-side Validation
  continuousValidation: true
  negativeFeedback: false
  negativeValidation: true
  positiveValidation: true
  positiveFeedback: true
  showValidating: true

  hideSignInLink: true
  hideSignUpLink: true

  texts:
    button:
      signUp: "Register"
      changePwd: "Change password"
      signIn: "Login"
      # enrollAccount: "Enroll Text",
      # forgotPwd: "Forgot Pwd Text",
      # resetPwd: "Reset Pwd Text",

    title:
      forgotPwd: ""
      changePwd: ""
      enrollAccount: ""
      forgotPwd: ""
      resetPwd: ""
      signUp: "Join the movement"
      signIn: "Login"
  

AccountsTemplates.configureRoute 'signUp',
    name: 'signup'
    path: '/signup'
    template: 'Signup'

AccountsTemplates.configureRoute 'signIn',
    name: 'signin'
    path: '/login'
    template: 'Login'

AccountsTemplates.addField
  _id: 'displayname',
  type: 'text'
  displayName: 'Display name'
  minLength: 3
  maxLength: 20
  required: true