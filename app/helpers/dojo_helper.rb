require 'json'

module DojoHelper

  def dojo_config(options = {})
    json = camelize_keys(options).to_json
    javascript_tag "dojoConfig = #{json};" 
  end

  def camelize_keys(hash)
    camelized_hash = hash.dup
    hash.each do |k, v|
      value = (v.kind_of?(Hash)) ? camelize_keys(v) : v
      key = k.to_s.camelize(:lower)

      camelized_hash[key] = value
      camelized_hash.delete(k)
    end

    return camelized_hash
  end

end
