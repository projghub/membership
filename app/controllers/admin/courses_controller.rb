class Admin::CoursesController < Admin::AdminController
  def index
    @q = Admin::Course.search(params[:q])
    @admin_courses = @q.result(distinct: true).paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_course = Admin::Course.new
  end

  def create
    @admin_course = Admin::Course.new(params[:admin_course])

    if @admin_course.save
      redirect_to @admin_course, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_course = Admin::Course.find(params[:id])
  end

  def show
    @admin_course = Admin::Course.find(params[:id])
  end

  def update
    @admin_course = Admin::Course.find(params[:id])

    if @admin_course.update_attributes(params[:admin_course])
      redirect_to @admin_course, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_course = Admin::Course.find(params[:id])
    @admin_course.destroy
    redirect_to @admin_course, notice: 'Successfully deleted.'
  end
end
