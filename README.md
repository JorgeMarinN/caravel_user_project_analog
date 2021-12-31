# Caravel Analog User

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)


PLL-BASED CAPACITIVE SENSOR INTERFACE

This project involves the design of a capacitive sensor-to-digital converter using time-based circuit techniques. It uses basic digitally-oriented building blocks (two oscillators, a D-flipflop and a feedback loop including a capacitive element and a switch) to convert input capacitive values into digital single bit traces in the time domain. The basic block diagram can be seen below:

![image](https://user-images.githubusercontent.com/93881221/147831652-41cf39a6-2140-4b39-a2b3-ab59a673443d.png)

The architecture has been tested for a DC sweep of input capacitive values. The characteristic plot for an average window of 10us is seen below:

![image](https://user-images.githubusercontent.com/93881221/147832157-99f9d210-2572-4856-a674-c2a69fd72ddf.png)



Refer to [README](docs/source/index.rst) for this sample project documentation. 
