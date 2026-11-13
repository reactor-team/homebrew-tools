# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.44"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.44/reactor-cli_v1.20261113.44_darwin-arm64.tar.gz"
      sha256 "c21491dd4fb5e55e80cfb69cab765e491d455b1b73b45f9d2a64b5f3f57fb733"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.44/reactor-cli_v1.20261113.44_darwin-amd64.tar.gz"
      sha256 "be54c223cff26b42cccb6908a5c937dd6cab48b0b6d5efeb6f19b9299385a1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.44/reactor-cli_v1.20261113.44_linux-arm64.tar.gz"
      sha256 "991357b0fdf80591dac8bf145ebef272cc9dea063b036eaef31207cc1809c8eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.44/reactor-cli_v1.20261113.44_linux-amd64.tar.gz"
      sha256 "429ce716f4546b38673155c0ec36a9213df996f27fb614e94bc9f2a9bd07098f"
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
