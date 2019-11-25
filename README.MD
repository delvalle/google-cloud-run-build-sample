# google-cloud-run-build-sample
Sample Project to work with **Google Cloud Run/Build**.

This is a sample project to test **Google Cloud Platform** using their services **Cloud Build** and **Cloud Run**.
A **Docker** container with an **Nginx** image will be deployed to host a simple static site.

---

## Products included:
- Google Cloud Build
- Google Cloud Run
- Docker
- Nginx

---

## Commands

To generate the distribution directory run:
- `npm run build` this build will be created under the `build/` directory.

To build using gcloud command-line run:
- `gcloud builds submit --tag gcr.io/YOURPROJECTID/hello-sample`

To deploy using gcloud command-line run:
-  `gcloud run deploy hello-sample --allow-unauthenticated --platform managed --image gcr.io/YOURPROJECTID/hello-sample`

---

## Pull Requests naming convention

Pull requests should follow this naming convention:
- ^(FEATURE|FIX|ENHANCEMENT|CHORE|REFACTOR): [a-zA-Z0-9._-]+$

Examples:
- FEATURE: adding a new extension for linting
- FIX: removing screen flicker in the About Us page

This naming convention is enforced.

---

## Pull Requests branch naming convention

Pull request branches should follow this naming convention:
- ^(feature|fix|enhancement|chore|refactor)\/master\/[a-z0-9._-]+$

Examples:
- feature/master/lint-extension
- fix/master/about-us-flicking

This naming convention is enforced.

---

Thanks!
