class PostController < ApplicationController
	layout "blog"
	active_scaffold :post do |config|
		    list.columns = [:data, :titulo, :texto]
		        list.sorting = [{:data => 'DESC'},{:titulo => 'ASC'},
									{:texto => 'ASC'}]
			    create.columns = [:titulo, :texto]
			        update.columns = [:titulo, :texto]
				    show.columns = [:data, :titulo, :texto]
				      end

	  def before_create_save(record)
		      record.data = DateTime.now()
		        end  
end

