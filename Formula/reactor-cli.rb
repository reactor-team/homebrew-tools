# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260722.19001"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19001/reactor-cli_v1.20260722.19001_darwin-arm64.tar.gz"
      sha256 "2ba52f56dc87e98ee8e35f34400bc108c9c6b43247fd5e6f4838a3cb65237cd8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19001/reactor-cli_v1.20260722.19001_darwin-amd64.tar.gz"
      sha256 "cf9601d752e1544e70dde4143f4bf44cb14e885daab774a7989a9db7ddc4f13d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19001/reactor-cli_v1.20260722.19001_linux-arm64.tar.gz"
      sha256 "09f562166de43232f8bb100c71a08bcd714501c934dff8d68b87b3cbdb2fbeb7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19001/reactor-cli_v1.20260722.19001_linux-amd64.tar.gz"
      sha256 "1ce0cbde5f7e761dc79dd3d8f6bf8f331d9142383939d11d51dfe07b565d4dc9"
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
