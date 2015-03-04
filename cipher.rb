# Copyright (c) 2015 Sebastian Abondano
#
# This is an excercise (project) I found on Odin Project
# (http://www.theodinproject.com/)


class Cipher
  attr_accessor :message, :cipher

  def initialize(message, factor)
    @message = message
    @factor = factor
    @cipher = []
  end

  def caesar_cipher
    @message.each_char do |char|
      if " " == char
        @cipher << char.ord
      else
        @cipher << char.ord + @factor
      end
    end

    @cipher = @cipher.map do |modified_ordinal|
      modified_ordinal.chr
    end

    @cipher.join
  end
end

message_1 = Cipher.new("What a string!", 5)
puts message_1.caesar_cipher
