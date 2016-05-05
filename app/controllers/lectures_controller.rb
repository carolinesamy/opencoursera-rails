class LecturesController < InheritedResources::Base
  before_action :authenticate_user!,only: [:downvote, :upvote]
  def index
    redirect_to courses_path
  end
  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.user_id = current_user.id

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'lecture was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end

  end

  def upvote
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_from current_user
    redirect_to lecture_path
  end

  def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_from current_user
    redirect_to lecture_path
  end

  private

    def lecture_params
      params.require(:lecture).permit(:title, :attach, :content, :user_id, :course_id)
    end
end

