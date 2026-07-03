# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260703.17297"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17297/reactor-cli_v1.20260703.17297_darwin-arm64.tar.gz"
      sha256 "8d5f10f47b623cda5189a63e4edd2c87e9a13325e9566f6980cf7e3b36ce1ae2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17297/reactor-cli_v1.20260703.17297_darwin-amd64.tar.gz"
      sha256 "c479d7efc3774d3d3447131e6ff9770cffb14a8eba0f7f40aeaf863998616c4b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17297/reactor-cli_v1.20260703.17297_linux-arm64.tar.gz"
      sha256 "37777819b971ba589463150d9ca7a0ca1b1144e6080904f43ff2cb8dc282be02"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17297/reactor-cli_v1.20260703.17297_linux-amd64.tar.gz"
      sha256 "aeacad43e85c34b59358d4ef657fd50ae8664bebd4afa59bb85072c53caad13d"
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
