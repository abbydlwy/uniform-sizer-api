class Rack::attack
    throttle('login/ip', limit: 5, period: 20.second) do |req|
        if req.path == '/usr/sign_in' && req.post?
            req.ip
        end
    end
end