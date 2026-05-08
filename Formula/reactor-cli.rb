# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260508.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.8/reactor-cli_v1.20260508.8_darwin-arm64.tar.gz"
      sha256 "3f6b2292b57efc67fe6dfa0e8e5a7a99bb20a94a8fe799fea3ef1c45f24f7fc6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.8/reactor-cli_v1.20260508.8_darwin-amd64.tar.gz"
      sha256 "1de5a8c828c91745a51442e90d7179ab21abdb88006d8f129fca7cc36bb4b542"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.8/reactor-cli_v1.20260508.8_linux-arm64.tar.gz"
      sha256 "974a3f6982df2c51a7f7e85d7b3f87f39c30fdd5c85e4821d8a2db92ef9bb8c1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.8/reactor-cli_v1.20260508.8_linux-amd64.tar.gz"
      sha256 "92446b262af50ad674a176af6ba54cbce2f27c99abc74947e42daaabf90e8007"
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
