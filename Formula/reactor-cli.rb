# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.14/reactor-cli_v1.20261110.14_darwin-arm64.tar.gz"
      sha256 "9870a67066bf4ae6f7f64e968aee0cc18e81167d6c0664cda7be4ee8d5276460"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.14/reactor-cli_v1.20261110.14_darwin-amd64.tar.gz"
      sha256 "358c82821fd78d4ecadc5c26f91fd1e3586373c54b1b4bf4605b2b4314e057ee"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.14/reactor-cli_v1.20261110.14_linux-arm64.tar.gz"
      sha256 "4f5b70a66e29e8e47431b80268a7caf88a3172ff56ac27688fe24605366be75e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.14/reactor-cli_v1.20261110.14_linux-amd64.tar.gz"
      sha256 "d0ef2d7981e9b49b12bc16191c0fb4639450e7b24bb9a0865545e69dc3dc9c2d"
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
