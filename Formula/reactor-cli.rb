# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.287"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.287/reactor-cli_v1.20261009.287_darwin-arm64.tar.gz"
      sha256 "fb5c4d2b8e047cebf7975513c338dbb28da50880df78708e3a9af4e33f3971d7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.287/reactor-cli_v1.20261009.287_darwin-amd64.tar.gz"
      sha256 "cee211450320c47250384fdad905b4bf301232b7cbf5254e78faebac9554d47e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.287/reactor-cli_v1.20261009.287_linux-arm64.tar.gz"
      sha256 "930c1b456b1043d6fd94a553625794ef9296e2f56a56ec47290029313c568652"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.287/reactor-cli_v1.20261009.287_linux-amd64.tar.gz"
      sha256 "0174f377ff0c0606e4d2ef5c5e2156ab70b8608fc33f041b75979544b1dede99"
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
