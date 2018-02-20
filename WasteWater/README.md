# WasteWater

Free library for modelling and simulation of waste water treatment plants.

## Library description

The package WasteWater provides a collection of 3 different
international accepted *a*ctivated *s*ludge *m*odels (ASM) of different complexity,
including models for preclarifiers and 5 different models for
the secondary settling process.

PS: SimulationTimeUnit for all models built with the WasteWater library is days [d].

The WasteWater package currently consists of the following subpackages

* ASM1 - Activated Sludge Model No.1  (models 13 wastewater components and 8 biological processes)
* ASM2d - Activated sludge Model No.2d (models 19 wastewater components and 21 biological processes)
* ASM3 - Activated Sludge Model No.3  (models 13 wastewater components and 12 biological processes)
* Icons - Icon definitions for wastewater treatment components
* WasteWaterUnits - unit type definitions for use with the WasteWater library

## How to use the WasteWater library (with dymola)

1. Start dymola and open .../WasteWater/package.mo

1. Choose one of the possible Activated Sludge Model sub-libraries ASM1, ASM2d or ASM3.

1. Open one of the models from the examples sub-library or build a new model
   with appropriate ASMx objects.

1. Before translating a model change into current ASMx sub-directory from dymola
   command line (e.g. ..\WasteWater\ASM1) and then translate it.

1. To initalize the given examples with initial state values you can use the appropriate
   *.mos script-files at the ASMx directories.

1. The examples usually include dry-weather-influent-files about a period of 14 days for dynamic simualtions,
   for beyond simulations adequate influent-files will be needed.

1. Specify simulation parameters like start and stop time and if needed the number of intervals.
   The time unit of the WasteWater library is days [d], so a stop time value of 14 means 14 days simulation time.

1. Simulation.


Because of the complexity of some wastewater treatment plant models
simulations could take a while, dependent on your hardware!

The WasteWater library only includes the biological standart values from ASMx distributions,
so it is subject to the user to calibrate the ASM parameters for own purposes.


Remark: All files within the WasteWater library are stored in dos-file-format.
        If you want to use the library under a Linux platform it is recommended to
        transform the files into linux-file-format by dos2unix command as modelica
        script files (*.mos) cannot be loaded otherwise.


Main Author:

   Gerald Reichl
   Technische Universitaet Ilmenau
   Faculty of Informatics and Automation
   Department Dynamics and Simulation of ecological Systems
   P.O. Box 10 05 65
   98684 Ilmenau
   Germany
   email: gerald.reichl@tu-ilmenau.de


## Current release

Download [WasteWater v2.1.0 (2015-01-22)](../../archive/v2.1.0.zip)

#### Release notes

* [Version v2.1.0 (2015-01-22)](../../archive/v2.1.0.zip)
  * Modelica 3.2.1 conversion.
* [Version v2.0.1 (2003-10-31)](../../archive/v2.0.1.zip)
  * First official version of the library released at 3rd Modelica Conference.

## License

Copyright &copy; 2000 - 2003 Gerald Reichl

This Modelica package is free software and the use is completely at your own risk;
it can be redistributed and/or modified under the terms of the [Modelica License 1.1](http://www.modelica.org/licenses/ModelicaLicense1.1).
For license conditions (including the disclaimer of warranty) visit [http://www.modelica.org/licenses/ModelicaLicense1.1](http://www.modelica.org/licenses/ModelicaLicense1.1).

This package is free software; it can be redistributed and/or modified under the terms of the Modelica license,
see the license conditions and the accompanying disclaimer in the documentation of package Modelica
in file "Modelica/package.mo".

Copyright (C) 2000 - 2003 Gerald Reichl
