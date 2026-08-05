# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260805.20977"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20977/reactor-cli_v1.20260805.20977_darwin-arm64.tar.gz"
      sha256 "a2a6ab9a44de80fff53ea8c3ef4bf5e88c31bf9046e65716ce483f6abf9adab9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20977/reactor-cli_v1.20260805.20977_darwin-amd64.tar.gz"
      sha256 "691850b5409428a639eac90a79d138f76f5ed472799278dd44d8db9e861f1d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20977/reactor-cli_v1.20260805.20977_linux-arm64.tar.gz"
      sha256 "c907546ff084c442d2f3efb07b17496044ce2b7d37f094ce8d32e148554ba76f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20977/reactor-cli_v1.20260805.20977_linux-amd64.tar.gz"
      sha256 "254cb32a41cf35c05df84df001ee4e37afdd797b6e31c970694710ff8a241ea4"
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
