# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.84"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.84/reactor-cli_v1.20260929.84_darwin-arm64.tar.gz"
      sha256 "21b0bc7fba2b0704259ded0c3699d0847c00079ffd2d1bd22b00559d7f8b7285"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.84/reactor-cli_v1.20260929.84_darwin-amd64.tar.gz"
      sha256 "71b3372c79b486dbfa7e7dd0d296509daecf6734611089bdc534449a4398eb93"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.84/reactor-cli_v1.20260929.84_linux-arm64.tar.gz"
      sha256 "d6999d14585e96adc31f110cf42b1070132df621be4ba9055ae729b875b1b106"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.84/reactor-cli_v1.20260929.84_linux-amd64.tar.gz"
      sha256 "413448fabbebbe6cd5183cf777cab2d8bcf84258a1bd6a9cad6dea8dd89fb1b0"
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
