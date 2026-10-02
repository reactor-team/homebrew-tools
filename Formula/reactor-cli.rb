# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.56"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.56/reactor-cli_v1.20261002.56_darwin-arm64.tar.gz"
      sha256 "7f856eb7c6427bbe71c7363a461ed32163502b55603bf1286509eb010920821b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.56/reactor-cli_v1.20261002.56_darwin-amd64.tar.gz"
      sha256 "e1768652067b234a116aa15b46f75e84a8b57fe09b57e1c92854269e1eb19b7b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.56/reactor-cli_v1.20261002.56_linux-arm64.tar.gz"
      sha256 "b68c113b002d5e827a2973250021ff58560e3744387e583bb799b42d27b47661"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.56/reactor-cli_v1.20261002.56_linux-amd64.tar.gz"
      sha256 "173c69a0d5af4856e7697c671d2c8a8fd35a3651f11fc4c7493c5bdb91692026"
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
