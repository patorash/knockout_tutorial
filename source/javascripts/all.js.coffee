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
  window.vm = {
    inquiry_form_vm: new InquiryFormVM()
  }
  ko.applyBindings(vm)
