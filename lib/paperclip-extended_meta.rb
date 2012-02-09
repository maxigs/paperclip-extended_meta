require 'paperclip'

module Paperclip
  class Attachment
    alias :original_post_process_styles :post_process_styles

    def post_process(*style_args) #:nodoc:
      original_post_process_styles(*style_args)
      generate_meta_information
    end

    def generate_meta_information
      meta = {}
      expand_queued(@queued_for_write).each do |style, file|
        meta[style] = {}
        if style == :original
          geo = Geometry.from_file(file)
          meta[style][:width]   = geo.width.to_i
          meta[style][:height]  = geo.height.to_i
        rescue NotIdentifiedByImageMagickError
        end
        
        meta[style][:size]    = File.size(file)
      end
      instance_write(:meta, meta)
    end

  end
end