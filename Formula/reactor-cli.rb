# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260616.16093"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16093/reactor-cli_v1.20260616.16093_darwin-arm64.tar.gz"
      sha256 "a12abc6432d749d74e762f54aa20d31b6dc19849ee825a37db8d530b69a7fd82"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16093/reactor-cli_v1.20260616.16093_darwin-amd64.tar.gz"
      sha256 "9a99dcf29e72dfe334a57c24e49714fad2f47981c218bf04a3ea91144ede5e3e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16093/reactor-cli_v1.20260616.16093_linux-arm64.tar.gz"
      sha256 "9e8ba508bc9214d55b58cfc6520804bc8aa88b0356dab13562df76d3794ccc5f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16093/reactor-cli_v1.20260616.16093_linux-amd64.tar.gz"
      sha256 "1406769acf74d51991e967550787099945d061fc9cecced5169b22872b29bcf3"
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
