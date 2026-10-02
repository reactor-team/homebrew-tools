# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.221"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.221/reactor-cli_v1.20261002.221_darwin-arm64.tar.gz"
      sha256 "dd0d71a59eba208aa3715fcbe20ca4a39857b0b25e0b1cbd791352f54a0fedd0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.221/reactor-cli_v1.20261002.221_darwin-amd64.tar.gz"
      sha256 "ccb703126d51cb2cce26e62deddf9fe4993ac93d4121f7672e57b957a5c45bf2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.221/reactor-cli_v1.20261002.221_linux-arm64.tar.gz"
      sha256 "715153e2e7ff9ed6715f05dd7dd7d5f765f1035f564f8d81266e7349529e7aa6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.221/reactor-cli_v1.20261002.221_linux-amd64.tar.gz"
      sha256 "40d386d196e3f5e3abc05e6fb864436c1d8f2e0ce1ccbea22c6c2fd86bd4276c"
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
