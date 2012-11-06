require File.expand_path '../common', __FILE__
module RegexpLibrary
  module IP
    to256 = TO256
    hex = HEX

    # valid IPv4 address in 4 octets written in decimals
    V4 = /\b#{to256}(?:\.#{to256}){3}\b/

    # any decimal number upto 65535
    PORT = /\b(?<!-)(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9][0-9]|6[0-4][0-9][0-9][0-9]|[0-4]?(?:[0-9][0-9]{,3}))\b/

    # https://gist.github.com/294476
    V6 = /^\s*(((#{hex}{1,4}:){7}(#{hex}{1,4}|:))|((#{hex}{1,4}:){6}(:#{hex}{1,4}|(#{V4})|:))|((#{hex}{1,4}:){5}(((:#{hex}{1,4}){1,2})|:(#{V4})|:))|((#{hex}{1,4}:){4}(((:#{hex}{1,4}){1,3})|((:#{hex}{1,4})?:(#{V4}))|:))|((#{hex}{1,4}:){3}(((:#{hex}{1,4}){1,4})|((:#{hex}{1,4}){0,2}:(#{V4}))|:))|((#{hex}{1,4}:){2}(((:#{hex}{1,4}){1,5})|((:#{hex}{1,4}){0,3}:(#{V4}))|:))|((#{hex}{1,4}:){1}(((:#{hex}{1,4}){1,6})|((:#{hex}{1,4}){0,4}:(#{V4}))|:))|(:(((:#{hex}{1,4}){1,7})|((:#{hex}{1,4}){0,5}:(#{V4}))|:)))(%.+)?\s*$/

  end

end
