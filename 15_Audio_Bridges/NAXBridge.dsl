module NAXBridge {
  param IP = "192.168.1.103"
  param ZoneID = 1

  input digital Play, Pause, Stop, Mute
  input analog Volume
  input enum SourceSelect { SPOTIFY, AIRPLAY, HDMI1, HDMI2, DANTE1 }

  output digital IsPlaying, IsMuted
  output analog VolumeFB
  output string NowPlayingTitle, Artist, Album

  // Future: Use Crestron NAX REST API
}
