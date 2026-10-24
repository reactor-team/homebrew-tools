# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.142"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.142/reactor-cli_v1.20261024.142_darwin-arm64.tar.gz"
      sha256 "db90bbff1f69b4ed11ca32c431809c213eb3676f913bc4ad128734ef8a62c9aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.142/reactor-cli_v1.20261024.142_darwin-amd64.tar.gz"
      sha256 "f6bc28a25d133e4b039f3fb3db7abc10cf09bc8c113bfc9a237f6552f07886db"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.142/reactor-cli_v1.20261024.142_linux-arm64.tar.gz"
      sha256 "98f19279bab0becd3e7d5ee155cb73e23fa4b8bf825d7bcba8052c82c1165b90"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.142/reactor-cli_v1.20261024.142_linux-amd64.tar.gz"
      sha256 "98895916220da574c0320d8bd4dc5d93e1e4f382f256dd137b24eb37c88f0ebd"
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
