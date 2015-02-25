package ONVIF::Device::Types::Dot11Configuration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SSID_of :ATTR(:get<SSID>);
my %Mode_of :ATTR(:get<Mode>);
my %Alias_of :ATTR(:get<Alias>);
my %Priority_of :ATTR(:get<Priority>);
my %Security_of :ATTR(:get<Security>);

__PACKAGE__->_factory(
    [ qw(        SSID
        Mode
        Alias
        Priority
        Security

    ) ],
    {
        'SSID' => \%SSID_of,
        'Mode' => \%Mode_of,
        'Alias' => \%Alias_of,
        'Priority' => \%Priority_of,
        'Security' => \%Security_of,
    },
    {
        'SSID' => 'ONVIF::Device::Types::Dot11SSIDType',
        'Mode' => 'ONVIF::Device::Types::Dot11StationMode',
        'Alias' => 'ONVIF::Device::Types::Name',
        'Priority' => 'ONVIF::Device::Types::NetworkInterfaceConfigPriority',
        'Security' => 'ONVIF::Device::Types::Dot11SecurityConfiguration',
    },
    {

        'SSID' => 'SSID',
        'Mode' => 'Mode',
        'Alias' => 'Alias',
        'Priority' => 'Priority',
        'Security' => 'Security',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::Dot11Configuration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Dot11Configuration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SSID


=item * Mode


=item * Alias


=item * Priority


=item * Security




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::Dot11Configuration
   SSID => $some_value, # Dot11SSIDType
   Mode => $some_value, # Dot11StationMode
   Alias => $some_value, # Name
   Priority => $some_value, # NetworkInterfaceConfigPriority
   Security =>  { # ONVIF::Device::Types::Dot11SecurityConfiguration
     Mode => $some_value, # Dot11SecurityMode
     Algorithm => $some_value, # Dot11Cipher
     PSK =>  { # ONVIF::Device::Types::Dot11PSKSet
       Key => $some_value, # Dot11PSK
       Passphrase => $some_value, # Dot11PSKPassphrase
       Extension =>  { # ONVIF::Device::Types::Dot11PSKSetExtension
       },
     },
     Dot1X => $some_value, # ReferenceToken
     Extension =>  { # ONVIF::Device::Types::Dot11SecurityConfigurationExtension
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

