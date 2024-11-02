# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `uuid` gem.
# Please instead update this file by running `bin/tapioca gem uuid`.


# = Generating UUIDs
#
# Call #generate to generate a new UUID. The method returns a string in one of
# three formats. The default format is 36 characters long, and contains the 32
# hexadecimal octets and hyphens separating the various value parts. The
# <tt>:compact</tt> format omits the hyphens, while the <tt>:urn</tt> format
# adds the <tt>:urn:uuid</tt> prefix.
#
# For example:
#
#   uuid = UUID.new
#
#   10.times do
#     p uuid.generate
#   end
#
# = UUIDs in Brief
#
# UUID (universally unique identifier) are guaranteed to be unique across time
# and space.
#
# A UUID is 128 bit long, and consists of a 60-bit time value, a 16-bit
# sequence number and a 48-bit node identifier.
#
# The time value is taken from the system clock, and is monotonically
# incrementing.  However, since it is possible to set the system clock
# backward, a sequence number is added.  The sequence number is incremented
# each time the UUID generator is started.  The combination guarantees that
# identifiers created on the same machine are unique with a high degree of
# probability.
#
# Note that due to the structure of the UUID and the use of sequence number,
# there is no guarantee that UUID values themselves are monotonically
# incrementing.  The UUID value cannot itself be used to sort based on order
# of creation.
#
# To guarantee that UUIDs are unique across all machines in the network,
# the IEEE 802 MAC address of the machine's network interface card is used as
# the node identifier.
#
# For more information see {RFC 4122}[http://www.ietf.org/rfc/rfc4122.txt].
#
# source://uuid//lib/uuid.rb#62
class UUID
  # Create a new UUID generator.  You really only need to do this once.
  #
  # @return [UUID] a new instance of UUID
  #
  # source://uuid//lib/uuid.rb#256
  def initialize; end

  # Generates a new UUID string using +format+.  See FORMATS for a list of
  # supported formats.
  #
  # @raise [ArgumentError]
  #
  # source://uuid//lib/uuid.rb#283
  def generate(format = T.unsafe(nil)); end

  # Uses system calls to get a mac address
  #
  # source://uuid//lib/uuid.rb#238
  def iee_mac_address; end

  # source://uuid//lib/uuid.rb#354
  def inspect; end

  # return iee_mac_address if available, pseudo_mac_address otherwise
  #
  # source://uuid//lib/uuid.rb#249
  def mac_address; end

  # Updates the state file with a new sequence number.
  #
  # source://uuid//lib/uuid.rb#330
  def next_sequence; end

  # Generate a pseudo MAC address because we have no pure-ruby way
  # to know  the MAC  address of the  NIC this system  uses.  Note
  # that cheating  with pseudo arresses here  is completely legal:
  # see Section 4.5 of RFC4122 for details.
  #
  # This implementation is shamelessly stolen from
  #  https://github.com/spectra/ruby-uuid/blob/master/uuid.rb
  # Thanks spectra.
  #
  # source://uuid//lib/uuid.rb#215
  def pseudo_mac_address; end

  protected

  # Open the state file with an exclusive lock and access mode +mode+.
  #
  # source://uuid//lib/uuid.rb#363
  def open_lock(mode); end

  # Read the state from +io+
  #
  # source://uuid//lib/uuid.rb#376
  def read_state(io); end

  # Write that state to +io+
  #
  # source://uuid//lib/uuid.rb#386
  def write_state(io); end

  class << self
    # Generates a new UUID string using +format+.  See FORMATS for a list of
    # supported formats.
    #
    # source://uuid//lib/uuid.rb#126
    def generate(format = T.unsafe(nil)); end

    # Returns the UUID generator used by generate.  Useful if you need to mess
    # with it, e.g. force next sequence when forking (e.g. Unicorn, Resque):
    #
    # after_fork do
    #   UUID.generator.next_sequence
    # end
    #
    # source://uuid//lib/uuid.rb#138
    def generator; end

    # The access mode of the state file.  Set it with state_file.
    #
    # source://uuid//lib/uuid.rb#114
    def mode; end

    # source://uuid//lib/uuid.rb#118
    def mode=(mode); end

    # Call this to use a UUID Server.  Expects address to bind to (SOCKET_NAME is
    # a good default)
    #
    # source://uuid//lib/uuid.rb#145
    def server=(address); end

    # Creates an empty state file in #Dir.tmpdir/ruby-uuid or the windows common
    # application data directory using mode 0644.  Call with a different mode
    # before creating a UUID generator if you want to open access beyond your
    # user by default.
    #
    # If the default state dir is not writable, UUID falls back to ~/.ruby-uuid.
    #
    # State files are not portable across machines.
    #
    # source://uuid//lib/uuid.rb#158
    def state_file(mode = T.unsafe(nil)); end

    # Specify the path of the state file.  Use this if you need a different
    # location for your state file.
    #
    # Set to false if your system cannot use a state file (e.g. many shared
    # hosts).
    #
    # source://uuid//lib/uuid.rb#191
    def state_file=(path); end

    # Returns true if +uuid+ is in compact, default or urn formats.  Does not
    # validate the layout (RFC 4122 section 4) of the UUID.
    #
    # source://uuid//lib/uuid.rb#199
    def validate(uuid); end
  end
