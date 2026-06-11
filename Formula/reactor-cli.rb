# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15834"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15834/reactor-cli_v1.20260611.15834_darwin-arm64.tar.gz"
      sha256 "9b2d6407876204d2bf7335464c71d83aaf2a1e7ae499c57744a3733a0f2ac9ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15834/reactor-cli_v1.20260611.15834_darwin-amd64.tar.gz"
      sha256 "698fc8366595cb41a80b509e679a49ff21581d7733ef8bb822e95aecc7ac53f4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15834/reactor-cli_v1.20260611.15834_linux-arm64.tar.gz"
      sha256 "90b947407c34919efc0559500da681ef586eea70d11b8abb9560c625982661c5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15834/reactor-cli_v1.20260611.15834_linux-amd64.tar.gz"
      sha256 "55b7e889e034a9524894a6997dfda8b1ee1f60adb9e596d3f17e1fd9cc8877d9"
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
