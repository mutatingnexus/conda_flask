FROM continuumio/miniconda3

WORKDIR /usr/src/app

COPY environment.yml app.py ./

RUN conda env create -f environment.yml

EXPOSE 5000

ENTRYPOINT ["conda", "run", "-n", "conda_flask", "python", "app.py"]

