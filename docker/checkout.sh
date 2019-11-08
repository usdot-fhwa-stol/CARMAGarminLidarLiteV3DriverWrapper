#!/bin/bash

#  Copyright (C) 2018-2019 LEIDOS.
# 
#  Licensed under the Apache License, Version 2.0 (the "License"); you may not
#  use this file except in compliance with the License. You may obtain a copy of
#  the License at
# 
#  http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#  License for the specific language governing permissions and limitations under
#  the License.

# CARMA packages checkout script
# Optional argument to set the root checkout directory with no ending '/' default is '~'

set -ex

dir=~
if [[ -n ${1} ]]; then
      dir=${1}
fi

git clone https://github.com/usdot-fhwa-stol/CARMAMsgs.git ${dir}/src/CARMAMsgs --branch develop --depth 1
git clone https://github.com/usdot-fhwa-stol/CARMAUtils.git ${dir}/src/CARMAUtils --branch develop --depth 1