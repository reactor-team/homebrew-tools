# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.239"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.239/reactor-cli_v1.20261008.239_darwin-arm64.tar.gz"
      sha256 "613ab7d796d7ed578191abcf52aa8bbb95bc35d287c2536248d056c51c233bf2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.239/reactor-cli_v1.20261008.239_darwin-amd64.tar.gz"
      sha256 "ed2b4f77108f6278dee7992940a1fef042dcdef54ae1528ee702492842ac4f35"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.239/reactor-cli_v1.20261008.239_linux-arm64.tar.gz"
      sha256 "6aa61440d43215eaaf25980341c618c0231cf4121798b0c3b6b24145afc5a414"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.239/reactor-cli_v1.20261008.239_linux-amd64.tar.gz"
      sha256 "72e5fb5499a7f82bdaeacd7584f5b9fda45312f4dfb9d53edbff4378a05474bc"
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
