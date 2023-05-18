The design uses Magic, Irsim, and Modelsim for layout and simulation. 

The project folder contains the following subfolders:
- Big_2_Verilog: Contains all the Verilog files and testbenches for Modelsim pre and post-synthesis. 
		     Also included are the Synthesis and Encounter compile scripts plus the pre-padframe 
		     Irsim command file. 
- flat_&_submit_cif: Contains the flattened and filled magic file and the final cif. Also included are 
		     the Irsim command file for filled project padframe, the flatmag.sim, and flatmag.ext file. 
- IrsimPadTests: Contains the irsim command file for filled project padframe, the pre- and post-flat sim files,
		     and screenshots of the expected irsim core and pad results. Also included is the irsim command
		     file test description and screenshot showing satisfactory density result.
- Pinout: Contains the text file for chip I/O and the annotated pinout figure. 
- pre_fill: Contains all the cells used in the Magic cell file. For backup just in case issues are encountered 
		when opening the Magic files. 
- submit_gds: Contains the final gds file
