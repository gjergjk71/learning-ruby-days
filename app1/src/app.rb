require 'sinatra'
require_relative "./libs/items-api/index.rb"

$routers = [
    [ "/items", ItemsApi.getAPI() ]
] 

$routers.each do |router_path, router_apis| 
    router_apis.each do |type,path,cb| 
        case type
        when "get"
            get "#{router_path}#{path}" do
                content_type "application/json"
                return cb[params]
            end
        end
    end
end