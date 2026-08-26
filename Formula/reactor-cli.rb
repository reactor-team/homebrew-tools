# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23328"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23328/reactor-cli_v1.20260826.23328_darwin-arm64.tar.gz"
      sha256 "7dbbc6f93c0714e569b2f9966503fdf7c62505584d0250e96b580ed927daedb0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23328/reactor-cli_v1.20260826.23328_darwin-amd64.tar.gz"
      sha256 "ae376048c95f3623a43a4a30c6d28bf2d865791c205956c15a913cfd66739b02"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23328/reactor-cli_v1.20260826.23328_linux-arm64.tar.gz"
      sha256 "d0c66701aa3c49ea9b162c4d6ab0411955d042547d5e297c8e1728319bf8a29a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23328/reactor-cli_v1.20260826.23328_linux-amd64.tar.gz"
      sha256 "9394f8c87fb5eab3ef1532f26ad9a05bf26a8e346945b4fc6a1b5883be8690cd"
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
