# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.508"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.508/reactor-cli_v1.20261106.508_darwin-arm64.tar.gz"
      sha256 "ea648224dbed7f4a5b68f337001206656f618950fbf533f1039447123daebb96"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.508/reactor-cli_v1.20261106.508_darwin-amd64.tar.gz"
      sha256 "f58f764a04becdbab27ab859844c2ac1c63b4294c24cbf04293b4fc9ceb2641d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.508/reactor-cli_v1.20261106.508_linux-arm64.tar.gz"
      sha256 "afa9a3858eeeda460641cacc41657a230e22e8c53def6d06b9732038e3908643"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.508/reactor-cli_v1.20261106.508_linux-amd64.tar.gz"
      sha256 "5b79fc58fb36bbada1f6ea72b844cfdde63729636e0ab7a717e185ebf31fd93a"
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
