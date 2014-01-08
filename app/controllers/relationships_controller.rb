class RelationshipsController < ApplicationController
        def create
                @steppy = Steppy.find(params[:steppy_id])
                @relationship = @steppy.relationships.create!(params[:rep])
                redirect_to @steppy

        end

        def destroy
        	@steppy = Steppy.find(params[:steppy_id])
        	@relationship = Relationship.find(params[:id]).destroy
        	redirect_to @steppy
        end



end
