# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.505"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.505/reactor-cli_v1.20261112.505_darwin-arm64.tar.gz"
      sha256 "dee8faeec39f59b32d73b5ea9fc09ba5fbbe31f640c8ebe4191f7664cdf11ba8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.505/reactor-cli_v1.20261112.505_darwin-amd64.tar.gz"
      sha256 "f656550d0daf4d062a8ec6030c75f67da524fb2d7a78bc8597e7ad3a4cd17734"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.505/reactor-cli_v1.20261112.505_linux-arm64.tar.gz"
      sha256 "264324ec6bc3d1fc6a06b339f6af593490a4fd25d62034d5cf5e6abe1a4f4648"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.505/reactor-cli_v1.20261112.505_linux-amd64.tar.gz"
      sha256 "928e3eca5283f6b23d6d9dda8abfa6cf0558c2526c82e44f15519c42b922cdbe"
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
