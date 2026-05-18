#базовый образ
FROM fedora:31
#установка зависимостей для сборки 
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
#установка рабочей директории внутри контейнера
WORKDIR /app
#копирование всех файлов проекта в контейнер
COPY . /app
#дать права на выполнение скрипта сборки
RUN chmod +x build.sh
#команда которая запускается при старте контейнера
CMD ["./build.sh"]