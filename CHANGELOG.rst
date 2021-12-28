#########
Changelog
#########

[XX] - YYYY-MM-DD
=================

Added
-----

Changed
-------

Removed
-------

[60] - 2021-12-28
=================

Changed
-------

- Change the way COW space is mounted by only mounting it once read-writable

Removed
-------

- Remove EROFS related fixes, that are not required anymore due to util-linux now detecting it properly
- Remove obsolete archiso_shutdown hook and associated files, as the functionality is available in mkinitcpio directly

[59] - 2021-11-30
=================

Added
-----

- Add a mailmap file for better author integration in git

Changed
-------

- Make PGP verification more verbose and fix message output

[58] - 2021-07-31
=================

Added
-----

- Add README.rst and CONTRIBUTING.rst
- Add editorconfig integration
- Add GitLab CI integration

Changed
-------

- Adapt Makefile to new repository layout and only test and install files that are part of mkinitcpio-archiso
- Fix formatting of hooks and scripts according to shfmt
