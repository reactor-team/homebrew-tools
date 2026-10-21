# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.105"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.105/reactor-cli_v1.20261021.105_darwin-arm64.tar.gz"
      sha256 "247fe2f6d1abcdb6419ae88746a89c0c576e63885f4c5018b791f3da34bb7521"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.105/reactor-cli_v1.20261021.105_darwin-amd64.tar.gz"
      sha256 "919008db70635cdbf23167dd6fc217da61530e04343286bffbb9711b082b0248"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.105/reactor-cli_v1.20261021.105_linux-arm64.tar.gz"
      sha256 "5ff8930ec5f723cdb56d2fc262dc3424dded7be3151b9ee4232380ad62d40a88"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.105/reactor-cli_v1.20261021.105_linux-amd64.tar.gz"
      sha256 "d58c9d890c0be826ea93217bfa73d629ab77d3f1159f986f2745b049d12efcef"
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
