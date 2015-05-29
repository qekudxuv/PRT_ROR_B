
#Migration


1. rake g migration add_age_to_user
2. modify migration file
3. rake db:migrate:status
4. rake db:migration

# 後悔使用 rollback 注意砍欄位, 資料會一起消失
# 一步一步的 可用 db:migrate:status 確認狀況
5. rake db:rollback

# rake c "city".pluralize

# Create New Project 
rake new blog  

rails g scaffold Product name price:ingter

rails g controller static_pages
rails g integration_test products

guard init minitest


rails g controller StaticPages index about
rails destroy controller StaticPages index about
rails d controller StaticPages index about


# sample code print params
def action 
  render text: params
  render text: params[:id]   # => Ruby 正規寫法
  render text: params["id"]  # => rails 外掛才能這樣拿   
  render text: params[:product]

  params.require(:product)...... #清洗
end

'~> 4.1.0' # is ok for 4.1.10  not ok for 4.2.0
'>= 1.3.0' # is ok for 1.4.0  

#route

get '/about', controller: static_pages, action: about
get '/about', to: 'static_pages#about'


# render partial
<%= render partial: 'book' %>  
# the same 
<%= render 'book' %>

# render partial with locals
<%= render 'hello', name:'PHP', age:17 %>
<%= render partial: 'book', locals: { name: 'Eddie' } %>

# render partial with collcation
<%= render partial: 'book', collection: @books, as: :book %>
<%= render @books %>

# helper 精簡 
content_tag(:p , 'Text', class:'classnmae')

# flash message
flash[:notice] = 'hello, ruby'
redirect_to root_path
#--
redirect_to root_path, notice: 'hello, ruby'  # 用法2
#--View 寫法
<%= notice%>
<%= flash[:notice]%>
#--使用 yied 加載 css || js 
<%= yield :xxx_js %>

# Twitter(前端), cookpad.com, 愛料理, heroku
# 一行程式擋 10行 , 一個gem 檔一天工作量
# https://wappalyzer.com/?pk_campaign=chrome&pk_kwd=context

#Create mailer 
rails g mailer ProductMailer  

ProductMailer.destroy_notify.deliver_now  #send mail

deliver_later				# for rails 4.2 new method


# http://guides.rubyonrails.org/action_mailer_basics.html   6.2
# https://mandrillapp.com


rails generate job


#sidekiq  <-  redis server

# delayed_job 

#for check rake event
rake -T

#start job 
rake jobs:workoff

# use by jobs for schedule 
gem "daemons"

