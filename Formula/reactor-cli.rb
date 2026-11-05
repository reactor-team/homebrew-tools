# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.205"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.205/reactor-cli_v1.20261105.205_darwin-arm64.tar.gz"
      sha256 "fd200be4e4577dc6f1aaea4dadc3433fb4f53e9f79f3cc35e66e727d2a98e9b3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.205/reactor-cli_v1.20261105.205_darwin-amd64.tar.gz"
      sha256 "7165eaf08e3efd6b7258a757d9262b250eeeb9214b0d9c7521d85c9f0aa29fe0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.205/reactor-cli_v1.20261105.205_linux-arm64.tar.gz"
      sha256 "8e24b2e72893c6490cf8d9e35634671773a019cdf1f90cac0f3025ad730ab98c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.205/reactor-cli_v1.20261105.205_linux-amd64.tar.gz"
      sha256 "a4fb7a33011be03708c5dd10fef09d5988eced8b717c9b085248222590aa77d6"
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
