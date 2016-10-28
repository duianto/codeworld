#!/bin/bash

# Copyright 2016 The CodeWorld Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

source base.sh

fuser -k -n tcp 8080
fuser -k -n tcp 9160
rm -rf data/*/user/???/*.js
rm -rf data/*/user/???/*.err.txt

mkdir -p log

codeworld-game-server &
run .  codeworld-server -p 8080
