Long: pinnedpubkey
Arg: <hashes>
Help: FILE/HASHES Public key to verify peer against
Protocols: TLS
Category: tls
Example: --pinnedpubkey keyfile $URL
Example: --pinnedpubkey 'sha256//ce118b51897f4452dc' $URL
Added: 7.39.0
---
Tells curl to use the specified public key file (or hashes) to verify the
peer. This can be a path to a file which contains a single public key in PEM
or DER format, or any number of base64 encoded sha256 hashes preceded by
\(aqsha256//\(aq and separated by \(aq;\(aq

When negotiating a TLS or SSL connection, the server sends a certificate
indicating its identity. A public key is extracted from this certificate and
if it does not exactly match the public key provided to this option, curl will
abort the connection before sending or receiving any data.

PEM/DER support:

7.39.0: OpenSSL, GnuTLS and GSKit

7.43.0: NSS and wolfSSL

7.47.0: mbedtls

sha256 support:

7.44.0: OpenSSL, GnuTLS, NSS and wolfSSL

7.47.0: mbedtls

Other SSL backends not supported.

If this option is used several times, the last one will be used.
