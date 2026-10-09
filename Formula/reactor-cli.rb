# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.75"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.75/reactor-cli_v1.20261009.75_darwin-arm64.tar.gz"
      sha256 "d8bd2dc16a13b6eff536391895fa7e3aa08ba0be6fd36d12dea360b5867d44b7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.75/reactor-cli_v1.20261009.75_darwin-amd64.tar.gz"
      sha256 "3e1fd406b2b02d69fed7a9dca9e827a51a26745a52da5eec9b0312e91db14455"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.75/reactor-cli_v1.20261009.75_linux-arm64.tar.gz"
      sha256 "3bb7a1dac2c10600877c046e6cf644a18216cb91edf89ee662debf6fbfb6333e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.75/reactor-cli_v1.20261009.75_linux-amd64.tar.gz"
      sha256 "d95fd734045a7d4cede6a90506d087de528afb3a779587edfde034028d1003b1"
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
