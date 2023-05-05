FROM  smarlino/ubuntu-cible:1.0

#Creation d'un utilisateur et d'un groupe
RUN useradd -ms /bin/bash -G galaxiera donmeza

# copy de la clé publique dans l'image
COPY dtec.pub  /home/donmeza/.ssh/authorized_keys 

# creation du directorie de l'utilasteur donmeza 
RUN mkdir -p /home/donmeza/.ssh && chown -R donmeza:galaxiera /home/donmeza/.ssh/

RUN chmod 600 /home/donmeza/.ssh/authorized_keys

RUN apt-get install sudo
# retirer le mot de passe utilisateur lorsqu'il veut se donner des privilèges
RUN sudo passwd -d donmeza

# ajouter l'utilisateur dans le groupe sudo
RUN usermod -aG sudo donmeza
