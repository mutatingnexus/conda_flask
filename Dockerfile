FROM continuumio/miniconda3

WORKDIR /usr/src/app

COPY environment.yml app.py ./

RUN conda env create -f environment.yml

EXPOSE 8000

# ENTRYPOINT ["conda", "run", "-n", "conda_flask", "python", "app.py"]
ENTRYPOINT ["conda", "run", "-n", "conda_flask", "gunicorn", "-w", "2", "-b", "0.0.0.0", "app:gunicorn"]

