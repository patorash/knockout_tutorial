class @AppViewModel
  add_view_model: (view_model_name, view_model) ->
    Object.defineProperty(this, view_model_name, {
      value: view_model,
      writable: false,
      enumerable: true
    })

  add_view_models: (hash) ->
    self = this
    $.each hash, (key, value) ->
      self.add_view_model(key, hash[key])

class @InquiryFormVM
  constructor: ->
    @name = ko.observable('')
    @email = ko.observable('')
    @age = ko.observable('')
    @age_text = ko.computed ->
      "#{@age()}歳"
    , this
    @selected_job = ko.observable()
    @jobs = [
      '会社員',
      '自営業',
      '学生',
      '主婦',
      '無職',
    ]
    @agreement = ko.observable(false)
    @confirmation = ko.observable(false)

  conform: ->
    @confirmation(true)

  back_inquiry: ->
    @confirmation(false)

$ ->
  window.vm = new AppViewModel()
  vm.add_view_models(inquiry_form_vm: new InquiryFormVM())

$(window).load ->
  ko.applyBindings(vm)
