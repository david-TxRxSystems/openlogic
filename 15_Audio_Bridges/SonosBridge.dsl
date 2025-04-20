module SonosBridge {
  param ZoneName = "Living Room"
  param IP = "192.168.1.101"

  input digital Play, Pause, Stop, Next, Prev, Mute
  input analog Volume
  output digital IsPlaying, IsMuted
  output analog VolumeFB
  output string NowPlayingTitle, Artist, Album

  // Future: Sonos UPnP or REST API integration
}
