class ActivitySerializer

  def initialize(activity_object)
    @activity = activity_object
  end

  def to_serialized_json
    options = {
      except: [:created_at, :updated_at]
    }
    @activity.to_json(options)
  end

end