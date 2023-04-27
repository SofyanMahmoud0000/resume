FROM ubuntu
LABEL creator.name="Sofyan"
LABEL creator.email="sofyan1020@gmail.com"
WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt install texlive-latex-extra latexmk -y

CMD ["sh", "-c", "pdflatex *.tex"]