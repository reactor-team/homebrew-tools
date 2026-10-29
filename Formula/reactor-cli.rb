# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.544"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.544/reactor-cli_v1.20261029.544_darwin-arm64.tar.gz"
      sha256 "f46ccee4a47ee1b2b88fd876037f27a2522063a8fcc88b4c8c1dea6c3294aa7e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.544/reactor-cli_v1.20261029.544_darwin-amd64.tar.gz"
      sha256 "67669b5576ada9d902c6ba60eef1e57e6982ec2aa93b7e3351af875e1fba4d69"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.544/reactor-cli_v1.20261029.544_linux-arm64.tar.gz"
      sha256 "37168f39f08a85ff18b3d0672a20bd1c9e59745e8df6c8bac7f7973a1b4a5f6f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.544/reactor-cli_v1.20261029.544_linux-amd64.tar.gz"
      sha256 "6d54b7503c1226032afc76fcc0e8015f665bed328f499adb2a049f02f76186cc"
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
