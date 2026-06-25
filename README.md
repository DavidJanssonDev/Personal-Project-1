# Personal Project 1

A terminal UI application built with [Textual](https://github.com/Textualize/textual).

## Prerequisites

Before setting up the project, make sure you have the following installed:

- [Python 3.9+](https://www.python.org/downloads/)
- [Git](https://git-scm.com/)
- [Make (GnuWin32)](https://gnuwin32.sourceforge.net/packages/make.htm) — required to run Makefile commands on Windows
  - After installing, add `C:\Program Files (x86)\GnuWin32\bin` to your system PATH

## Setup

### 1. Clone the repository

```bash
git clone --recurse-submodules https://github.com/your-username/your-repo.git
cd your-repo
```

> The `--recurse-submodules` flag is required to also clone the Textual library located in `vendor/textual`.

### 2. Create and activate a virtual environment

```bash
python -m venv .venv
.venv\Scripts\activate
```

### 3. Install dependencies

```bash
make install
```

This installs all packages listed in `requirements.txt`.

### 4. Build offline documentation (optional, one-time setup)

```bash
make setup-docs
```

This will:
- Initialize the `vendor/textual` submodule
- Install Textual from the local submodule
- Install documentation build tools from `requirements-docs.txt`
- Build the offline documentation site into `vendor/textual/docs-offline/`

> This step requires an internet connection the first time to install dependencies.  
> Once built, the documentation is fully available offline.

## Usage

### Run the application

```bash
make run
```

### Open offline documentation

```bash
make dev-doc
```

Opens the full Textual documentation in your browser, no internet required.

## Project Structure

```
Personal-Project-1/
├── vendor/
│   └── textual/          # Textual library (git submodule)
│       └── docs-offline/ # Built offline documentation (generated)
├── src/                  # Application source code
├── tests/                # Tests
├── .venv/                # Virtual environment (not committed)
├── Makefile
├── requirements.txt      # Runtime dependencies
└── requirements-docs.txt # Documentation build dependencies
```

## Makefile Commands

| Command           | Description                                      |
|-------------------|--------------------------------------------------|
| `make run`        | Run the application                              |
| `make install`    | Install runtime dependencies                     |
| `make setup-docs` | Build offline Textual docs (run once after clone)|
| `make dev-doc`    | Open offline documentation in browser            |