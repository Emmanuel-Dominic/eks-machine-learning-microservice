FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
RUN python3 -m venv venv
# hadolint ignore=DL3013
# shellcheck disable=SC1091
RUN . venv/bin/activate

ENV PATH="venv/bin:$PATH"

# Install packages from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
ENTRYPOINT ["python3", "app.py"]
