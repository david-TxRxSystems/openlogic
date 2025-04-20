module JellyfinBridge {
  param ServerIP = "192.168.1.20"
  param AuthToken = "YOUR_JELLYFIN_TOKEN"

  input digital Play, Pause, Stop, SkipNext, SkipPrev
  output string NowPlayingTitle, NowPlayingSummary
  output analog PlaybackPosition
  output digital IsPlaying, IsPaused

  input digital Refresh

  // Future: connect to Jellyfin API and emit real data
}
