FROM python:3.12-slim

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the FastAPI app (replace index with your main script name if different)
CMD ["uvicorn", "index:app", "--host", "0.0.0.0", "--port", "80"]
