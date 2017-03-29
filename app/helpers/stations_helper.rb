module StationsHelper
  def sort_distance(stations)
    stations.sort_by { |station| station.distance }
  end
end
