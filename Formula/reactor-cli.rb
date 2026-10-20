# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.245"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.245/reactor-cli_v1.20261020.245_darwin-arm64.tar.gz"
      sha256 "962c24cb54efaa736de587d4683e6ecbe5523bca74e6dcbc5f979f9aa4af76b6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.245/reactor-cli_v1.20261020.245_darwin-amd64.tar.gz"
      sha256 "6180aabb073355421bc5be191c432ea66f917b58f68d37e5da13748557417582"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.245/reactor-cli_v1.20261020.245_linux-arm64.tar.gz"
      sha256 "b01f5840599d56650467cedf5e018c12f2d493fa80b46c06f2929c6715909f20"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.245/reactor-cli_v1.20261020.245_linux-amd64.tar.gz"
      sha256 "b5cf564d376bb2b4ba099c1d5ff0c95228fac0994a0231e0bafef1c028bf2d65"
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
