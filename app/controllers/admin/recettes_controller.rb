#Félix Carle-Milette 2020-11-03
class Admin::AdminController < AdminController
    layout false

    def recettes
        respond_to do |format|
            format.html{render 'admin/recettes'}
            format.json
            format.xml
        end        
    end

    def index_1
        respond_to do |format|
            format.html{render 'admin/recettes/index_1'}
            format.json
            format.xml
        end
    end
    def index_2
        respond_to do |format|
            format.html{render 'admin/recettes/index_2'}
            format.json
            format.xml
        end
    end
    def index_3
        respond_to do |format|
            format.html{render 'admin/recettes/index_3'}
            format.json
            format.xml
        end
    end
    def index_4
        respond_to do |format|
            format.html{render 'admin/recettes/index_4'}
            format.json
            format.xml
        end
    end

end