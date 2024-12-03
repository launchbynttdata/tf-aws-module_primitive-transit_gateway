// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

description                     = "POC Transit Gateway"
default_route_table_association = true
default_route_table_propagation = true
vpn_ecmp_support                = true
dns_support                     = true
tags = {
  Name = "POC-transit-gateway"
}
