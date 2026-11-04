# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261104.279"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261104.279/awsrea_v1.20261104.279_darwin-arm64.tar.gz"
      sha256 "e348b351292c32a64b98fa007e97ab2d89628dd80a5b02e2d753fbcd76e8d15b"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261104.279/awsrea_v1.20261104.279_darwin-amd64.tar.gz"
      sha256 "7c3ae610aadf7ac45539d203faeca50227f0833dcc27465d38feb39577d57d19"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261104.279/awsrea_v1.20261104.279_linux-arm64.tar.gz"
      sha256 "44cd3d5c0e91e63f1ec96ba43ae0371a265b86d78fdf7c3b9d6ee3bad14d85cd"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261104.279/awsrea_v1.20261104.279_linux-amd64.tar.gz"
      sha256 "6fd915a19ab17cf04646587e0e95073a579c8cafd7476ab81ff035610413aeed"
    end
  end

  def install
    bin.install "awsrea"
    # Keeps existing `aws-sso-reactor` aliases and credential_process lines working.
    bin.install_symlink "awsrea" => "aws-sso-reactor"
  end

  def caveats
    <<~EOS
      Configure awsrea before first use:
        awsrea init
      or copy the config file your team provides to ~/.reactor/awsrea.yaml.

      To let awsrea switch profiles in your shell, add this line to ~/.zshrc:
        eval "$(awsrea shell-init)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsrea --version")
  end
end
