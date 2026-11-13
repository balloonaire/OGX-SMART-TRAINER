# OGX Smart Training Score v3

Standalone GitHub Pages-compatible pickleball coaching score tracker. No build tools or dependencies.

## Features
- Configurable **2–6 players**, each with separate name, optional age, gender, sports background, support/handicap level and adaptation notes.
- Difficulty options: Novice, Beginner, Intermediate, Advanced, Expert. Illustrative coaching benchmarks: 50%, 60%, 70%, 80%, 90% success, respectively; not official standards.
- Three drills: Dinking Control, Third-Shot Drop, Fast Hands.
- Individual live score selection, success/error buttons, optional 0–3 shot quality, undo and **Reset live training** (resets all live scores after confirmation; preserves saved history).
- Local browser storage, CSV export, JSON backup.

## Deploy to GitHub Pages
1. Upload `index.html` and `README.md` to the root of your GitHub repository.
2. In GitHub, open Settings → Pages → Build and deployment.
3. Select Deploy from a branch, `main`, `/ (root)`, and Save.
4. Wait for the Pages URL to appear.

## Notes
- Starting/applying settings clears live attempts after confirmation; saving before changing settings is recommended.
- Data is stored **only on the current device/browser**. No cross-device sync or authentication.
- Support levels are voluntary training adaptations, not medical diagnoses. Age and gender do not automatically determine handicap or score.
- Do not use this system for official match scoring.

## v4 training drills
Added Drive, Reset, Backhand Drive, Smash, and Lob to the existing Dinking Control, Third-Shot Drop, and Fast Hands drills. Each drill can be selected for a session; its name is saved in session history and CSV exports. The Reset drill is separate from the Reset Live Training button.
