FROM gableroux/unity3d:2020.1.2f1

WORKDIR /root
COPY . .

# Install zsh
RUN apt-get update -yqq
RUN apt-get install -y zsh

# Clean up apt-get & Remove git
RUN apt-get clean
RUN rm -rf .git

# Trick out zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true


CMD ["zsh"]