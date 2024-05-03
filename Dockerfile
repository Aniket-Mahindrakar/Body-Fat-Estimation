# lightweight python
FROM python:3.8-slim

RUN apt-get update

# Copy local code to the container image.
RUN mkdir /body_fat_estimation && chown -R 42420:42420 /body_fat_estimation
ENV APP_HOME /body_fat_estimation
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

# Install dependencies
RUN pip install -r requirements.txt

# Run the streamlit on container startup
CMD ["gunicorn", "-b", "0.0.0.0:8501", "app:app"]