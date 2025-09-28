class MapController < ApplicationController
    def index
        @map = "Hello, Map!"
        render template: "map/index"
    end
end
