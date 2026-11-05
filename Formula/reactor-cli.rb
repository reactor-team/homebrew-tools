# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.125"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.125/reactor-cli_v1.20261105.125_darwin-arm64.tar.gz"
      sha256 "9d8939a8f0c046396c8df701feeb8c942c9f6558ac8c237857ddfb7f1674fbc9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.125/reactor-cli_v1.20261105.125_darwin-amd64.tar.gz"
      sha256 "f71087bc00fd2545ccdda196f14dede4d74752e16d32aa0cea4441832b9e2304"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.125/reactor-cli_v1.20261105.125_linux-arm64.tar.gz"
      sha256 "53d64f24786b1e6f0e8f4876dcdcfc304a1e2c15796deb84af9d7c22a6bc8eb0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.125/reactor-cli_v1.20261105.125_linux-amd64.tar.gz"
      sha256 "297ab00ef7c54f957f8a9891bee2eb993dd685b58569758f82365f976b43bd01"
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
