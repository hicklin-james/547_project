# Visualizing Uncertainty

This is a tool designed for decision support tool developers to visualize the uncertainty around the risk estimates that are being included in their decision aids. The primary frameworks used are AngularJS and D3. This was developed as part of an MSc course at the University of British Columbia.

## Screenshots
![Alt text](/repo_extras/images/Entire.png "Entire System")

## Build & development

Run `npm install` and `bower install` to install dependencies

Run `grunt` to build for production and `grunt serve` to run dev server.

## File structure

- All coffeescript files location in `app/scripts/`
  - Charts & all D3 functionality implemented in `app/scripts/directives/`
  - Control flow in `app/scripts/controllers/`
  - Data and util helpers in `app/scripts/services/`
- View templates in `app/views/`
- CSS in `app/styles/`
- Synthetic data generated from `data/sampler.py`
