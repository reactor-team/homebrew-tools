# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17673"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17673/reactor-cli_v1.20260707.17673_darwin-arm64.tar.gz"
      sha256 "95b60facf6274d2c4b9128427cc023c2f596961555471d54ee50687e26ad55b9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17673/reactor-cli_v1.20260707.17673_darwin-amd64.tar.gz"
      sha256 "faabfa0c616dfc2287b14bae3b113cf89203e0be385da1217830d99cb1c3907c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17673/reactor-cli_v1.20260707.17673_linux-arm64.tar.gz"
      sha256 "26d61ef659544f018e2118f91e8ee8629105487ac287b323b9a90e7981cfb0c8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17673/reactor-cli_v1.20260707.17673_linux-amd64.tar.gz"
      sha256 "eb5f9ff4d654f9beed5c501cb938f4163b3279060bc99e179cabcc266699e026"
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
