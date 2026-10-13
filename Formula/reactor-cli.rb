# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.426"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.426/reactor-cli_v1.20261013.426_darwin-arm64.tar.gz"
      sha256 "e31a0b5b0a2ef138db85e853154823996c20500b4e7add23cf37f346c42b52f7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.426/reactor-cli_v1.20261013.426_darwin-amd64.tar.gz"
      sha256 "a0a1cc225d5abee7c616055850dfdcd81893d0a17646af4df6427e0db14a48ad"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.426/reactor-cli_v1.20261013.426_linux-arm64.tar.gz"
      sha256 "4e20f34b9a5e473f6f42762613a5f9f981ba0aa45cfbf4cd2fde03ae568bf3c2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.426/reactor-cli_v1.20261013.426_linux-amd64.tar.gz"
      sha256 "0597c6e415c66833d2b21bbe2554f1913b2f8fc0c61d847c7be496c3aca2a7b8"
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
