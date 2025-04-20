module PlexBridge {
  param ServerIP = "192.168.1.10"
  param AuthToken = "YOUR_PLEX_TOKEN"

  // Playback controls
  input digital Play, Pause, Stop, SkipNext, SkipPrev
  output string NowPlayingTitle, NowPlayingSummary
  output analog PlaybackPosition
  output digital IsPlaying, IsPaused

  // Trigger to request latest metadata
  input digital Refresh

  // Future: map API polling and updates
}
