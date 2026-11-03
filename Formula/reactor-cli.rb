# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.243"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.243/reactor-cli_v1.20261103.243_darwin-arm64.tar.gz"
      sha256 "6949ce6c10bc4329c0d10195f2944fb5b7b4dc103b6a136cf90f18c9a9d9c62c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.243/reactor-cli_v1.20261103.243_darwin-amd64.tar.gz"
      sha256 "3aae55df0df3944413187014a06a551952d46c5d4dc38074f939759446669b9b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.243/reactor-cli_v1.20261103.243_linux-arm64.tar.gz"
      sha256 "4d031f341d60b2f1f3043cbb9ad11a734dd09f1403d3b176c30e6150dff199ab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.243/reactor-cli_v1.20261103.243_linux-amd64.tar.gz"
      sha256 "fbfe4c3fd119da3363b05e45e2f56e0ab476e661519ac4fb99bfe3da56ad139e"
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
