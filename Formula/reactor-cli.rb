# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261022.107"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.107/reactor-cli_v1.20261022.107_darwin-arm64.tar.gz"
      sha256 "194b21758e846a20d41a36b69507daf678441db0d0643106a188a46a6b6352cc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.107/reactor-cli_v1.20261022.107_darwin-amd64.tar.gz"
      sha256 "bc8826976c6ce0a261fd84849086a96eee548286e404886e6e47c43cc763f415"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.107/reactor-cli_v1.20261022.107_linux-arm64.tar.gz"
      sha256 "590bafb17cd2942f9c1135b0807cc13ec80b5f2da71f7d0a99c6db205c4c1c35"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.107/reactor-cli_v1.20261022.107_linux-amd64.tar.gz"
      sha256 "8521dac6ff7cda35b421a66663c706247e68f51022de8374bcde8edaee7f8525"
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
