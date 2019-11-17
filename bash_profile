#export HADOOP_HOME='/Users/henry/Applications/hadoop/'
#export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:${HADOOP_HOME}share/hadoop/tools/lib/*
#export SCALA_HOME=/usr/local/opt/scala/libexec
export SCALA_HOME=/usr/local/opt/scala/idea
export SPARK_LOCAL_IP="127.0.0.1"
export SPARK_HOME=/usr/local/opt/apache-spark/libexec
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GRADLE_HOME=/usr/local/opt/gradle/libexec
export PATH="/usr/local/sbin:/Users/${USER}/Library/Python/3.7/bin:$PATH"
export GEM_HOME=~/.gem
export GEM_PATH=~/.gem
export LC_ALL=en_US.UTF-8

# customize prompt
export PS1="[\u@MBPr15:\W]$ "

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

#export PATH=$PATH:/Users/henry/Applications/Play/activator/bin
export PATH="$PATH:/Users/${USER}/Applications/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export EDITOR='subl -w'

export JEKYLL_GITHUB_TOKEN=b6fcc6e6e282d4011a83a06c9a8cdea5f07eb997

export TEMP_DIR=/tmp

# Add bash aliases.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# AWS setting to enable bash completion
complete -C aws_completer aws

cd() { builtin cd "$@" && ls; }

#export METASTORE="bigdata-adhoc-presto.coupang.net"
export METASTORE="internal-bdp-presto-zeppelin-1087955549.ap-northeast-2.elb.amazonaws.com"

presto() {
	~/Applications/presto/presto-cli.jar --server ${METASTORE}:8889 --catalog hive --schema default
}

ezplus() { 
	mkdir -p $TEMP_DIR/ezplus;
	cd $TEMP_DIR/ezplus;
	/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java -jar /Applications/EzPlusForMac.app/Contents/Resources/Java/SHBLauncher.jar;
	/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java -jar /Applications/EzPlusForMac.app/Contents/Resources/Java/SHBEzPlusMac.app/Contents/Resources/Java/SHBApp.jar;
	cd -;
}

sshAddCoupang() {
	ssh-add -K ~/.ssh/id_rsa_coupang
	ssh-add	-K ~/.ssh/id_rsa_coupang_github
	ssh-add	-K ~/.ssh/id_rsa
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
