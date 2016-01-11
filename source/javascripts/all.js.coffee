class @InquiryFormVM
  constructor: ->
    @name = ko.observable('')
    @email = ko.observable('')
    @age = ko.observable('')
    @selected_job = ko.observable()
    @jobs = [
      '会社員',
      '自営業',
      '学生',
      '主婦',
      '無職',
    ]
    @agreement = ko.observable(false)

  conform: ->
    alert('確認画面へ')


$ ->
  window.vm = new InquiryFormVM()
  ko.applyBindings(vm)
