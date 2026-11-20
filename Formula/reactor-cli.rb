# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.13"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.13/reactor-cli_v1.20261120.13_darwin-arm64.tar.gz"
      sha256 "068ea7c2f454b89ae9e619a8745770e8e14859b64fc55e088abdc4f9e77f5808"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.13/reactor-cli_v1.20261120.13_darwin-amd64.tar.gz"
      sha256 "4aac95bc473369c6bc3fe82655901addd1743fdfea7e1ca49bcba4a09da50f16"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.13/reactor-cli_v1.20261120.13_linux-arm64.tar.gz"
      sha256 "0e0acb84141e706de22ac2f90fa39d4b786b74ec9d3b7e1d58afeb3677ed4417"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.13/reactor-cli_v1.20261120.13_linux-amd64.tar.gz"
      sha256 "be188f300c807c183679d3c04ce91b68491b6c65043484e4ba921d89054abb99"
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
