# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23358"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23358/reactor-cli_v1.20260826.23358_darwin-arm64.tar.gz"
      sha256 "6327b0afc634b82d57cb16e2281b5707272760cf410f5ee785d916b8952b2f8c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23358/reactor-cli_v1.20260826.23358_darwin-amd64.tar.gz"
      sha256 "ae448f634d53c2c39031184656e2e4701b49840ebed9b418390111c3d98fbce1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23358/reactor-cli_v1.20260826.23358_linux-arm64.tar.gz"
      sha256 "16f2c1aac7a1bd14dffe45c3a27dfad8e431952d6e06341ac6090982e169c324"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23358/reactor-cli_v1.20260826.23358_linux-amd64.tar.gz"
      sha256 "3e3045384e2f7723e4012c34172a712299a059a6561da7f510e0ffc74837dc68"
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
