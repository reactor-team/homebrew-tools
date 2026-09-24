# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28458"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28458/reactor-cli_v1.20260924.28458_darwin-arm64.tar.gz"
      sha256 "1234e04570ff7b41452c6f94fe5c4c480fd659af776e9ed38d6236905f118a2e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28458/reactor-cli_v1.20260924.28458_darwin-amd64.tar.gz"
      sha256 "020ce7608f2fb5cfd2aecc058dc85580226ece4ff27f87d34424d653bedcbe97"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28458/reactor-cli_v1.20260924.28458_linux-arm64.tar.gz"
      sha256 "6e890d51c22fa822a737decf154b7d16f757d42a499c1fc47070356988b359aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28458/reactor-cli_v1.20260924.28458_linux-amd64.tar.gz"
      sha256 "bb967ac36a1185a431e16bd9b703b4a67db0c7c0ddcba6971b231a3ede046ce7"
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
