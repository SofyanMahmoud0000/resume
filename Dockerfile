FROM ubuntu
LABEL creator.name="Sofyan"
LABEL creator.email="sofyan1020@gmail.com"
WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt install texlive-latex-extra latexmk -y
RUN apt install texlive-fonts-extra -y
RUN apt install texlive-luatex -y
RUN luaotfload-tool --update

CMD ["sh", "-c", "sed -i -E \"s/[0-9]+\\+ years of experience/${YEARS_OF_EXP:-4}+ years of experience/\" *.tex && lualatex *.tex"]