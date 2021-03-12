# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bubbly < Formula
  desc "Bubbly CLI"
  homepage "https://bubbly.dev/"
  version "0.0.1-alpha"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/valocode/bubbly/releases/download/0.0.1-alpha/bubbly_0.0.1-alpha_darwin_amd64.tar.gz"
    sha256 "140cdace9ab5f2ae97378970ff58ce5c0d63d14a06ca9a2cf1e4d62ef8d055b8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/valocode/bubbly/releases/download/0.0.1-alpha/bubbly_0.0.1-alpha_darwin_arm64.tar.gz"
    sha256 "3dc54e32c9b0b89d9bbe0a5504a393f11a3844248d04193e63afb68c0639e53b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/valocode/bubbly/releases/download/0.0.1-alpha/bubbly_0.0.1-alpha_linux_amd64.tar.gz"
    sha256 "254fe0b2cb38579d83b6f57e8aec35f14e8dcbfa096901d7c34a500e700eeab9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/valocode/bubbly/releases/download/0.0.1-alpha/bubbly_0.0.1-alpha_linux_arm64.tar.gz"
    sha256 "0e2ffb1c00437bc2cab5043194e446a2f0b54f80055322383e85f37a6483a5e8"
  end

  depends_on "go"

  def install
    bin.install "bubbly"
  end

  test do
    system "#{bin}/bubbly --version"
  end
end
