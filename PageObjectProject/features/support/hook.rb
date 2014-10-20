After do |scenario|
  if scenario.failed?
    $Log.error("scenario is failed #{scenario.title}")
  end
end