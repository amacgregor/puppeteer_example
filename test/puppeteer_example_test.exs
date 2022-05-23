defmodule PuppeteerExampleTest do
  use ExUnit.Case
  doctest PuppeteerExample

  test "greets the world" do
    assert PuppeteerExample.hello() == :world
  end
end
