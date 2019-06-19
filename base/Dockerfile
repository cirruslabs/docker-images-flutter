FROM cirrusci/android-sdk:28

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US:en

RUN sudo apt-get update \
    && sudo apt-get install -y --allow-unauthenticated --no-install-recommends lib32stdc++6 libstdc++6 libglu1-mesa locales \
        lcov \
    && sudo rm -rf /var/lib/apt/lists/*

RUN sudo wget -O /usr/bin/android-wait-for-emulator https://raw.githubusercontent.com/travis-ci/travis-cookbooks/master/community-cookbooks/android-sdk/files/default/android-wait-for-emulator && \
    sudo chmod +x /usr/bin/android-wait-for-emulator && \
    sudo sh -c 'echo "en_US.UTF-8 UTF-8" > /etc/locale.gen' && \
    sudo locale-gen && \
    sudo update-locale LANG=en_US.UTF-8
