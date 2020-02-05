export PGDATA="/Library/PostgreSQL/9.6/data"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export JRE_HOME=$JAVA_HOME/jre
export ACTIVEMQ_HOME="/usr/local/apache-activemq-5.15.0"
#export GERONIMO_HOME="/usr/local/geronimo-tomcat7-javaee6-3.0.1/"
#export GERONIMO_HOME="/usr/local/geronimo-jetty6-javaee5-2.1.8"
export GERONIMO_HOME="/usr/local/geronimo-master-2.1.7/src/main/fakeroot/opt/geronimo-master/"

# commenting these paths out because it's already in my bash_profile and emacs is complaining about it being declared here
#export PATH=$ACTIVEMQ_HOME/bin:$JAVA_HOME:$PATH
# source /Users/parker.johnson/perl5/perlbrew/etc/bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
