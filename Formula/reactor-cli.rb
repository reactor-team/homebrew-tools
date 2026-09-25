# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260925.28489"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28489/reactor-cli_v1.20260925.28489_darwin-arm64.tar.gz"
      sha256 "50329880d35c996ba136e315b8b59eec9d4c5d28084d20a3fcd6638c196d8ecd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28489/reactor-cli_v1.20260925.28489_darwin-amd64.tar.gz"
      sha256 "990941365e6eca31e025221cc494bf39fcb2fe69f47c690204b980dab3ae9dd4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28489/reactor-cli_v1.20260925.28489_linux-arm64.tar.gz"
      sha256 "0218ac7f2a48dd09988ccd1c723f1a0d8abd149f2d5a1b4b79bb7378f47e2b1c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28489/reactor-cli_v1.20260925.28489_linux-amd64.tar.gz"
      sha256 "92699dd6052e6f19768facf5a56f438e508d4da86f24946d5d4b165d50c3833e"
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
