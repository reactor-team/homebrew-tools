# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.401"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.401/reactor-cli_v1.20261102.401_darwin-arm64.tar.gz"
      sha256 "a546f5d5512e80a967da1a4a76d2cfd08b67f8a36303c728d5273687053cfb38"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.401/reactor-cli_v1.20261102.401_darwin-amd64.tar.gz"
      sha256 "b6e0650afd649cbcbd9de161e932a278d2a0f8a3e999f9b155cec28460845854"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.401/reactor-cli_v1.20261102.401_linux-arm64.tar.gz"
      sha256 "9ebd2a513a4e2e25e29acde7d0bc5121e6be3e025db39ab73f0e07617a1ded81"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.401/reactor-cli_v1.20261102.401_linux-amd64.tar.gz"
      sha256 "b148e1301125c0f9185a30b693e1dcd77a9787ce281bb09152b253de61a62ea3"
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
