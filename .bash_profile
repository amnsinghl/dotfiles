#android related vars
REPO=/home/aman/repo
ANDROID_HOME=$REPO/android-sdk-linux
ANDROID_TOOLS=$ANDROID_HOME/tools
ANDROID_BUILD_TOOLS=$ANDROID_HOME/build-tools/23.0.2
ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
GRADLE=$REPO/gradle-2.12/bin
PATH="$PATH:$ANDROID_TOOLS:$ANDROID_BUILD_TOOLS:$ANDROID_PLATFORM_TOOLS:$GRADLE"

#git aware
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
