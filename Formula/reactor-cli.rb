# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260923.28321"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260923.28321/reactor-cli_v1.20260923.28321_darwin-arm64.tar.gz"
      sha256 "04fa010eba6474fe8152f8d0369497189e6fb33cb1c2814abf42386ed7a995ec"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260923.28321/reactor-cli_v1.20260923.28321_darwin-amd64.tar.gz"
      sha256 "78819574b947d85fc3c926ff7244e92aedfe396f3e79974d7420b16fed958da2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260923.28321/reactor-cli_v1.20260923.28321_linux-arm64.tar.gz"
      sha256 "4c1d5b3359c7f46b121641ca84b4e5ded3095669687df769f3f9a721e6fb4d11"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260923.28321/reactor-cli_v1.20260923.28321_linux-amd64.tar.gz"
      sha256 "644c1bc8f49a2e6244ab192c83c1847b79b675357dd8baa0bc0ad91526b62dca"
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
