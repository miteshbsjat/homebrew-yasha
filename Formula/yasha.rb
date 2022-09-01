class Yasha < Formula
  include Language::Python::Virtualenv

  desc "Yasha is a code generator based on Jinja2 template engine"
  homepage "https://github.com/kblomqvist/yasha"
  url "https://files.pythonhosted.org/packages/c6/d9/2aae5ed81de2200dffcec8abcfd073b51bb11be41192d4de93b575307994/yasha-5.0.tar.gz"
  sha256 "f8516ded7c01e44c4728864ffe6b551573496938f582fd521ea21fd82db0a060"
  license "MIT License (MIT)"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.gz"
    sha256 "611bb273cd68f3b993fabdc4064fc858c5b47a973cb5aa7999ec1ba405c87cd7"
  end

  resource "pytoml" do
    url "https://files.pythonhosted.org/packages/f4/ba/98ee2054a2d7b8bebd367d442e089489250b6dc2aee558b000e961467212/pytoml-0.1.21.tar.gz"
    sha256 "8eecf7c8d0adcff3b375b09fe403407aa9b645c499e5ab8cac670ac4a35f61e7"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/39/0d/40df5be1e684bbaecdb9d1e0e40d5d482465de6b00cbb92b84ee5d243c7f/xmltodict-0.13.0.tar.gz"
    sha256 "341595a488e3e01a85a9d8911d8912fd922ede5fecc4dce437eb4b6c8d037e56"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/1d/97/2288fe498044284f39ab8950703e88abbac2abbdf65524d576157af70556/MarkupSafe-2.1.1.tar.gz"
    sha256 "7f91197cc9e48f989d12e4e6fbc46495c446636dfc81b9ccf50bb0ec74b91d4b"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
