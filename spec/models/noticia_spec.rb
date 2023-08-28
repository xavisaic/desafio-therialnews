require 'rails_helper'

RSpec.describe Noticium, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "es válido con un título y contenido" do
    noticia = Noticium.new(title: "Título", content: "Contenido")
    expect(noticia).to be_valid
  end

  it "no es válido sin un título" do
    noticia = Noticium.new(content: "Contenido")
    expect(noticia).to_not be_valid
  end

  it "no es válido sin contenido" do
    noticia = Noticium.new(title: "Título")
    expect(noticia).to_not be_valid
  end

end
