# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260925.28486"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28486/reactor-cli_v1.20260925.28486_darwin-arm64.tar.gz"
      sha256 "de9e1e094e59770129bcc788fce503b2001f8cb1da2a1a49bcd01f4a273a93d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28486/reactor-cli_v1.20260925.28486_darwin-amd64.tar.gz"
      sha256 "c51d6ba4787564e9ab7d07d4c74fe5c1e9eb9fece3557159e2d6e0e418a3538a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28486/reactor-cli_v1.20260925.28486_linux-arm64.tar.gz"
      sha256 "d3be235b8a0aebad68e828a1ea80848a7cef4e6e9bfc12f8c242a7c989d6ad09"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28486/reactor-cli_v1.20260925.28486_linux-amd64.tar.gz"
      sha256 "8bd7f4751ecca4ce4eea2d90c9c9ea7dda6fd6d911473c7da16a1f480edd56f2"
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
