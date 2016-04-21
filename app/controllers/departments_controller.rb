class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :update]

  def index
    @departments = Department.all
  end

  private

    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end
end
