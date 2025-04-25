module Api
  module V1
    class JobsController < ApplicationController
      def index
        @jobs = Job.includes(:category).all
        render json: @jobs.as_json(methods: [:category_name])
      end
      

      def create
        @job = Job.new(job_params)
        if @job.save
          render json: @job, status: :created
        else
          render json: { errors: @job.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def job_params
        params.require(:job).permit(:title, :salary, :category_id)
      end
    end
  end
end
