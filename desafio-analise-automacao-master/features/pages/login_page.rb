module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, 'span[class=navigation_page]'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate > span'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, 'title="Recover your forgotten password"'
    element  :btn_sign_in, '#SubmitLogin > span'
    element  :alert_message_authentication_failed, '#center_column > div.alert.alert-danger > ol > li'
  end
end
