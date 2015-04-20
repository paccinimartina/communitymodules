# -----------------------------------------------------------------------------
# MLPDF project profile
#
# \file    MLPDF.pro
# \author  Axel Newe
# \date    2014-02-06
# -----------------------------------------------------------------------------


TEMPLATE   = lib

TARGET     = MLPDF

DESTDIR    = ../../../lib
DLLDESTDIR = ../../../lib

# Set high warn level (warn 4 on MSVC)
WARN = HIGH

# Add used projects here (see included pri files below for available projects)
CONFIG += dll ML MLBase MLWEM zlib MLBaseListExtensions

MLAB_PACKAGES += MeVisLab_Standard MeVis_ThirdParty Community_General

# make sure that this file is included after CONFIG and MLAB_PACKAGES
include ($(MLAB_MeVis_Foundation)/Configuration/IncludePackages.pri)

DEFINES += MLPDF_EXPORTS

# Enable ML deprecated API warnings. To completely disable the deprecated API, change WARN to DISABLE.
DEFINES += ML_WARN_DEPRECATED

HEADERS += \
  MLPDFInit.h \
  MLPDFSystem.h \
  shared/MLPDF_DataTypes.h \
  shared/MLPDF_Tools.h \
  SavePDF/SavePDF.h \
  SaveU3D/SaveU3D.h \
  SaveU3D/U3DFileFormat/U3D_BitStream.h \
  SaveU3D/U3DFileFormat/U3D_Constants.h \
  SaveU3D/U3DFileFormat/U3D_ContextManager.h \
  SaveU3D/U3DFileFormat/U3D_DataBlock.h \
  SaveU3D/U3DFileFormat/U3D_DataBlockWriter.h \
  SaveU3D/U3DFileFormat/U3D_DataTypes.h \
  SaveU3D/U3DFileFormat/U3D_FileWriter.h \
  SaveU3D/U3DFileFormat/U3D_Tools.h \
  SavePRC/SavePRC.h \
  SavePRC/PRCFileFormat/PRC_Macros.h \
  SavePRC/PRCFileFormat/PRC_Defines.h \
  SavePRC/PRCFileFormat/PRC_DataTypes.h \
  SavePRC/PRCFileFormat/PRC_BitStream.h \
  SavePRC/PRCFileFormat/PRC_Write.h \
  SavePRC/PRCFileFormat/PRC_File.h \
  SavePRC/PRCFileFormat/PRC_Tools.h \
		
SOURCES += \
  MLPDFInit.cpp \
  shared/MLPDF_Tools.cpp \
  SavePDF/SavePDF.cpp \
	SaveU3D/SaveU3D.cpp \
	SaveU3D/SaveU3D_Tools.cpp \
	SaveU3D/SaveU3D_ProcessPointSets.cpp \
	SaveU3D/SaveU3D_ProcessLineSets.cpp \
	SaveU3D/SaveU3D_ProcessMeshes.cpp \
	SaveU3D/U3DFileFormat/U3D_BitStream.cpp \
	SaveU3D/U3DFileFormat/U3D_ContextManager.cpp \
	SaveU3D/U3DFileFormat/U3D_DataBlock.cpp \
	SaveU3D/U3DFileFormat/U3D_DataBlockWriter.cpp \
	SaveU3D/U3DFileFormat/U3D_FileWriter.cpp \
	SaveU3D/U3DFileFormat/U3D_Tools.cpp \
	SavePRC/SavePRC.cpp \
	SavePRC/SavePRC_Tools.cpp \
  SavePRC/SavePRC_ProcessPointSets.cpp \
  SavePRC/SavePRC_ProcessLineSets.cpp \
  SavePRC/SavePRC_ProcessMeshes.cpp \
	SavePRC/PRCFileFormat/PRC_DataTypes.cpp \
	SavePRC/PRCFileFormat/PRC_BitStream.cpp \
	SavePRC/PRCFileFormat/PRC_Write.cpp \
	SavePRC/PRCFileFormat/PRC_File.cpp \
	SavePRC/PRCFileFormat/PRC_Tools.cpp \

	