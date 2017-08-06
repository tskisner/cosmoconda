conda config --add channels intel \
    && conda install --copy --yes intelpython2_core \
    && rm -rf /conda/pkgs/*
