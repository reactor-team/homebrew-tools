# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19200"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19200/reactor-cli_v1.20260724.19200_darwin-arm64.tar.gz"
      sha256 "370d9af7330180b414da74c72bad5a4f1e3e3d5a6f6a25339036a56dad6f12ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19200/reactor-cli_v1.20260724.19200_darwin-amd64.tar.gz"
      sha256 "84edda743e101c0b9a7c605c6e0584658b4dfd3e78268878343e93c474f41f92"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19200/reactor-cli_v1.20260724.19200_linux-arm64.tar.gz"
      sha256 "c83666134ac939abe05df11b3a017abd0a501518bdab20ff7ac123d78ee9968e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19200/reactor-cli_v1.20260724.19200_linux-amd64.tar.gz"
      sha256 "48ee09975ca955c012d1cbb1da35273da8fc6c4c675825bc495eda390defde30"
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
