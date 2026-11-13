# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.10063"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.10063/reactor-cli_v1.20261112.10063_darwin-arm64.tar.gz"
      sha256 "e687f87fc62c4511d22cbe4608821d5dfff0b3c1a692152d93d99ae43d264233"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.10063/reactor-cli_v1.20261112.10063_darwin-amd64.tar.gz"
      sha256 "acdf58be7857f5ab1555faa555e74b6c045833380bba891f9bd74128e7c69d0f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.10063/reactor-cli_v1.20261112.10063_linux-arm64.tar.gz"
      sha256 "bbc90725a7438305d2df192ed66dfa91c564158c3b7d93d3c945d7ac54e417b7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.10063/reactor-cli_v1.20261112.10063_linux-amd64.tar.gz"
      sha256 "f0d30ffca200f6763b1c306c2972d218476b8b5d50cbe171fe638c6e2e886f85"
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
