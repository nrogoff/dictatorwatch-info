# Copilot Instructions for DictatorWatch.info

Use this file as the repo-specific source of truth for AI-assisted changes in this workspace. Keep guidance grounded in files that exist here today.

## Repository Purpose

DictatorWatch.info is a work-in-progress website focused on tracking how far specific world leaders appear to have progressed toward full autocracy. The current product surface is a static React site backed by checked-in JSON data, plus a separate SQL Server database project that models the same domain for future structured storage and deployment.

## Repository Structure

- `apps/web` - implemented React frontend built with `react-scripts`
- `apps/web/public` - deployed static JSON datasets, images, manifest, and SPA host assets
- `apps/web/src` - implemented UI components for the summary page, profile page, and progress route shell
- `data/seed` - source JSON seed/reference data kept alongside the repo
- `data/databases/sqlserver/dictatorwatch-info-db` - implemented SQL Server database project and seed scripts
- `build` - generated frontend build output; treat as generated artifact, not primary source
- `infra/azure` - scaffold only; currently contains `.gitkeep` and no deployable IaC
- `packages` - scaffold only; currently contains `.gitkeep`
- `.github/workflows` - GitHub Actions workflow for Azure Static Web Apps deployment

## Current State Notes

- Implemented: the frontend root route renders a searchable summary list sourced from `apps/web/public/dictatorsProfiles.json`.
- Implemented: the frontend has a dictator profile route that renders biography, metadata, and gauge-based progress details.
- Partial: the dictator progress route exists and handles missing navigation state, but currently returns only an empty card for valid data.
- Implemented: the SQL project defines core tables under `dbo/Tables` and packages post-deployment seed scripts from `Data/Seeding`.
- Scaffold only: `infra/azure` and `packages` have no functional code yet.
- Stale scaffold: the Azure Static Web Apps workflow still declares `api_location: "api"`, but no `api/` folder exists in the repository.
- Operational note: `build/` is checked in, but it is output from the frontend build and should not be hand-edited.

## Technology Stack

### Frontend

- JavaScript React 18
- `react-dom` with the legacy `ReactDOM.render` entry point
- `react-router-dom` 7 for client-side routing
- Bootstrap 5 for base styling
- `react-gauge-component` for progress visualization
- Create React App tooling via `react-scripts` 5
- `web-vitals` via the default CRA reporting hook

### Data Assets

- Static JSON datasets in `apps/web/public`
- Parallel seed/reference JSON files in `data/seed`
- Static profile images in `apps/web/public/images/profile`

### Database

- SQL Server project using `MSBuild.Sdk.SqlProj/4.3.0`
- `net8.0` target for project tooling
- `SqlAzure` model target in the SQL project
- Post-deployment seed packaging through `Script.PostDeployment1.sql`

### Delivery and Tooling

- GitHub Actions workflow for Azure Static Web Apps deployment
- `staticwebapp.config.json` with SPA navigation fallback
- VS Code launch configuration for local Edge debugging on `http://localhost:3000`
- VS Code cSpell configuration with project-specific names and terms

## Active Projects

### Implemented

- `apps/web`: the active product frontend
- `data/databases/sqlserver/dictatorwatch-info-db`: the active database schema project
- `data/seed`: active source data for JSON-backed content

### Scaffold or Placeholder

- `infra/azure`: reserved for future Azure infrastructure code
- `packages`: reserved for future shared packages or contracts
- `apps/web/src/dictator-progress`: route shell exists, but the feature is not meaningfully implemented yet

## Coding Expectations

- Keep frontend changes in plain JavaScript unless the repository adopts TypeScript explicitly.
- Follow the existing React style: function components, module-local CSS files, and route components under `apps/web/src`.
- Preserve the current JSON-backed data flow unless the change explicitly introduces a new, repo-backed source of truth.
- When changing data fields, update all consumers that rely on those properties across `apps/web/src`, `apps/web/public`, and `data/seed` as needed.
- Use existing route shapes unless the task explicitly includes route migration work:
  - `/`
  - `/dictatorprofile/:sanitizedName`
  - `/dictatorprogress/:sanitizedName`
- Do not hand-edit files under `build/`; regenerate them from `apps/web` with the build command if they must be refreshed.
- Keep placeholder areas labeled as placeholder until implementation exists in the repo.
- For SQL changes, keep table definitions and post-deployment seeding scripts aligned.

