# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260702.17163"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17163/reactor-cli_v1.20260702.17163_darwin-arm64.tar.gz"
      sha256 "cd0f986b0cd64cc77063cdf0a3dc82533b145f3c09314d041309ad527f705828"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17163/reactor-cli_v1.20260702.17163_darwin-amd64.tar.gz"
      sha256 "adc15fa05138d32197f22428bbeab23b95cfd8184fe34322a44f2a95147d7ccc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17163/reactor-cli_v1.20260702.17163_linux-arm64.tar.gz"
      sha256 "6445e196b467ce5b567d851abb0968d81553212666cbb964a2001d490bee02f3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17163/reactor-cli_v1.20260702.17163_linux-amd64.tar.gz"
      sha256 "bd9524f9c8a70b75c20075f6a97c563667a36bd8aa58321945f89c7433cee93a"
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
