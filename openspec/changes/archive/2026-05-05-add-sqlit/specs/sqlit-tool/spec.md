## ADDED Requirements

### Requirement: sqlit is listed as an approved tool
sqlit SHALL be included in the AGENTS.md approved tools list with its documentation URL.

#### Scenario: AGENTS.md contains sqlit
- **WHEN** reading AGENTS.md approved tools section
- **THEN** sqlit is listed with docs link https://github.com/Maxteabag/sqlit

### Requirement: sqlit installation is documented
The README.md SHALL include installation instructions for sqlit using `uv tool install sqlit-tui`.

#### Scenario: README.md documents sqlit installation
- **WHEN** reading README.md installation section
- **THEN** `uv tool install sqlit-tui` is included as the installation command

#### Scenario: README.md lists sqlit in Tools table
- **WHEN** reading README.md Tools table
- **THEN** sqlit appears with description and link to https://github.com/Maxteabag/sqlit

### Requirement: sqlit is verified by health check
The checkhealth.sh script SHALL verify that sqlit is available in PATH.

#### Scenario: checkhealth.sh checks for sqlit
- **WHEN** running ./checkhealth.sh
- **THEN** sqlit is included in the list of checked tools
