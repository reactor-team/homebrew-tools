# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261007.147"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.147/reactor-cli_v1.20261007.147_darwin-arm64.tar.gz"
      sha256 "3e9b81ceed02591f16fde44a836495185f099586a77166b3af380814283bc9f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.147/reactor-cli_v1.20261007.147_darwin-amd64.tar.gz"
      sha256 "eba7eb6e3e8b491b02117568fdabce216ea392656393413bb7bb9ee9a2c0e535"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.147/reactor-cli_v1.20261007.147_linux-arm64.tar.gz"
      sha256 "0535d40573afcab6373ee10312449f181832c3108e93bf775b281fc4a74e6ed8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.147/reactor-cli_v1.20261007.147_linux-amd64.tar.gz"
      sha256 "06d2a636880d8a484a0e68cccc0585767e57912e1260c868b5109930463eaa79"
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
