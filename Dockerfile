FROM prefecthq/prefect:3-latest

# Expose Prefect UI port
EXPOSE 4200

# Start Prefect server
CMD ["prefect", "server", "start", "--host", "0.0.0.0"]