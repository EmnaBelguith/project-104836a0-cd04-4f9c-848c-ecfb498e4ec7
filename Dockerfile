FROM python:3.10-slim
WORKDIR /opt/my_project
COPY requirements.txt .
RUN pip install -r requirements.txt # Install all necessary Python packages
EXPOSE 5000
ENV FLASK_APP app.py # The main application file is located in 'app.py'
ENV PYTHONDONTWRITEBYTECODE=1 # This tells Flask to not write bytecode for scripts that are not runnable inside a Python interpreter
ENV PYTHONDOTWOBODIES=1 # This tells Flask to also write bytecode to disk for scripts that are runnable in a Python interpreter
ARG ENV_VARS
CMD ["python", "app.py"] # Start the application on port 5000 and expose env variables for configuration