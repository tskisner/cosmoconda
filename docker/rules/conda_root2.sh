curl -SL \
	https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh \
    -o miniconda.sh \
    && /bin/bash miniconda.sh -b -f -p /conda \
    && conda config --add channels intel \
    && conda config --remove channels intel \
    && conda install --copy --yes python=2 \
    && rm miniconda.sh \
    && rm -rf /conda/pkgs/*
