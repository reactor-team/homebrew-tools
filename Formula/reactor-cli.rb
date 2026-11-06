# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.518"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.518/reactor-cli_v1.20261106.518_darwin-arm64.tar.gz"
      sha256 "6a501419e39033176e1e6bc9bb7ba02b143620e1d9f35b03358755d9dd7d2826"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.518/reactor-cli_v1.20261106.518_darwin-amd64.tar.gz"
      sha256 "2f24e5c713b345e5c7255163697ab44292ebf5ae16b5ca03e89d1a08b63b6a41"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.518/reactor-cli_v1.20261106.518_linux-arm64.tar.gz"
      sha256 "b7978a4a4059bd5e33cd566a091efc85a95664eba4cac95eaf07da7490d49d7f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.518/reactor-cli_v1.20261106.518_linux-amd64.tar.gz"
      sha256 "e3443ac9f061e0ff6c90ff4e8d736305f1cba12dd14dd8e4d7cffd47c2fbc361"
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
