#~ require $Ot.dirJob+'Standaard uitvoer\WxCompressVMRDH.rb'
requireCrypted $Ot.dirJob+'Standaard uitvoer\Routines\Matcompress\WxCompressVMRDH.rc'

# Script om een Matrix & Segcompressie te doen op basis van een indeling die op de CENTROID EN AREAS bestaat  (Zie Project Setup) 
# Hierbij moet de indeling op de CENTROIDS VOLLEDIG DEKKEND ZIJN, en moet het vinkje voor AREA aangevinkt zijn, de indeling hoeft dus niet te kloppen op de AREA!

# INPUT: Lijst van MATRICES om te compressen (MatrixCompress) (Zie onderstaand voorbeeld)
# INPUT: STRING van MATRIXCUBE om te compressen (SEG-Compress) (Zie onderstaand voorbeeld)
# OUTPUT: MATRIXCOMPRESS: Excelbestand met de MatrixCompressie zoals ook in het verleden werd uitgeleverd
# OUTPUT: SEGCOMPRESS : CSV bestand met de SEGCompressie voor standaard velden.


s = MatrixCompressVMRDH.new
s.matrixList = [
  ["Vracht_os", [1,3,1,1]],
  ["Vracht_as", [1,3,3,1]],
  ["Vracht_rd", [1,3,2,1]],
  ["Vracht_etm",[1,3,4,1]],
  ["Auto_os", [1,2,1,103]],
  ["Auto_as", [1,2,3,103]],
  ["Auto_rd", [1,2,2,101]],
  ["Auto_etm",[1,2,4,1]]
]
s.matrixnaam = '2040_StedRef_REM_SMC' ## tbv SEG-compress (Kan afwijken ivm SIM/SMC cubes)
s.execute