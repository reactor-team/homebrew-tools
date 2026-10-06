# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.262"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.262/reactor-cli_v1.20261006.262_darwin-arm64.tar.gz"
      sha256 "28eb1f4119f37d0e71e746f2bced1622b102c24b517a6ed3fe202f174e06c950"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.262/reactor-cli_v1.20261006.262_darwin-amd64.tar.gz"
      sha256 "0d6047be853718ddaf9ddcb23fca2cc02279621d1bf3aad0bf3a3f3612b81cb4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.262/reactor-cli_v1.20261006.262_linux-arm64.tar.gz"
      sha256 "f1fa3fd608cb9d53e3960c2641fb99d68944c45314e63505b9d6c2af3645d40e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.262/reactor-cli_v1.20261006.262_linux-amd64.tar.gz"
      sha256 "9c0d45ed1d77d3f762b3acaaa0c7a03d2253a4f06bb626ab01f84832dc6b874e"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