## Testing Conventions

- Frontend tests should follow the existing CRA/Jest convention under `apps/web/src` using `*.test.js`, `*.spec.js`, or `__tests__` folders.
- The frontend currently has no test files. Treat missing tests as a known gap, not as an implicit signal to skip validation.
- When modifying data-driven UI behavior, prefer focused tests around filtering, routing state, and rendering of JSON-backed fields.
- The SQL project currently has no dedicated automated test project in the repo.
- For database changes, validate at minimum with a local project build and a review of post-deployment seed ordering.

## Build and Validation

### Frontend

Install dependencies and run the development server from `apps/web`:

```powershell
Set-Location apps/web
npm ci
npm start
```

Build the deployable static site from `apps/web`:

```powershell
Set-Location apps/web
npm run build
```

Run the existing CRA test command in CI mode from `apps/web`:

```powershell
Set-Location apps/web
$env:CI = 'true'
npm test -- --watch=false
```

Current behavior: this command exits with code `1` because the repository does not yet contain any frontend test files.

If you need a non-failing verification run while the suite is still empty, use:

```powershell
Set-Location apps/web
$env:CI = 'true'
npm test -- --watch=false --passWithNoTests
```

### Database

Build the SQL Server solution from `data/databases/sqlserver/dictatorwatch-info-db`:

```powershell
Set-Location data/databases/sqlserver/dictatorwatch-info-db
dotnet build .\dictatorwatch.info.db.sln
```

## Pipelines and Infrastructure

- GitHub Actions workflow: `.github/workflows/azure-static-web-apps-kind-dune-046f56603.yml`
- Current deploy target: Azure Static Web Apps for the frontend in `apps/web`
- Current workflow triggers: pushes to `main` and pull request open/sync/reopen/close events targeting `main`
- Current deploy action: `Azure/static-web-apps-deploy@v1`
- Current app build configuration in the workflow:
  - `app_location: "apps/web"`
  - `output_location: "build"`
  - `api_location: "api"` even though no `api/` directory exists today
- No implemented infrastructure-as-code assets exist under `infra/azure` yet.
- No separate CI pipeline exists for the SQL project in this repository.

## Security and Configuration

- Treat everything under `apps/web/public` as publicly deployable content.
- Do not place secrets, tokens, or private environment-specific settings in the frontend source or public JSON files.
- The Azure Static Web Apps deployment token is expected to live only in the GitHub Actions secret `AZURE_STATIC_WEB_APPS_API_TOKEN_KIND_DUNE_046F56603`.
- `apps/web/staticwebapp.config.json` currently configures only SPA fallback to `/index.html`.
- No server-side authentication, authorization, or secret-loading code exists in this repo today.
- Keep cSpell additions in `.vscode/settings.json` synchronized with project-specific proper nouns that appear in code or data.

## Working Rules for This Repository

- Ground changes in the implemented stack that exists here now: React frontend, static JSON data, and a separate SQL project.
- Do not assume the repository already contains an API backend, shared package library, Azure Functions app, or finished IaC layer.
- Distinguish clearly between implemented behavior and placeholders in code, docs, and generated guidance.
- When editing JSON-backed content, verify whether the same data must be updated in both `apps/web/public` and `data/seed`.
- When changing the frontend routes or navigation state shape, update all route producers and consumers in the same change.
- Prefer minimal, focused changes over broad restructuring; this codebase is still small and partially scaffolded.
- If a change affects deployment assumptions, review `.github/workflows/azure-static-web-apps-kind-dune-046f56603.yml` and `apps/web/staticwebapp.config.json` together.
- If a change affects the database schema, review `Data/Seeding/Script.PostDeployment1.sql` together with the affected table scripts.

## Maintenance Checklist

- Keep `apps/web/public/*.json` and `data/seed/*.json` synchronized when the same dataset is represented in both places.
- Rebuild `apps/web` after frontend changes if the committed `build/` output is expected to stay current.
- Add or update frontend tests when introducing non-trivial UI logic or data transformation.
- Re-run the SQL project build after schema or seed script changes.
- Remove or correct stale scaffold references such as the missing `api/` path in the Static Web Apps workflow when appropriate.
- Keep dependency and tooling warnings under review, especially the current CRA and Browserslist warnings during `npm run build`.
- Update `.vscode/settings.json` when adding new names or domain-specific spellings that should pass workspace spell-check.
