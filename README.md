# OGX Smart Club Management v62

Based on the uploaded v61 HTML, preserving existing scoring, session, club, court, and movement code.

## Video integration
- Master ON/OFF; default OFF for new browser settings. Previously saved ON/OFF preferences remain respected.
- Default mode A (Embedded).
- Mode A: moves the existing video element into Live Training & Drills (no duplicate camera stream).
- Mode B: video remains in Player Movement Analysis; player and drill selections synchronize with Live Training & Drills.
- Mode C: embedded video + synchronization + manually entered timestamp markers, with CSV export.
- Switching modes or disabling does not call training reset, clear scoring, clear history, or stop camera.
- Settings and markers persist in browser localStorage. Video files and frames are not persisted.

## Usage
1. Open HTML in a browser. Choose Video Integration mode and enable/disable as needed.
2. Use Open Movement Analysis / Camera Controls to start camera or upload a video.
3. Return to Live Training to view embedded video in modes A/C.
4. Mode C permits manual timestamp markers and CSV export.

## Limitations
- Camera requires browser permission and generally HTTPS/localhost.
- Mode B synchronizes player and drill selection, not the video frames; the video remains in the Movement Analysis workspace.
- No AI pose tracking or automatic movement assessment.
- Video is not recorded or uploaded by the application.
- Existing v61 camera handler stops the camera when the browser document becomes hidden.
- Local video files must be reselected after a page reload.

## Verification
Static checks performed on the generated HTML. Browser end-to-end interaction testing may be unavailable in this environment; verify camera and live scoring on the target browser before operational use.
