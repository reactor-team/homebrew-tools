# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261022.64"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.64/reactor-cli_v1.20261022.64_darwin-arm64.tar.gz"
      sha256 "0a0eb5779dd964667286f645c9db52e33565dfc6ab99c428d91781bb8e610db4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.64/reactor-cli_v1.20261022.64_darwin-amd64.tar.gz"
      sha256 "c4210ae1746eb6a88f8415ff0ece22c7b44162277ac31cc46f42b6d9678e7f08"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.64/reactor-cli_v1.20261022.64_linux-arm64.tar.gz"
      sha256 "5efc0a860dbfb4fc2dd971adcfa15472a1bc8c1c9aabd968567d95c6b4616f50"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.64/reactor-cli_v1.20261022.64_linux-amd64.tar.gz"
      sha256 "e4cb4201855efb387c5012e2122576a8bef88c604d42ef6727c088efd9db40bc"
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
