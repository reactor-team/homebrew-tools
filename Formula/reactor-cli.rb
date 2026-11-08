# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.157"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.157/reactor-cli_v1.20261108.157_darwin-arm64.tar.gz"
      sha256 "e2d3f954f014a733459aaa02a8021dc8e8d584dbcec4dde110ab4a7a3d048c31"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.157/reactor-cli_v1.20261108.157_darwin-amd64.tar.gz"
      sha256 "495873ff2736fbdacee95a67f2181c2f7f9a763aefe461a2ca5f736f8d171c40"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.157/reactor-cli_v1.20261108.157_linux-arm64.tar.gz"
      sha256 "892c2c2dd54f12bebd7f8a59e401bcc2f8944992360815c4f6e4e843b6d880c6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.157/reactor-cli_v1.20261108.157_linux-amd64.tar.gz"
      sha256 "8890512781b40d6857ccd2e9ba868ff4e84b50330a2cb7b1d861bb3f72d62f45"
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
