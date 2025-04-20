# 🎧 Spotify Bridge

This module allows OpenLogic to control existing **Spotify Connect** devices using the official Spotify Web API.

## Features

- Play / Pause / Next / Previous
- Transfer playback to a specific device (e.g. Living Room Speaker)
- Adjust volume
- Display track metadata

## Requirements

- Spotify Premium account
- A Spotify developer app with `Client ID` and `Client Secret`
- Token-based authentication (OAuth2)

## Setup

1. Register an app at https://developer.spotify.com/dashboard
2. Get your `Client ID` and `Client Secret`
3. Add them as parameters in `SpotifyBridge.dsl`
4. Use the Python helper script (coming soon) to obtain an access token
5. The bridge will issue API calls to Spotify to control your chosen device

