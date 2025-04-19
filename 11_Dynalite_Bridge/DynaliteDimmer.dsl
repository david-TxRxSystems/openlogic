module DynaliteDimmer {
  param Area = 1
  param Channel = 1
  param RampTime = 2.0

  input analog LevelIn
  output analog LevelOut
  output analog Feedback

  on change(LevelIn) do
    emit LevelOut => LevelIn
    // Bridge will map to: Channel,<Area>,<Channel>,<LevelIn>
  end

  on change(LevelOut) do
    emit Feedback => LevelOut
  end
}
