# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.12"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.12/reactor-cli_v1.20261120.12_darwin-arm64.tar.gz"
      sha256 "50d008608ddaebac103352e9c40e3046529d79137fa21b850896e536e0286dc6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.12/reactor-cli_v1.20261120.12_darwin-amd64.tar.gz"
      sha256 "514b003ccd07220a59650601490b82f4998d8039b61f03e9070ca58ef0171733"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.12/reactor-cli_v1.20261120.12_linux-arm64.tar.gz"
      sha256 "9468474fcb8dcd029c98e5e289553363d3ca86e044fb8f830e7c9f44c5f573bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.12/reactor-cli_v1.20261120.12_linux-amd64.tar.gz"
      sha256 "46f9c649763c60bbe06cd3dbed8fc462a7b50944256d35b93b8f6b85a8078480"
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
