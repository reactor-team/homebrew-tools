# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260823.22889"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22889/reactor-cli_v1.20260823.22889_darwin-arm64.tar.gz"
      sha256 "a03952f9cbfe3ebd6246c55d6775adb0c46a563d45220b559f89e6655121a538"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22889/reactor-cli_v1.20260823.22889_darwin-amd64.tar.gz"
      sha256 "66927c8dc43b8a1e406760649cad8afae8f9d508fcfad9488a77d88fab24e885"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22889/reactor-cli_v1.20260823.22889_linux-arm64.tar.gz"
      sha256 "a4279e7ad3b259f844a2e8e6859bae0879c95b5c40bb1e4fc13f6936ef7c87b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22889/reactor-cli_v1.20260823.22889_linux-amd64.tar.gz"
      sha256 "c61cf9776b19d726e8d513340ee174ef8d9a233c6ae94c7284850031a6145f8e"
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
