# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.8/reactor-cli_v1.20261126.8_darwin-arm64.tar.gz"
      sha256 "615cb4120796bc1cb4888daa379cc8d31a465785763093b75071448959f7ab77"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.8/reactor-cli_v1.20261126.8_darwin-amd64.tar.gz"
      sha256 "43532be51f4cbfed171b736fdcbfe3cd0377193e324b6706914a625673defbe3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.8/reactor-cli_v1.20261126.8_linux-arm64.tar.gz"
      sha256 "db83c1b2e5b28dd1941fea3eb88a80685be13bc36f0d32ae5593b3bfe3a0829a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.8/reactor-cli_v1.20261126.8_linux-amd64.tar.gz"
      sha256 "ab5e7516a6a1bd351bd2475d58a196c2fee3a640e6a43348ca7c01fee165e492"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
