class DaySerializer

  def initialize(day_object)
    @day = day_object
  end

  def to_serialized_json
    options = {
      include: {
        activities: {
          except: [:created_at, :updated_at]
        }
      },
      except: [:created_at, :updated_at]
    }
    @day.to_json(options)
  end

end
