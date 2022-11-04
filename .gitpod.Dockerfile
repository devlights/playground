FROM gitpod/workspace-full-vnc:latest

USER gitpod

# Install Dart
RUN brew tap dart-lang/dart \
    && brew install dart \
    && printf '%s\n' 'export PATH=$HOME/.pub-cache/bin:$PATH' > $HOME/.bashrc.d/400-dart

# Install Python 3.10.7
RUN pyenv install 3.10.7 \
    && pyenv global 3.10.7
