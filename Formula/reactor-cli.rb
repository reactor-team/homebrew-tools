# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.157"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.157/reactor-cli_v1.20261024.157_darwin-arm64.tar.gz"
      sha256 "a53caa3451020757d62e0c9517f499e424768d8c145b4dd2f48dd3e967be9fe8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.157/reactor-cli_v1.20261024.157_darwin-amd64.tar.gz"
      sha256 "43d049a79e77577d453955df92b959ff6d5e016c875569e6a204eb50443aaaeb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.157/reactor-cli_v1.20261024.157_linux-arm64.tar.gz"
      sha256 "e7460d9e6d749a42c7487fbad9f9eab944b9fd75a1645d4e47514266bad4347b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.157/reactor-cli_v1.20261024.157_linux-amd64.tar.gz"
      sha256 "5ae806c0e5476463c413738699606d83a0f8f442dfdfb00358f8e307430203e1"
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
