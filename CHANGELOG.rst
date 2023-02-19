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

[68] - 2023-02-20
=================

Changed
-------

- Disable automatic ``copytoram`` if the root file system image is on ``/dev/sr*`` (an optical disc drive). Real optical
  disc drives and remotely emulated ones can be slow and take too long to complete the copy process.
- Replace ``poll_device`` with ``resolve_device`` in the ``archiso`` hook. This enables using ``UUID=``, ``LABEL=``,
  ``PARTUUID`` and ``PARTLABEL`` tags to specify devices (``archisodevice``, ``cow_device`` and ``img_dev``).

[67] - 2022-12-24
=================

Changed
-------

- Do not include the ``gpg`` binary unless the initramfs will also include a GPG keyring.

[66] - 2022-11-29
=================

Changed
-------

- Use mkinitcpio's ``add_udev_rule`` function to add udev rules instead of adding them as regular files.
- Use full path to ``ash`` in runtime hook shebang.
- Use ``/usr/bin/`` instead of ``/bin/`` as the target paths for binaries.
- Do not check for symlinks when adding files with install hooks, instead let mkinitcpio handle them.

Removed
-------

- The ``archiso`` hook will not include the ``mountpoint``, ``truncate`` and ``grep`` binaries in the initramfs anymore.
  The busybox versions of these tools (as provided by mkinitcpio's ``base`` hook) are sufficient.

[65] - 2022-10-30
=================

Changed
-------

- Automatically enable ``copytoram`` if rootfs image size is less than 4 GiB and free RAM exceeds the rootfs image size
  plus 2 GiB.
- Do not use certificates embedded in the signature file during OpenSSL CMS verification.

Removed
-------

- Deprecate the ``archiso_kms`` hook. It is now part of mkinitcpio and is called ``kms``.

[64] - 2022-09-25
=================

Added
-----

- The option to verify the rootfs signature using openssl CMS module against a specified CA.

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
