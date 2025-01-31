#
# Copyright (C) 2018-2019 The Pixel3ROM Project
# Copyright (C) 2020 Raphielscape LLC.
# Copyright (C) 2020 Team StormBreaker
# Copyright (C) 2021 The Styx Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

STYX_TARGET_PACKAGE := $(PRODUCT_OUT)/StyxProject-$(PLATFORM_STYX_VERSION).zip

.PHONY: styx-ota
styx-ota: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(STYX_TARGET_PACKAGE)
	@echo "Package Complete: $(STYX_TARGET_PACKAGE)" >&2
