#
# Copyright (C) 2020 Linux Studio Plugins Project <https://lsp-plug.in/>
#           (C) 2020 Vladimir Sadovnikov <sadko4u@gmail.com>
#
# This file is part of lsp-plugins-trigger
#
# lsp-plugins-trigger is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# lsp-plugins-trigger is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with lsp-plugins-trigger.  If not, see <https://www.gnu.org/licenses/>.
#

# Package version
ARTIFACT_ID                 = lsp-plugins-trigger
ARTIFACT_DESC               = Trigger plugin series
ARTIFACT_VARS               = LSP_PLUGINS_TRIGGER
ARTIFACT_HEADERS            = lsp-plug.in
ARTIFACT_EXPORT_ALL         = 1
ARTIFACT_VERSION            = 1.0.0-devel

#------------------------------------------------------------------------------
# List of all dependencies
DEPENDENCIES = \
  LIBPTHREAD \
  LIBDL \
  LSP_COMMON_LIB \
  LSP_DSP_LIB \
  LSP_DSP_UNITS \
  LSP_LLTL_LIB \
  LSP_RUNTIME_LIB \
  LSP_PLUGINS_SHARED \
  LSP_3RD_PARTY \
  LSP_PLUGIN_FW \
  LSP_R3D_IFACE \
  LSP_WS_LIB \
  LSP_TK_LIB \
  LSP_R3D_BASE_LIB \
  LSP_R3D_GLX_LIB

TEST_DEPENDENCIES = \
  LSP_TEST_FW

#------------------------------------------------------------------------------
# Platform-specific dependencies
ifeq ($(PLATFORM),Linux)
  DEPENDENCIES += \
    LIBJACK \
    LIBSNDFILE \
    LIBX11 \
    LIBCAIRO \
    LIBFREETYPE
endif

ifeq ($(PLATFORM),BSD)
  DEPENDENCIES += \
    LIBJACK \
    LIBSNDFILE \
    LIBX11 \
    LIBCAIRO \
    LIBFREETYPE
endif

ifeq ($(PLATFORM),Windows)
  DEPENDENCIES             += \
    LIBSHLWAPI \
    LIBWINMM \
    LIBMSACM
endif

#------------------------------------------------------------------------------
# All possible dependencies
ALL_DEPENDENCIES = \
  $(DEPENDENCIES) \
  $(TEST_DEPENDENCIES) \
  LIBJACK \
  LIBGL \
  LIBSNDFILE \
  LIBX11 \
  LIBCAIRO \
  LIBDL \
  LIBICONV \
  LIBFREETYPE \
  LIBSHLWAPI \
  LIBWINMM \
  LIBMSACM


