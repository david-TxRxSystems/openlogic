module SpotifyBridge {
  param ClientID = "your_spotify_client_id"
  param ClientSecret = "your_spotify_client_secret"
  param DeviceName = "Living Room" // Spotify Connect target

  input digital Play, Pause, Next, Previous, TransferPlayback
  input analog Volume
  output analog VolumeFB
  output digital IsPlaying
  output string NowPlayingTitle, Artist, Album

  // Requires Spotify Premium and registered app
  // Uses Spotify Web API (https://developer.spotify.com/documentation/web-api/)
}