end

# Clock gap is the number of ticks (resolution: 10ns) between two Ruby Time
# ticks.
#
# source://uuid//lib/uuid.rb#83
UUID::CLOCK_GAPS = T.let(T.unsafe(nil), Integer)

# Clock multiplier. Converts Time (resolution: seconds) to UUID clock
# (resolution: 10ns)
#
# source://uuid//lib/uuid.rb#78
UUID::CLOCK_MULTIPLIER = T.let(T.unsafe(nil), Integer)

# Every server needs a client.  Client provides you with the single ultimate
# method: #generate.  Typically you'll use this instead of the local UUID
# generator:
#   UUID.server = UUID::SOCKET_NAME
#
# source://uuid//lib/uuid.rb#456
class UUID::Client
  # @return [Client] a new instance of Client
  #
  # source://uuid//lib/uuid.rb#458
  def initialize(address); end

  # Close the socket.
  #
  # source://uuid//lib/uuid.rb#496
  def close; end

  # Returns UNIXSocket or TCPSocket from address.  Returns argument if not a
  # string, so can pass through.
  #
  # source://uuid//lib/uuid.rb#475
  def connect(address); end

  # Talks to server and returns new UUID in specified format.
  #
  # @raise [ArgumentError]
  #
  # source://uuid//lib/uuid.rb#464
  def generate(format = T.unsafe(nil)); end

  # source://uuid//lib/uuid.rb#491
  def inspect; end

  # source://uuid//lib/uuid.rb#488
  def next_sequence; end
end

# Formats supported by the UUID generator.
#
# <tt>:default</tt>:: Produces 36 characters, including hyphens separating
#                     the UUID value parts
# <tt>:compact</tt>:: Produces a 32 digits (hexadecimal) value with no
#                     hyphens
# <tt>:urn</tt>:: Adds the prefix <tt>urn:uuid:</tt> to the default format
#
# source://uuid//lib/uuid.rb#97
UUID::FORMATS = T.let(T.unsafe(nil), Hash)

# You don't have to use this, it's just a good default.
#
# source://uuid//lib/uuid.rb#395
UUID::SOCKET_NAME = T.let(T.unsafe(nil), String)

# MAC address (48 bits), sequence number and last clock
#
# source://uuid//lib/uuid.rb#105
UUID::STATE_FILE_FORMAT = T.let(T.unsafe(nil), String)

# With UUID server you don't have to worry about multiple processes
# synchronizing over the state file, calling next_sequence when forking a
# process and other things you're probably not worried about (because
# statistically they're very unlikely to break your code).
#
# But if you are worried about and thought to yourself, "what would a simple
# UUID server look like?", here's the answer.  The protocol is dead simple:
# client sends a byte, server responds with a UUID.  Can use TCP or domain
# sockets.
#
# source://uuid//lib/uuid.rb#406
class UUID::Server
  # Create new server.  Nothing interesting happens until you call listen.
  #
  # @return [Server] a new instance of Server
  #
  # source://uuid//lib/uuid.rb#409
  def initialize; end

  # Returns UNIXServer or TCPServer from address.  Returns argument if not a
  # string, so can pass through (see #listen).
  #
  # source://uuid//lib/uuid.rb#431
  def bind(address); end

  # Start the server listening on the specific address.  Blocks and never
  # returns.  Address can be:
  # - A Socket object
  # - UNIX domain socket name (e.g. /var/run/uuid.sock, must start with /)
  # - IP address, colon, port (e.g. localhost:1337)
  #
  # source://uuid//lib/uuid.rb#418
  def listen(address); end
end

# source://uuid//lib/uuid.rb#73
UUID::VERSION = T.let(T.unsafe(nil), String)

# Version number stamped into the UUID to identify it as time-based.
#
# source://uuid//lib/uuid.rb#87
UUID::VERSION_CLOCK = T.let(T.unsafe(nil), Integer)

# Version number.
#
# source://uuid//lib/uuid.rb#65
module UUID::Version; end

# source://uuid//lib/uuid.rb#67
UUID::Version::MAJOR = T.let(T.unsafe(nil), Integer)

# source://uuid//lib/uuid.rb#68
UUID::Version::MINOR = T.let(T.unsafe(nil), Integer)

# source://uuid//lib/uuid.rb#69
UUID::Version::PATCH = T.let(T.unsafe(nil), Integer)

# source://uuid//lib/uuid.rb#70
UUID::Version::STRING = T.let(T.unsafe(nil), String)