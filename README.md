snappy-dnsmasq
==============

This package provides a Snappy framework for dnsmasq, which is a highly
configurable DHCP/DNS server.

Building
========

Install snappy-tools if you have not done so already:
    sudo add-apt-repository ppa:snappy-dev/tools
    sudo apt-get update
    sudo apt-get install snappy-tools

Then run the build script:
    ./build.sh

This should produce a snap file (dnsmasq_2.74_all.snap), which can be installed
on Ubuntu Snappy.

Sources
=======

[dnsmasq](http://www.thekelleys.org.uk/dnsmasq/doc.html)

