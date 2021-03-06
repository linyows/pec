def get_delete_column_hash(column)
  hash =  YAML.load_file("spec/fixture/in/pec_configure_p1.yaml")
  hash["pyama-test001"].delete(column)
  hash
end

def get_nil_column_hash(column)
  hash =  YAML.load_file("spec/fixture/in/pec_configure_p1.yaml")
  hash["pyama-test001"][column] = nil
  hash
end

def set_network_bootproto(value)
  hash =  YAML.load_file("spec/fixture/in/pec_configure_p1.yaml")
  hash["pyama-test001"]["networks"]["eth0"]["bootproto"] = value
  hash
end

def get_delete_network_column_hash(column)
  hash =  YAML.load_file("spec/fixture/in/pec_configure_p1.yaml")
  hash["pyama-test001"]["networks"]["eth0"].delete("ip_address")
  hash
end
