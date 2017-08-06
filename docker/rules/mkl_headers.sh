curl -SL \
	https://www.dropbox.com/s/pzps5m45mnmv6ap/mkl_2017.0.3_include.tar.gz?dl=1 \
    -o mkl_2017.0.3_include.tar.gz \
    && tar xzf mkl_2017.0.3_include.tar.gz -C /conda/include --strip=1 \
    && rm mkl_2017.0.3_include.tar.gz
