#!/usr/bin/env sh
##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
PRG="$0"
while [ -h "$PRG" ]; do
  ls=$(ls -ld "$PRG")
  link=$(expr "$ls" : '.*-> \(.*\)$')
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=$(dirname "$PRG")/"$link"
  fi
done

APP_HOME=$(dirname "$PRG")
APP_HOME=$(cd "$APP_HOME" && pwd)

# Ensure JAVA_HOME is set
if [ -z "$JAVA_HOME" ]; then
  echo "Error: JAVA_HOME is not set."
  exit 1
fi

JAVA="$JAVA_HOME/bin/java"

# Default JVM options
DEFAULT_JVM_OPTS="-Xmx64m"

# Build command
"$JAVA" $DEFAULT_JVM_OPTS -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
