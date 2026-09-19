# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27874"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27874/reactor-cli_v1.20260919.27874_darwin-arm64.tar.gz"
      sha256 "bb56043059d6e8e7e1b7f8525a09500177b5371e460ca76c77cff77dc02df7da"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27874/reactor-cli_v1.20260919.27874_darwin-amd64.tar.gz"
      sha256 "13a594ff863d8843b907813750d4c6c30fa7ec9563bbbf31737f2b2f6402ca25"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27874/reactor-cli_v1.20260919.27874_linux-arm64.tar.gz"
      sha256 "efc5b431e7bf11ea8d42cb4ac4f649ce8c9479f1aed2cf0edcef66324e5353f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27874/reactor-cli_v1.20260919.27874_linux-amd64.tar.gz"
      sha256 "d8bfcae841298b5e880ebf30015fd7ebddcfacc191488f6b509a935a73e292ed"
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
