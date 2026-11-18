# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.27"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.27/reactor-cli_v1.20261118.27_darwin-arm64.tar.gz"
      sha256 "0c571d449291701f267703e718da913f44dddd5e59b0c2f0745248d805833b59"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.27/reactor-cli_v1.20261118.27_darwin-amd64.tar.gz"
      sha256 "f8ac4c7a66798aec4d11a224d52bcf562a7757759c5eb25ad91528ae4cde6ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.27/reactor-cli_v1.20261118.27_linux-arm64.tar.gz"
      sha256 "525a951db4c79e53e682bc0d4f28ef7707e4b300dad6f3f33eabfa8062c8bc55"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.27/reactor-cli_v1.20261118.27_linux-amd64.tar.gz"
      sha256 "5d00ecedbda106af5ea0d4deab1dfddd16e252a1f3566260a91b3c8ce15255c6"
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
