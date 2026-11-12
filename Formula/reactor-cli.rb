# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.3/reactor-cli_v1.20261112.3_darwin-arm64.tar.gz"
      sha256 "261a566ad636fb2760ebf88e6b76539411e72e9a2525112a9d790e8cba344d05"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.3/reactor-cli_v1.20261112.3_darwin-amd64.tar.gz"
      sha256 "764bb85a93a32746be73c1bc220e159cc21c2b7ff49daaf3fccbbabd56d1a55f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.3/reactor-cli_v1.20261112.3_linux-arm64.tar.gz"
      sha256 "9e0aa54409d88a03b1004680161ebba5a762f5d08f06285158c638154c9c69ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.3/reactor-cli_v1.20261112.3_linux-amd64.tar.gz"
      sha256 "598ed458ab536b0793c08e0769ebdd69f4bac1c8cc1f37dde84f752a01d23363"
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
