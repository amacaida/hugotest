rm -rf public/
hugo --gc --minify || exit 1
s3deploy -source=public/ -public-access -region=eu-west-1 -bucket=bep.is -distribution-id=E8OKNT7W9ZYZ2 -path temp/hugotest