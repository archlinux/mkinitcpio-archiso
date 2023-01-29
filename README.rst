==================
mkinitcpio-archiso
==================

The mkinitcpio-archiso project provides `initcpio <https://gitlab.archlinux.org/archlinux/mkinitcpio/mkinitcpio>`_
integration for `archiso <https://gitlab.archlinux.org/archlinux/archiso>`_.
The scripts offer functionality for an environment, that is running in `early user space
<https://en.wikipedia.org/wiki/Linux_startup_process#Early_user_space>`_ by modifying an `initrd
<https://man.archlinux.org/man/initrd.4>`_.

Requirements
============

The following packages need to be installed to be able to use mkinitcpio-archiso on a target host:

* bash
* ca-certificates-utils (for PXE over HTTP)
* coreutils
* curl (for PXE over HTTP)
* device-mapper
* gnupg
* openssl (for verifying CMS signatures generated in archiso)
* mkinitcpio
* mkinitcpio-nfs-utils (for PXE over NFS)
* nbd (for PXE over NBD)
* pv (optional: for displaying status when copying the image to RAM)
* util-linux

The following packages need to be installed to be able to check the code of mkinitcpio-archiso (when running ``make
check``):

* shellcheck
* shfmt

Installation
============

To install this project, the make target ``install`` can be used. It honors both ``DESTDIR`` and ``PREFIX`` (defaults to
``/usr/local``).

.. code:: sh

   make install DESTDIR=/some/directory PREFIX=/usr

Documentation
=============

Documentation on various aspects of mkinitcpio-archiso can be found in the `docs directory <docs/>`_.

Contribute
==========

Development of mkinitcpio-archiso takes place on Arch Linux' Gitlab:
https://gitlab.archlinux.org/archlinux/mkinitcpio/mkinitcpio-archiso.

Please read our distribution-wide `Code of Conduct <https://terms.archlinux.org/docs/code-of-conduct/>`_ before
contributing, to understand what actions will and will not be tolerated.

Read our `contributing guide <CONTRIBUTING.rst>`_ to learn more about how to provide fixes or improvements for the code
base.

Discussion around mkinitcpio-archiso takes place on the `arch-releng mailing list
<https://lists.archlinux.org/mailman3/lists/arch-releng.lists.archlinux.org/>`_ and in `#archlinux-releng
<ircs://irc.libera.chat/archlinux-releng>`_ on `Libera Chat <https://libera.chat/>`_.

All past and present authors of mkinitcpio-archiso are listed in `AUTHORS <AUTHORS.rst>`_.

Releases
========

`Releases of mkinitcpio-archiso <https://gitlab.archlinux.org/archlinux/mkinitcpio/mkinitcpio-archiso/-/tags>`_ are
created by their current maintainers

- `David Runge <https://gitlab.archlinux.org/dvzrv>`_ (``991F6E3F0765CF6295888586139B09DA5BF0D338``)
- `nl6720 <https://gitlab.archlinux.org/nl6720>`_ (``BB8E6F1B81CF0BB301D74D1CBF425A01E68B38EF``)

Tags are signed using respective PGP keys.

  .. note::

     Releases before v58 have been done as part of `archiso <https://gitlab.archlinux.org/archlinux/archiso>`_. After
     ``archiso`` v57 mkinitcpio-archiso became its own project.

To verify a tag, first import the relevant PGP key:

.. code:: sh

   gpg --auto-key-locate wkd --search-keys dvzrv@archlinux.org

or

.. code:: sh

  gpg --auto-key-locate keyserver --recv-keys BB8E6F1B81CF0BB301D74D1CBF425A01E68B38EF

Afterwards a tag can be verified from a clone of this repository:

.. code:: sh

   git verify-tag <tag>

License
=======

Mkinitcpio-archiso is licensed under the terms of the **GPL-3.0-or-later** (see `LICENSE <LICENSE>`_).
