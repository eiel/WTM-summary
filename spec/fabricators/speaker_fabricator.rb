# -*- coding: utf-8 -*-
Fabricator(:speaker) do
  transient :name
  last_name  { |attrs| attrs[:name] ? attrs[:name].split[0] : 'ほげ' }
  first_name { |attrs| attrs[:name] ? attrs[:name].split[1] : 'ほげ太郎' }
end
