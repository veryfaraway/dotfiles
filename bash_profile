#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=`/usr/libexec/java_home`
export HADOOP_HOME='/Users/henry/Applications/hadoop'
export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HADOOP_HOME/share/hadoop/tools/lib/*
export SPARK_LOCAL_IP="127.0.0.1"

# customize prompt
export PS1="[\u@MBPr15:\W]$ "

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH=$PATH:/Users/henry/Applications/Play/activator/bin
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:/Users/henry/Applications/bin

export EDITOR='sl -w'

export JEKYLL_GITHUB_TOKEN=b6fcc6e6e282d4011a83a06c9a8cdea5f07eb997

export TEMP_DIR=~/.tmp

# Add bash aliases.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# AWS setting to enable bash completion
complete -C aws_completer aws

cd() { builtin cd "$@" && ls; }

presto() {
	~/Applications/presto/presto-cli.jar --server bigdata-adhoc-presto.coupang.net:8889 --catalog hive --schema default
}

ezplus() { 
	mkdir -p $TEMP_DIR/ezplus;
	cd $TEMP_DIR/ezplus;
	/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java -jar /Applications/EzPlusForMac.app/Contents/Resources/Java/SHBLauncher.jar;
	/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java -jar /Applications/EzPlusForMac.app/Contents/Resources/Java/SHBEzPlusMac.app/Contents/Resources/Java/SHBApp.jar;
	cd -;
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
