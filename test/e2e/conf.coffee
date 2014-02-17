exports.config =

  # The address of a running selenium server.
  seleniumAddress: "http://localhost:4444/wd/hub"

  # Capabilities to be passed to the webdriver instance.
  capabilities:
    browserName: "chrome"


  # Spec patterns are relative to the current working directly when
  # protractor is called.
  specs: ["example_spec.coffee"]

  # Options to be passed to Jasmine-node.
  jasmineNodeOpts:
    showColors: true
    defaultTimeoutInterval: 30000

  baseUrl: "http://localhost:9999"

  onPrepare: ->
    global.bi = global.by
