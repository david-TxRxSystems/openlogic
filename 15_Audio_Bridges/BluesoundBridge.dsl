module BluesoundBridge {
  param IP = "192.168.1.102"

  input digital Play, Pause, Stop, Next, Prev, Mute
  input analog Volume
  output digital IsPlaying, IsMuted
  output analog VolumeFB
  output string NowPlayingTitle, Artist, Album

  // Future: Use Bluesound API (http://IP:11000/Status)
}
