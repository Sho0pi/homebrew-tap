# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gocat < Formula
  desc "A simple CLI for managing your tasks."
  homepage "https://github.com/sho0pi/gocat"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Sho0pi/gocat/releases/download/v0.2.0/gocat_0.2.0_darwin_amd64.tar.gz"
      sha256 "6497518c519ccfc683e9d95e6ac85980be674e56cc65e4368a42979f0ec3d27a"

      def install
        bin.install "gocat"
        bash_completion.install "completions/gocat.bash" => "gocat"
        zsh_completion.install "completions/gocat.zsh" => "_gocat"
        fish_completion.install "completions/gocat.fish" => "gocat.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Sho0pi/gocat/releases/download/v0.2.0/gocat_0.2.0_darwin_arm64.tar.gz"
      sha256 "3000e69e6789c202e3f3ad393457b24cdc6121d09e5dbf4ae26ef4952628590d"

      def install
        bin.install "gocat"
        bash_completion.install "completions/gocat.bash" => "gocat"
        zsh_completion.install "completions/gocat.zsh" => "_gocat"
        fish_completion.install "completions/gocat.fish" => "gocat.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Sho0pi/gocat/releases/download/v0.2.0/gocat_0.2.0_linux_amd64.tar.gz"
        sha256 "03c93ce68d7aafa34d02b525de1410fcd63d0ff4be64d92ab0fd8eb991b00edc"

        def install
          bin.install "gocat"
          bash_completion.install "completions/gocat.bash" => "gocat"
          zsh_completion.install "completions/gocat.zsh" => "_gocat"
          fish_completion.install "completions/gocat.fish" => "gocat.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Sho0pi/gocat/releases/download/v0.2.0/gocat_0.2.0_linux_arm64.tar.gz"
        sha256 "945f71e9005731f4aff8f2243978de6cf17dee3e98ed5ec058dccf18fca8f01c"

        def install
          bin.install "gocat"
          bash_completion.install "completions/gocat.bash" => "gocat"
          zsh_completion.install "completions/gocat.zsh" => "_gocat"
          fish_completion.install "completions/gocat.fish" => "gocat.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/gocat --version"
  end
end
