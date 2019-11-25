# google-cloud-run-build-sample
Sample Project to work with **Google Cloud Run/Build**.

This is a sample project to test **Google Cloud Platform** using their services **Cloud Build** and **Cloud Run**.
A **Docker** container with an **Nginx** image will be deployed to host a simple static site.

---

## Products used on this project:
- Google Cloud Build
- Google Cloud Run
- Docker
- Nginx

---

## Pull Requests naming convention

Pull requests should follow this naming convention:
- ^(FEATURE|FIX|ENHANCEMENT|CHORE|REFACTOR): [a-zA-Z 0-9._-]+$

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

---

## Commands

To generate the distribution directory run:
- `npm run build` this build will be created under the `build/` directory.

Before running the gcloud command-line tools, you may need to, authenticate:
- `gcloud auth login`

And select your project (replace YOURPROJECTID with your own):
- `gcloud config set project YOURPROJECTID`

To build using gcloud command-line run:
- `gcloud builds submit --tag gcr.io/YOURPROJECTID/hello-sample`

To deploy using gcloud command-line run:
-  `gcloud run deploy hello-sample --allow-unauthenticated --region us-central1 --platform managed --image gcr.io/YOURPROJECTID/hello-sample --project YOURPROJECTID`

All-in-one command:
- `gcloud components update --quiet && npm i && npm run build && gcloud builds submit --tag gcr.io/YOURPROJECTID/hello-sample && gcloud run deploy hello-sample --allow-unauthenticated --region us-central1 --platform managed --image gcr.io/YOURPROJECTID/hello-sample --project YOURPROJECTID`

---

Thanks!
