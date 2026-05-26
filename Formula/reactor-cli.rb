# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260526.12"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_darwin-arm64.tar.gz"
      sha256 "d6afb2f27ecf267234cc6baf713746ca6d21cf5ba44df13d98551ba7d427b3fa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_darwin-amd64.tar.gz"
      sha256 "4934297556cc84dac2ee060d6bd72701c34873cd648d962dc7c90f1033c1e68f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_linux-arm64.tar.gz"
      sha256 "2f7c2781a53ad784c3c120b4a5e97acd94a2f7d8492b84afc9978cf3ddb2e10d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_linux-amd64.tar.gz"
      sha256 "a87ba535f419488b06fd5764a77e16b14f1a68a04984556710c20b9976ddd1ec"
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
