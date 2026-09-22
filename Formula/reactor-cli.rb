# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28146"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28146/reactor-cli_v1.20260922.28146_darwin-arm64.tar.gz"
      sha256 "f5bfca8d2505221fd689d4f21bf713658fa5660df08d267ba2fba3be05c30ee4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28146/reactor-cli_v1.20260922.28146_darwin-amd64.tar.gz"
      sha256 "ba7ca27e72a170c5291b597482da256d648f6bbdcdfb8838766a32255d165083"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28146/reactor-cli_v1.20260922.28146_linux-arm64.tar.gz"
      sha256 "b592a125809ff7dee562cad9dc19613ecc0d2147abbe8173c900d8556647bfbe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28146/reactor-cli_v1.20260922.28146_linux-amd64.tar.gz"
      sha256 "a3a3775cec1c38297e2d0c86f9f8a7f8a9a5a02de43496ddd54d162c982fd5de"
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
