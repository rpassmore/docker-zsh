FROM alpine

RUN apk add --no-cache git zsh zsh-vcs

WORKDIR /root
#Install ZGen
RUN git clone https://github.com/tarjoilija/zgen.git ~/.zgen

#Copy config files
COPY ./src/.zshrc .zshrc 
COPY ./src/.zgen .zgen
#COPY ./src/.zcompdump .zcompdump

#RUN "${HOME}/.zgen/zgen.zsh"
#RUN ["/bin/zsh", "-c", "zgen", "reset"]
CMD ["zsh"]

#docker build -t rpassmore/docker-oh-my-zsh ./
#docker run -ti -v ~/Documents/Development:/home/node/Development rpassmore/docker-oh-my-zsh /bin/zsh

