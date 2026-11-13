# OGX Smart Training Score

A browser-based pickleball **training assessment** app for OGX Trainer Club. This is a standalone prototype, separate from competitive match scoring.

## Features
- Dinking Control, Third-Shot Drop, and Fast Hands drills
- Beginner / Intermediate / Advanced settings
- Coach-controlled success/error tracking with undo
- Optional 0–3 quality scoring (0=error, 1=low, 2=good, 3=excellent); ratings 2–3 count as successful
- Configurable target attempt count
- Player name and coaching notes
- Session history saved in browser localStorage
- CSV export and JSON backup
- Mobile-friendly design, no external dependencies

## Run locally
Open `index.html` in any modern browser. No build step is needed.

## Publish with GitHub Pages
1. Create a public repository (or a repository eligible for Pages under your plan).
2. Upload `index.html` and `README.md` to the repository root.
3. Open **Settings → Pages**.
4. Under **Build and deployment**, select **Deploy from a branch**.
5. Choose `main` and `/ (root)`, then save.
6. Wait for GitHub Pages to publish the site at the URL shown in Pages settings.

## Scoring definitions
- Success rate = successful attempts / total attempts × 100.
- Quality mode: 0 and 1 are unsuccessful; 2 and 3 are successful. Average quality is the arithmetic mean of graded attempts.
- Target attempts is a coaching objective, not a hard stop.
- Saved records represent snapshots: saving again in the same session updates that record.

## Important limitations
- This is a **single-device**, **offline-first** training prototype; no backend, authentication, cross-device sync, or shared live scoring.
- Local data can be lost if browser storage is cleared. Export backups regularly.
- CSV/JSON exports contain names and notes; handle them appropriately.
- The app does not claim to measure actual reaction time or automatically detect shot placement. Coaches record observations manually.
- Training scores are not official pickleball or DUPR results.

## Brand palette
Onyx `#010101` · Electric Indigo `#6331FB` · Tropical Mint `#88E8C0`.
