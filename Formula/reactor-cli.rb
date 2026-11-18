# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.24"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.24/reactor-cli_v1.20261118.24_darwin-arm64.tar.gz"
      sha256 "c2ba8f0e44be1aecbc9e74dba57e305237d0657d9d66f6198389ce3d4fd34b07"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.24/reactor-cli_v1.20261118.24_darwin-amd64.tar.gz"
      sha256 "28a71b7e9e9ffa1698e7998086a992f4c9db2a255803b956fb3431f800467bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.24/reactor-cli_v1.20261118.24_linux-arm64.tar.gz"
      sha256 "aafadaa1d86aad0d667984256a01c214da39f86076d009a82fcdcd89eecbb1c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.24/reactor-cli_v1.20261118.24_linux-amd64.tar.gz"
      sha256 "c4f04c5e55e39a84a2e7a499135ddad3db427b67e94f733a67a4169ffb0fd486"
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
