class AttachmentsController < ApplicationController

  def create

    @post = Post.find params[:post_id]
    @attachment = @post.attachments.create( attachment_params )

    @post.text << "\n"
    @post.text << @attachment.text
    @post.text << "\n"
    @post.text << (request.protocol + request.host_with_port +  @attachment.image.url)
    @post.text << "\n"
    render 'posts/edit'
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def attachment_params
    params.require(:attachment).permit(:image, :text)
  end
end
