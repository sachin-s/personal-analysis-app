class RelativeActivitiesController < ApplicationController

    def index
        @ractivities = RelativeActivity.all
        @med_data = {}
        @exer_data = {}
        @read_data = {}
        @conc_data = {}
        @hard_data = {}
        @metal_data ={}
        @self_data ={}
        @time_data ={}
        @univ_data ={}
        @min_data = {}

        @ractivities.each do |ractivity| 
            @med_data[ractivity.entry_date]=ractivity.meditation
            @exer_data[ractivity.entry_date]=ractivity.exercise
            @read_data[ractivity.entry_date]=ractivity.reading
            @conc_data[ractivity.entry_date]=ractivity.concentration
            @hard_data[ractivity.entry_date]=ractivity.hard_working
            @metal_data[ractivity.entry_date]=ractivity.metal_stability
            @self_data[ractivity.entry_date]=ractivity.self_confidene
            @time_data[ractivity.entry_date]=ractivity.time_management
            @univ_data[ractivity.entry_date]=ractivity.universal_power
            @min_data[ractivity.entry_date] = 4
        end

    end
    def new

    end

    def create
        @ractivity = RelativeActivity.new(post_params)
        if @ractivity.save
            redirect_to @ractivity
        else
            render plain: 'Unable to store Activity in the database'
        end
    end
    def show
        @ractivity = RelativeActivity.find(params[:id])

    end
    def destroy
        @ractivity = RelativeActivity.find(params[:id])
        @ractivity.destroy

        redirect_to relative_activities_path
    end

    private def post_params
        params.require(:post).permit(:entry_date,:meditation,:exercise,:reading,:concentration,:hard_working,:metal_stability,:self_confidene,:time_management,:universal_power)
    end
end
