# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.547"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.547/reactor-cli_v1.20261106.547_darwin-arm64.tar.gz"
      sha256 "ea5985ac3ba6fb01a33241c331d83cf06416493050bf5b2b15ad8f077223e916"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.547/reactor-cli_v1.20261106.547_darwin-amd64.tar.gz"
      sha256 "7b3e0d41e84ee9989c6115649210cc2e770e42190fe747c8165879bdabf82f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.547/reactor-cli_v1.20261106.547_linux-arm64.tar.gz"
      sha256 "9bb0b0d236c7c69632cdb717a45acf31989f884883ccfe607e33cedd0352c97a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.547/reactor-cli_v1.20261106.547_linux-amd64.tar.gz"
      sha256 "3aa025405f7d7483ed8dda49a0a99ffdb30007f8a1a0e600ebaeaeb60585cb59"
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
