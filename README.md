# OGX Smart Club Management v25 — Option B

Includes the full OGXTC Smart Analysis v24 training application, plus a functional attendance register, club dashboard, invoices, partial payments, expenses, and CSV export.

## Run
Open `index.html` in a browser, or upload it to GitHub Pages. No build step is required.

## Important security status
**This is an offline/localStorage prototype, NOT a deployed central database.** No authentication or cloud sync is configured. Do not use for sensitive player or financial data in production. Browser data can be lost and is not shared between devices. A PostgreSQL/Supabase relational schema is included in `database/schema.sql` for the secure backend implementation phase. Before production: deploy authenticated backend, RLS, permissions, backups, audit logs, and replace browser persistence with authorised server-side operations.

## Core architecture
Frontend: static HTML/CSS/JS, preserving training module.
Backend target: Supabase Auth + PostgreSQL + RLS + secured API (not yet connected).
Modules: Training (v24), Player Profiles, Attendance, Basic Accounts, Club Dashboard.

## Test
`node --check` on all inline scripts; `unzip -t`; Chromium headless smoke test where available.
