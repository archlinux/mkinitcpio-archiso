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

[63] - 2022-04-28
=================

Changed
-------

- Replace all feasible instances of ``mkdir`` preceding ``mount`` with ``mount --mkdir``.

[62] - 2022-03-25
=================

Changed
-------

- The archiso_kms hook adds all DRM and AGP kernel modules not just a select few.

[61] - 2022-01-31
=================

Added
-----

- Add further contributing guidelines around the use of the changelog and how maintainers deal with merge requests

Changed
-------

- Mount cowspace readonly and read-write afterwards to prevent errors if multiple mounts are active
- Extend default DHCP timeout to 60s to avoid issues with Spanning Tree Protocol (STP)

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
