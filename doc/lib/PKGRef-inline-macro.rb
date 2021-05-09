# Authors:
#   Unai Martinez-Corral
#
# Copyright 2021 Unai Martinez-Corral <unai.martinezcorral@ehu.eus>
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
#
# SPDX-License-Identifier: Apache-2.0

require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include Asciidoctor

# An inline macro that shows a shield corresponding to the size of a tag available in a
# repository from DockerHub.
#
# Usage
#
#   PKGRef:awesome[tool=]
#   PKGRef:recipe[tool=]
#   PKGRef:package[tool=, arch=]
#   PKGRef:pr[num=, repo=msys2/MINGW-packages]

# FIXME: Is it possible to use 'PKGRef-awesome:tool[]', 'PKGREF-recipe:tool[]', etc.?

Extensions.register do
  inline_macro do
    named :PKGRef
    name_positional_attributes 'tool', 'arch', 'num', 'repo'
    process do |parent, type, attrs|
      case type

      when 'awesome'
        tool = attrs['tool']
        (create_anchor parent, tool, type: :link, target: "https://hdl.github.io/awesome/items/#{tool.downcase.delete(' ')}").render

      when 'recipe'
        tool = attrs['tool']
        # FIXME do not allow linebreaks in the text (package name)
        (create_anchor parent, "mingw-w64-#{tool}", type: :link, target: "https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-#{tool}").render

      when 'package'
        tool = attrs['tool']
        arch = attrs['arch']
        if arch == 'both' || arch == nil
          # FIXME This first call to 'render' is ignored, only the second one is shown
          (create_anchor parent, 'i686', type: :link, target: "https://packages.msys2.org/package/mingw-w64-i686-#{tool}").render
          # FIXME Add a ',' between both links
          (create_anchor parent, 'x86_64', type: :link, target: "https://packages.msys2.org/package/mingw-w64-x86_64-#{tool}").render
        else
          (create_anchor parent, arch, type: :link, target: "https://packages.msys2.org/package/mingw-w64-#{arch}-#{tool}").render
        end

      when 'pr'
        # TODO Is it possible to handle 'num' as an array of numbers (integers)?
        num = attrs['num']
        (create_anchor parent, "##{num}", type: :link, target: "https://github.com/#{attrs['repo'] || 'msys2/MINGW-packages'}/pull/#{num}").render

      end
    end
  end
end
