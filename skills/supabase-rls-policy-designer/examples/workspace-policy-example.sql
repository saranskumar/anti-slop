-- Example shape only
create policy "workspace members can read projects"
on public.projects
for select
using (
  exists (
    select 1
    from public.workspace_members wm
    where wm.workspace_id = projects.workspace_id
      and wm.user_id = auth.uid()
  )
);
