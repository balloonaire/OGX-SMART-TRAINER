-- PostgreSQL target schema (design migration; NOT deployed)
-- All tables are private by default with RLS enabled.
create extension if not exists pgcrypto;
create table if not exists club_players (id uuid primary key default gen_random_uuid(), display_name text not null, gender text check (gender in ('F','M') or gender is null), age_group text, created_at timestamptz not null default now());
create table if not exists club_sessions (id uuid primary key default gen_random_uuid(), session_date date not null, coach_name text, court text not null check(court in ('A','B','Both')), drill text, created_at timestamptz not null default now());
create table if not exists club_attendance (session_id uuid not null references club_sessions(id), player_id uuid not null references club_players(id), status text not null check(status in ('Present','Late','Absent','Excused')), checked_at timestamptz default now(), primary key(session_id,player_id));
create table if not exists club_training_attempts (id uuid primary key default gen_random_uuid(), session_id uuid references club_sessions(id), player_id uuid references club_players(id), drill text, outcome text check(outcome in ('success','error')), quality smallint check(quality between 0 and 3), created_at timestamptz default now());
create table if not exists club_substitutions (id uuid primary key default gen_random_uuid(), session_id uuid references club_sessions(id), outgoing_player_id uuid references club_players(id), incoming_player_id uuid references club_players(id), reason text, created_at timestamptz default now());
create table if not exists club_invoices (id uuid primary key default gen_random_uuid(), player_id uuid not null references club_players(id), issued_on date not null, description text not null, amount_minor bigint not null check(amount_minor>0), currency char(3) not null default 'MYR', created_at timestamptz default now());
create table if not exists club_payments (id uuid primary key default gen_random_uuid(), invoice_id uuid not null references club_invoices(id), paid_on date not null, amount_minor bigint not null check(amount_minor>0), method text not null, created_at timestamptz default now());
create table if not exists club_expenses (id uuid primary key default gen_random_uuid(), spent_on date not null, category text not null, description text not null, amount_minor bigint not null check(amount_minor>0), created_at timestamptz default now());
create table if not exists club_audit_logs (id uuid primary key default gen_random_uuid(), actor_id uuid, action text not null, entity_type text not null, entity_id uuid, details jsonb, created_at timestamptz default now());
alter table club_players enable row level security;
alter table club_sessions enable row level security;
alter table club_attendance enable row level security;
alter table club_training_attempts enable row level security;
alter table club_substitutions enable row level security;
alter table club_invoices enable row level security;
alter table club_payments enable row level security;
alter table club_expenses enable row level security;
alter table club_audit_logs enable row level security;
-- Deliberately no policies: access is denied to public/authenticated clients
-- until role-based policies, server-side payment limits, and audit triggers are implemented and reviewed.
