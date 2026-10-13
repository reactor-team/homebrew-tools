# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.296"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.296/reactor-cli_v1.20261013.296_darwin-arm64.tar.gz"
      sha256 "732756bd1c26103880030ed950ad1f175ee7fda66023117e5e81a9b4f5e29031"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.296/reactor-cli_v1.20261013.296_darwin-amd64.tar.gz"
      sha256 "1ac44446a4ea91c4833c8c6fe12ce4e70c3f0ecea06b37d5d054659774c2a7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.296/reactor-cli_v1.20261013.296_linux-arm64.tar.gz"
      sha256 "a0fdc48c29be987a08175b16110e457a7afc97b89d74554077dda072026b6fba"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.296/reactor-cli_v1.20261013.296_linux-amd64.tar.gz"
      sha256 "06f3a40740f7cf7b4cb6a6233e2c945a64deb08765f4c125a568c9ec29063924"
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
