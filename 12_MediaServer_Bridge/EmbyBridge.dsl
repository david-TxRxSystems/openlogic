module EmbyBridge {
  param ServerIP = "192.168.1.30"
  param AuthToken = "YOUR_EMBY_TOKEN"

  input digital Play, Pause, Stop, SkipNext, SkipPrev
  output string NowPlayingTitle, NowPlayingSummary
  output analog PlaybackPosition
  output digital IsPlaying, IsPaused

  input digital Refresh

  // Future: connect to Emby API and emit real data
}
