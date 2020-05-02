from debian

RUN apt-get update
RUN apt-get install --yes  git
RUN git clone https://github.com/JoeX2/jwtToken-react-express.git

RUN apt-get install --yes  curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

WORKDIR "/jwtToken-react-express/server"
RUN npm install bcryptjs cookie-parser cors dotenv express jsonwebtoken
RUN npm audit fix

VOLUME ["/config"]
EXPOSE 4000

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "start"]
