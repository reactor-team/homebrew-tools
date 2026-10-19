# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261019.41"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.41/reactor-cli_v1.20261019.41_darwin-arm64.tar.gz"
      sha256 "3ceb5c5cb5727437d40a442f51951cbe8da01b32b0051a0ba8d0183e45e170e3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.41/reactor-cli_v1.20261019.41_darwin-amd64.tar.gz"
      sha256 "2805eb73ca57d9bc87f485e2699cee40a01b1c82b1cf8a39511eadd44c70e75d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.41/reactor-cli_v1.20261019.41_linux-arm64.tar.gz"
      sha256 "82d4846b40a7584efcc2f29f552c7693461ccdf12ffbb3d769b856d8357e9586"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.41/reactor-cli_v1.20261019.41_linux-amd64.tar.gz"
      sha256 "d4caa82016cb531569f65ae47dfe650a756aed30024ace8eb9aec143ae88c9c8"
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
