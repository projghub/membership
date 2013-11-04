class Admin::EventsController < Admin::AdminController
  def index
    @q = Admin::Event.search(params[:q])
    @admin_events = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_event = Admin::Event.new
  end

  def create
    @admin_event = Admin::Event.new(params[:admin_event])

    if @admin_event.save
      redirect_to @admin_event, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_event = Admin::Event.find(params[:id])
  end

  def show
    @admin_event = Admin::Event.find(params[:id])
  end

  def update
    @admin_event = Admin::Event.find(params[:id])

    if @admin_event.update_attributes(params[:admin_event])
      redirect_to @admin_event, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_event = Admin::Event.find(params[:id])
    @admin_event.destroy
    redirect_to @admin_event, notice: 'Successfully deleted.'
  end
end
