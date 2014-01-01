class RepsController < ApplicationController
        def create
                @steppy = Steppy.find(params[:steppy_id])
                @rep = @steppy.reps.create!(params[:rep])
                redirect_to @steppy
        end

        def destroy
        	@steppy = Steppy.find(params[:steppy_id])
        	@rep = Rep.find(params[:id]).destroy
        	redirect_to @steppy
        end
end