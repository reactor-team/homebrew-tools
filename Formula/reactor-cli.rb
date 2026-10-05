# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.374"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.374/reactor-cli_v1.20261005.374_darwin-arm64.tar.gz"
      sha256 "3b528f59c8e30a4044b883d5cd9af076c5bafea52f0c00647b0e705b37f690d0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.374/reactor-cli_v1.20261005.374_darwin-amd64.tar.gz"
      sha256 "0edf77dc812f6db2076a28184724516c06d0749d11dce582100af483ce3ce0d8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.374/reactor-cli_v1.20261005.374_linux-arm64.tar.gz"
      sha256 "7e088418cb7b99a2952f3d654fc24f04da24551576fad8d7a0c4b18e10a8fe42"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.374/reactor-cli_v1.20261005.374_linux-amd64.tar.gz"
      sha256 "55f8670274129441df1f91c976ecae0480ad62872316e507028452cd2c2ab141"
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
