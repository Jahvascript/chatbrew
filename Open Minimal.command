#!/bin/bash
# Request a separate app-style window in the existing Comet profile.
# Does not modify the profile, quit Comet, or change browser settings.
comet_binary='/Applications/Comet.app/Contents/MacOS/Comet'
if [ ! -x "$comet_binary" ]; then
  printf 'Comet was not found in /Applications. Open ChatGPT in Comet manually.\n'
  exit 1
fi
"$comet_binary" --app=https://chatgpt.com >/dev/null 2>&1 &
exit 0
