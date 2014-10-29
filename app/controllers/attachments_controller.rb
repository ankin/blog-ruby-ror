class AttachmentsController < ApplicationController

  def create

    @post = Post.find params[:post_id]
    @attachment = @post.attachments.create( attachment_params )

    redirect_to @post
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def attachment_params
    params.require(:attachment).permit(:image, :text)
  end
end
