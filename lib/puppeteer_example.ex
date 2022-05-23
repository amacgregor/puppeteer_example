defmodule PuppeteerExample do
  @moduledoc """
  An example module for taking screenshots with Puppeteer-Img.
  """

  @doc """
  Takes a screenshot of the given url and saves it to the given filename.
  """
  def take_screenshot(url, filename) do
    options = [
      type: "jpeg",
      path: "./" <> filename
    ]

    case PuppeteerImg.generate_image(url, options) do
      {:ok, path} -> IO.puts(path) # where "path" == final path where generated image is stored.
      {:error, error} -> IO.puts(error) # where "error" == some error message.
    end
  end
end
