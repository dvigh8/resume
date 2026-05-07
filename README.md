# Resume

LaTeX resume with Docker-based PDF compilation via `mise` tasks.

## Requirements

- mise
- Docker

## Usage

Build the Docker image and generate the PDF:

```bash
mise run
```

Or run individual steps:

```bash
mise run build                      # Build Docker image
mise run pdf                        # Generate PDF
mise run pdf Resume_David_Vigh.tex  # Generate a different source file
mise run all Resume_David_Vigh.tex  # Full flow with a different source file
mise run open                       # Generate and open PDF (macOS)
mise run clean                      # Remove auxiliary files
```

You can also override the source file with `TEX_FILE`, for example:

```bash
TEX_FILE=Resume_David_Vigh.tex mise run pdf
```

## License

MIT
