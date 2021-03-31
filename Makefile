export GCP_PROJECT=reduction-309302

test_large:
	httpstat "https://reduction.fly.dev/crop?width=500&height=400&url=https://raw.githubusercontent.com/h2non/imaginary/master/testdata/large.jpg"

gcr_submit:
	gcloud builds submit --app "${GCP_PROJECT}" --tag gcr.io/reduction-309302/helloworld
