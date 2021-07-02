FROM lambci/lambda:build-go1.x

ENV AWS_DEFAULT_REGION us-east-1

COPY . .

#RUN npm install

RUN zip -9yr lambda.zip .

CMD aws lambda update-function-code --function-name mylambda --zip-file fileb://lambda.zip