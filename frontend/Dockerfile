from debian

RUN apt-get update
RUN apt-get install --yes  git
RUN git clone https://github.com/JoeX2/jwtToken-react-express.git

RUN apt-get install --yes  curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

WORKDIR "/jwtToken-react-express/frontend"
RUN npm install bcryptjs cookie-parser cors dotenv express jsonwebtoken
RUN npm install -g typescript serve
RUN npm audit fix
RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "build"]
