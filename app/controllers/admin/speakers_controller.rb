class Admin::SpeakersController < Admin::AdminController
  def index
    @q = Admin::Speaker.search(params[:q])
    @admin_speakers = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_speaker = Admin::Speaker.new
  end

  def create
    @admin_speaker = Admin::Speaker.new(params[:admin_speaker])

    if @admin_speaker.save
      redirect_to @admin_speaker, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_speaker = Admin::Speaker.find(params[:id])
  end

  def show
    @admin_speaker = Admin::Speaker.find(params[:id])
  end

  def update
    @admin_speaker = Admin::Speaker.find(params[:id])

    if @admin_speaker.update_attributes(params[:admin_speaker])
      redirect_to @admin_speaker, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_speaker = Admin::Speaker.find(params[:id])
    @admin_speaker.destroy
    redirect_to @admin_speaker, notice: 'Successfully deleted.'
  end
end
