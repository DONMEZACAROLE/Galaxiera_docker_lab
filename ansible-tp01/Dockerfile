FROM nginx

RUN apt-get update && apt-get install -y openssh-server sudo

#Creation d'un utilisateur et d'un groupe
RUN groupadd galaxiera && useradd -ms /bin/bash -G galaxiera donmeza

# copy de la clé publique dans l'image
COPY andy.pub  /home/donmeza/.ssh/authorized_keys 

# creation du directorie de l'utilasteur donmeza 
RUN mkdir -p /home/donmeza/.ssh && chown -R donmeza:galaxiera /home/donmeza/.ssh/

RUN chmod 600 /home/donmeza/.ssh/authorized_keys

# retirer le mot de passe utilisateur lorsqu'il veut se donner des privilèges
RUN sudo passwd -d donmeza

# ajouter l'utilisateur dans le groupe sudo
RUN usermod -aG sudo donmeza

#RUN sudo apt install wget build-essential libncursesw5-dev libssl-dev -y \
#libsqlite3-dev libffi-dev zlib1g-dev -y

RUN sudo apt-get install software-properties-common -y
RUN sudo add-apt-repository ppa:deadsnakes/ppa
RUN sudo apt-get install python3
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
