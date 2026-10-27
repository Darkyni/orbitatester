-- ORBITA: execute no Supabase SQL Editor, caso ainda não tenha executado.
create table if not exists public.orbita_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.orbita_progress enable row level security;
revoke all on table public.orbita_progress from anon, authenticated;
grant select, insert, update, delete on table public.orbita_progress to authenticated;
drop policy if exists "Users can read own ORBITA progress" on public.orbita_progress;
create policy "Users can read own ORBITA progress" on public.orbita_progress for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "Users can insert own ORBITA progress" on public.orbita_progress;
create policy "Users can insert own ORBITA progress" on public.orbita_progress for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "Users can update own ORBITA progress" on public.orbita_progress;
create policy "Users can update own ORBITA progress" on public.orbita_progress for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
drop policy if exists "Users can delete own ORBITA progress" on public.orbita_progress;
create policy "Users can delete own ORBITA progress" on public.orbita_progress for delete to authenticated using ((select auth.uid()) = user_id);
