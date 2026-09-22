# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28161"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28161/reactor-cli_v1.20260922.28161_darwin-arm64.tar.gz"
      sha256 "c625ea86844a30565ac2bc7e33eb9d75de8e30db69eb8bc4287a1d03d55d0805"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28161/reactor-cli_v1.20260922.28161_darwin-amd64.tar.gz"
      sha256 "e6220f238016775d1d2b161d74ff527118cad206535494af3558fa8254ecd4a3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28161/reactor-cli_v1.20260922.28161_linux-arm64.tar.gz"
      sha256 "99c69d6447c056bac84811c084672e6387f4f9d1850b9c639adc7a7a87c64736"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28161/reactor-cli_v1.20260922.28161_linux-amd64.tar.gz"
      sha256 "c99ecee2da8b177a25980e77206a58f915fdd8b96b120f1c01c2c0a47bc592ff"
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
