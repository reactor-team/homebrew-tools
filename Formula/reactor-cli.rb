# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260703.17299"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17299/reactor-cli_v1.20260703.17299_darwin-arm64.tar.gz"
      sha256 "b515e81edb76d1338a1b0e4123e4058c50c9583bf6da6b8a3e27c747df9cff1c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17299/reactor-cli_v1.20260703.17299_darwin-amd64.tar.gz"
      sha256 "1b43dc08c5211e5c6febf197d4d72ec8b6acc046cc36339ae86aadb01d2e2831"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17299/reactor-cli_v1.20260703.17299_linux-arm64.tar.gz"
      sha256 "47685ce5cb604e7eb8b4af2477e31355b8d207235d086106c79124d10a4627ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17299/reactor-cli_v1.20260703.17299_linux-amd64.tar.gz"
      sha256 "d311a6c52a9eec6ac8808caadab9b07f394c6cd6cd1e0332e5e15ec43ec3051b"
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
