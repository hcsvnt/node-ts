# ts-starter

A modern Express starter with TypeScript, ESM and Hot Reload.

## Author

- **Name:** Mateusz Hallala
- **Email:** hallalwa.work@gmail.com
- **github:** https://github.com/hcsvnt
- **URL:** https://hallala.work

## License

This project is licensed under the ISC License.

## Prerequisites

Before you begin, ensure you have met the following requirements:
* You have installed the latest version of [Node.js](https://nodejs.org/en/download/).
* You have installed [pnpm](https://pnpm.io/installation) (or enabled it via `corepack enable`).

## Installation

To install the project dependencies, run the following command in your terminal:

```bash
pnpm install
```

## Available Scripts

In the project directory, you can run:

### `pnpm run build`

Builds the app for production to the `dist` folder.
It correctly bundles TypeScript files in production mode.

### `pnpm run dev`

Runs the app in development mode with hot reloading using `nodemon`.
Open [http://localhost:8000](http://localhost:8000) (or the port specified in your `.env` file or `src/index.ts`) to view it in the browser.
The server will automatically reload if you make changes to the code.
You will see any lint errors in the console.

### `pnpm start`

Runs the built app from the `dist` folder.
This is the command you would typically use in a production environment after building the project.
It expects a `.env` file in the root directory for environment variables (e.g., `PORT`).

### `pnpm run publish`

Builds the project and publishes it to npm. Make sure you are logged in to npm and have the necessary permissions.

### `pnpm run update`

Increments the patch version of the package, builds the project, and then publishes it to npm.

### `pnpm test`

Currently, this script echoes an error message and exits. You should replace this with your actual test command.

## Project Structure

```
.
├── nodemon.json        # Nodemon configuration for development
├── package.json        # Project metadata and dependencies
├── README.md           # This file
├── tsconfig.json       # TypeScript compiler options
├── src/                # Source code
│   ├── index.ts        # Main entry point of the application
│   └── utils/          # Utility functions
│       └── helper.ts   # Example helper module
└── dist/               # Output directory for compiled code (after running npm run build)
```

## Technologies Used

*   **Node.js:** JavaScript runtime environment.
*   **Express:** Fast, unopinionated, minimalist web framework for Node.js.
*   **TypeScript:** Superset of JavaScript that adds static typing.
*   **ESM (ECMAScript Modules):** Modern module system for JavaScript.
*   **Nodemon:** Utility that monitors for any changes in your source and automatically restarts your server.
*   **ts-node:** TypeScript execution environment and REPL for Node.js.
*   **ESLint:** A tool for identifying and fixing problems in JavaScript and TypeScript code.
*   **TypeScript-ESLint:** Integrates TypeScript with ESLint to provide linting with type information.

## Linting

To ensure code quality and consistency, this project uses ESLint with TypeScript support. The linter is configured to enforce strict type-checking and common best practices.

### Running the Linter

To run the linter, use the following command:

```bash
pnpm run lint
```

This will lint all files in the `src` directory and ignore files specified in the `.eslintignore` file (e.g., the `dist` directory).

### Customizing Lint Rules

You can customize the linting rules by editing the `eslint.config.js` file in the project root. For example, you can add or modify rules under the `rules` section.
