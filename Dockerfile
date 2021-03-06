FROM alpine

RUN apk add --no-cache git zsh zsh-vcs

WORKDIR /root
#Install ZGen
RUN git clone https://github.com/tarjoilija/zgen.git ~/.zgen

#Copy config files and make dotfiles
COPY ./src/zshrc .zshrc 
COPY ./src/zgen .zgen

CMD ["zsh"]

#docker build -t rpassmore/docker-zsh ./
#docker run -ti -v ~/Documents/Development:/home/node/Development rpassmore/docker-zsh /bin/zsh

