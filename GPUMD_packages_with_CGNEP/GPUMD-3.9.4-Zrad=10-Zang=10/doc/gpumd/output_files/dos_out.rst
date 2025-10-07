.. _dos_out:
.. index::
   single: dos.out (output file)

``dos.out``
===========

This file contains the data of the phonon density of states (:term:`PDOS`).
It is produced when invoking :ref:`compute_dos keyword <kw_compute_dos>` in the :ref:`run.in input file <run_in>`.

File format
-----------
The file is organized as follows:

* column 1: angular frequency :math:`\omega` (in units of THz)
* column 2: :term:`DOS` (in units of 1/THz) in the :math:`x` direction
* column 3: :term:`DOS` (in units of 1/THz) in the :math:`y` direction
* column 4: :term:`DOS` (in units of 1/THz) in the :math:`z` direction

If there are multiple groups to be calculated as specified in the :ref:`compute_dos keyword <kw_compute_dos>`, data will be output group by group, each occupying the same number of rows (the number of frequency points).