FROM fedora:31

RUN yum -y update && yum install -y \
    texlive-collection-latexrecommended \
    texlive-collection-fontsrecommended \
    texlive-collection-pictures \
    texlive-collection-science \
    texlive-collection-langcyrillic \
    texlive-collection-latexextra \
    texlive-fontawesome5 \
    texlive-collection-fontsextra \
    texlive-xetex \
    biber \
    && yum clean all

WORKDIR /app

COPY . /app

RUN chmod +x build.sh

CMD ["./build.sh"]