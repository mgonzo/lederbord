class ApiGroupsController <  ApplicationController

  def index
    render json: { :msg => 'hello index' }
  end

  def list
    render json: { :msg => 'some list here' }
  end
end
