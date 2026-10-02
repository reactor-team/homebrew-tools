# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.247"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.247/reactor-cli_v1.20261002.247_darwin-arm64.tar.gz"
      sha256 "1da838736a5c9f48fc6d001aecbbc45208851e90417f113eeb8b15ad4566b655"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.247/reactor-cli_v1.20261002.247_darwin-amd64.tar.gz"
      sha256 "56712a45e39452d8a920ea87ca140e61177b4896937cae3d4cd717686f6a396c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.247/reactor-cli_v1.20261002.247_linux-arm64.tar.gz"
      sha256 "d5f9eb6e052d0459c29f76817670ab4209da3758af7ae3c91b0bfae0808d789e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.247/reactor-cli_v1.20261002.247_linux-amd64.tar.gz"
      sha256 "ae732f99610282da465c8c59e8cfa487de6cf10f75ec9839e2c21c74fbf2c72b"
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
