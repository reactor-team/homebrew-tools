# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.122"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.122/reactor-cli_v1.20261102.122_darwin-arm64.tar.gz"
      sha256 "08471fb4dac5791fa9200b00b07375b5a23d1f88d4dcad6ec92c5ee11b224237"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.122/reactor-cli_v1.20261102.122_darwin-amd64.tar.gz"
      sha256 "6f7dc4127b4e9e79ad9e094090713fe47d72bc7e3a7ea09219660c6ed4b09dba"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.122/reactor-cli_v1.20261102.122_linux-arm64.tar.gz"
      sha256 "b484c08b315c2bb41410a6e7f77a15e5076eefdf100009b67f7dd13290433612"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.122/reactor-cli_v1.20261102.122_linux-amd64.tar.gz"
      sha256 "5f2104d49a97a552837bc2b9b38c372d1053adfd1b94091516efc16586cf49bb"
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
