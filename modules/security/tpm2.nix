{ pkgs, ... }:


{    
    # Trusted Platform Module support for hardware-based security feature and cryptographic operations.
    security.tpm2 = {
        enable = true;
        pkcs11.enable = true;
        tctiEnvironment.enable = true;
    };
}
