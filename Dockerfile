FROM python:3.10-slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends

WORKDIR /usr/src/dbt

# Install the dbt Postgres adapter. This step will also install dbt-core
RUN pip install --upgrade pip
RUN pip install dbt-postgres==1.5.0
RUN pip install pytz

# Install dbt dependencies (as specified in packages.yml file)
# Build seeds, models and snapshots (and run tests wherever applicable)
EXPOSE 8080
CMD dbt deps && dbt build --profiles-dir . && sleep infinity \
    && dbt docs generate --profiles-dir . \
    && dbt docs serve --profiles-dir .