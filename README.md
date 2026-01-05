# Resume

LaTeX resume with Docker-based PDF compilation.

## Requirements

- Docker

## Usage

Build the Docker image and generate the PDF:

```bash
make all
```

Or run individual steps:

```bash
make build   # Build Docker image
make pdf     # Generate PDF
make open    # Generate and open PDF (macOS)
make clean   # Remove auxiliary files
```

## License

MIT
