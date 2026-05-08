# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260508.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.6/reactor-cli_v1.20260508.6_darwin-arm64.tar.gz"
      sha256 "01c21af6eda311fa7adfd2cb61e91dd9db55ec3aaed8c87978f3b33883d6dd5a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.6/reactor-cli_v1.20260508.6_darwin-amd64.tar.gz"
      sha256 "b2152c724638ab3f2e0c604d572fb36017bcccabc3f7477c069543ef2463c195"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.6/reactor-cli_v1.20260508.6_linux-arm64.tar.gz"
      sha256 "4afcbbc241203452613ba7128e0ea3d33f1146bd3c27772774cec9995eb974f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.6/reactor-cli_v1.20260508.6_linux-amd64.tar.gz"
      sha256 "efd7f8d2b34bd6f51010e1d1f97e323522149e27eb48811c819f4aaa0d865a46"
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
