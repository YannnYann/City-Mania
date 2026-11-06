###### Class org.chromium.net.telemetry.ExperimentalOptions (org.chromium.net.telemetry.ExperimentalOptions)
.class public final Lorg/chromium/net/telemetry/ExperimentalOptions;
.super Ljava/lang/Object;
.source "ExperimentalOptions.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExperimentalOptions"

.field public static final VALID_CONNECTION_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe4

    .line 270
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CHLO"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SHLO"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SCFG"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "REJ"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CETV"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "PRST"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "SCUP"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ALPN"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "P256"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "C255"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "AESG"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "CC20"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "QBIC"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "AFCW"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "IFW5"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "IFW6"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "IFW7"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "IFW8"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "IFW9"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "IFWA"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "TBBR"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "1RTT"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "2RTT"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "LRTT"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "BBS1"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "BBS2"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "BBS3"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "BBS4"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "BBS5"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "BBRR"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "BBR1"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "BBR2"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "BBR3"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "BBR4"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "BBR5"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "BBR9"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "BBRA"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "BBRB"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "BBRS"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "BBQ1"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "BBQ2"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "BBQ3"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "BBQ5"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "BBQ6"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "BBQ7"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "BBQ8"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "BBQ9"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "BBQ0"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "RENO"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "TPCC"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "BYTE"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "IW03"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "IW10"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "IW20"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "IW50"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "B2ON"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "B2NA"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "B2NE"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "B2RP"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "B2LO"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "B2HR"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "B2SL"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "B2H2"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "B2RC"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "BSAO"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "B2DL"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "B201"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "B202"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "B203"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "B204"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "B205"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "B206"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "B207"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "NTLP"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "1TLP"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "1RTO"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "NRTO"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "TIME"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "ATIM"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "MIN1"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "MIN4"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "MAD0"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "MAD2"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "MAD3"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "1ACK"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "AKD3"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "AKDU"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "AFFE"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "AFF1"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "AFF2"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "SSLR"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "NPRR"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "2RTO"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "3RTO"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "4RTO"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "5RTO"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "6RTO"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "CBHD"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "NBHD"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "CONH"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "LFAK"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "STMP"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "EACK"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "ILD0"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "ILD1"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "ILD2"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "ILD3"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "ILD4"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "RUNT"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "NSTP"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "NRTT"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "1PTO"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "2PTO"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "6PTO"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "7PTO"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "8PTO"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "PTOS"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "PTOA"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "PEB1"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "PEB2"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "PVS1"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "PAG1"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "PAG2"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "PSDA"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "PLE1"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "PLE2"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "APTO"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "ELDT"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "RVCM"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "TCID"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "MPTH"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "NCMR"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "DFER"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "NPCO"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "BWRE"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "BWMX"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "BWID"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "BWI1"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "BWRS"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "BWS2"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "BWS3"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "BWS4"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "BWS5"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "BWS6"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "BWP0"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "BWP1"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "BWP2"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "BWP3"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "BWP4"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "BWG4"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "BWG7"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "BWG8"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "BWS7"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "BWM3"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "BWM4"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "ICW1"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "DTOS"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "FIDT"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "3AFF"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "10AF"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "MTUH"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "MTUL"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "NSLC"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "NCHP"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "NBPE"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "X509"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "X59R"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "CHID"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "VER "

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "NONC"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "NONP"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "KEXS"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "AEAD"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "COPT"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "CLOP"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "ICSL"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "MIBS"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "MIUS"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "ADE "

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "IRTT"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "TRTT"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "SNI "

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "PUBS"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "SCID"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "ORBT"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "PDMD"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "PROF"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "CCRT"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "EXPY"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "STTL"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "SFCW"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "CFCW"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "UAID"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "XLCT"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "QLVE"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "PDP1"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "PDP2"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "PDP3"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "PDP5"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "QNZ2"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "MAD"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "IGNP"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "SRWP"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "ROWF"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "ROWR"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "GSR0"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "GSR1"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "GSR2"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "GSR3"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "NRES"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "INVC"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "GWCH"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "YTCH"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "ACH0"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "RREJ"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "CADR"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "ASAD"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "SRST"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "CIDK"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "CIDS"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "RNON"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "RSEQ"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "PAD "

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "EPID"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "SNO0"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "STK0"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "CRT255"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "CSCT"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    .line 271
    invoke-static {v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experimentalOptions"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 34
    :try_start_10
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1d} :catch_20
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    goto :goto_21

    :catch_20
    move-exception p1

    .line 36
    :goto_21
    sget-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 39
    const-string v1, "Experimental options could not be parsed, using default values. Error: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method


# virtual methods
.method public getAllowPortMigration()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 115
    const-class v1, Ljava/lang/Boolean;

    .line 116
    const-string v2, "QUIC"

    const-string v3, "allow_port_migration"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getAsyncDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 133
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "AsyncDNS"

    const-string v3, "enable"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getCloseSessionsOnIpChangeOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 75
    const-class v1, Ljava/lang/Boolean;

    .line 76
    const-string v2, "QUIC"

    const-string v3, "close_sessions_on_ip_change"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionOptionsOption()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 49
    const-class v1, Ljava/lang/String;

    .line 50
    const-string v2, "QUIC"

    const-string v3, "connection_options"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisableBidirectionalStreamsOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 90
    const-class v1, Ljava/lang/Boolean;

    .line 91
    const-string v2, "QUIC"

    const-string v3, "disable_bidirectional_streams"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 90
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisableIpv6OnWifiOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 4

    const/4 v0, 0x0

    .line 175
    const-class v1, Ljava/lang/Boolean;

    .line 176
    const-string v2, "disable_ipv6_on_wifi"

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 175
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSocketRecvOptimizationOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 110
    const-class v1, Ljava/lang/Boolean;

    .line 111
    const-string v2, "QUIC"

    const-string v3, "enable_socket_recv_optimization"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getGoawaySessionsOnIpChangeOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/lang/Boolean;

    .line 71
    const-string v2, "QUIC"

    const-string v3, "goaway_sessions_on_ip_change"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getHostWhitelist()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 125
    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "host_whitelist"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdleConnectionTimeoutSecondsOption()I
    .registers 5

    const/4 v0, -0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 65
    const-string v2, "QUIC"

    const-string v3, "idle_connection_timeout_seconds"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTimeBeforeCryptoHandshakeSecondsOption()I
    .registers 5

    const/4 v0, -0x1

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 102
    const-string v2, "QUIC"

    const-string v3, "max_idle_time_before_crypto_handshake_seconds"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxServerConfigsStoredInPropertiesOption()I
    .registers 5

    const/4 v0, -0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 59
    const-string v2, "QUIC"

    const-string v3, "max_server_configs_stored_in_properties"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxTimeBeforeCryptoHandshakeSecondsOption()I
    .registers 5

    const/4 v0, -0x1

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 96
    const-string v2, "QUIC"

    const-string v3, "max_time_before_crypto_handshake_seconds"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMigrateSessionsEarlyV2()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 85
    const-class v1, Ljava/lang/Boolean;

    .line 86
    const-string v2, "QUIC"

    const-string v3, "migrate_sessions_early_v2"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 85
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getMigrateSessionsOnNetworkChangeV2Option()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 80
    const-class v1, Ljava/lang/Boolean;

    .line 81
    const-string v2, "QUIC"

    const-string v3, "migrate_sessions_on_network_change_v2"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 80
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public final getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "option",
            "defaultValue",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_31

    .line 236
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_13} :catch_16
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p3

    goto :goto_17

    :catch_16
    move-exception p3

    .line 238
    :goto_17
    sget-object v0, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 239
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Failed to get %s options: %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-object p2
.end method

.method public final getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "experimentalOptionFieldTrialName",
            "option",
            "defaultValue",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 196
    const-string v0, "Failed to get %s options: %s"

    iget-object v1, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_58

    :cond_b
    const/4 v1, 0x2

    .line 203
    :try_start_c
    iget-object v2, p0, Lorg/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception v2

    .line 205
    sget-object v3, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 210
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    if-eqz p1, :cond_58

    .line 214
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_35

    goto :goto_58

    .line 220
    :cond_35
    :try_start_35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3d} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_58

    :catch_3e
    move-exception p1

    goto :goto_41

    :catch_40
    move-exception p1

    .line 222
    :goto_41
    sget-object p4, Lorg/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {p4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-object p3
.end method

.method public getRaceStaleDnsOnConnection()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 120
    const-class v1, Ljava/lang/Boolean;

    .line 121
    const-string v2, "QUIC"

    const-string v3, "race_stale_dns_on_connection"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 120
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsAllowOtherNetworkOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 155
    const-class v1, Ljava/lang/Boolean;

    .line 156
    const-string v2, "StaleDNS"

    const-string v3, "allow_other_network"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 155
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsDelayMillisOption()I
    .registers 5

    const/4 v0, -0x1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "delay_ms"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 137
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "StaleDNS"

    const-string v3, "enable"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsMaxExpiredTimeMillisOption()I
    .registers 5

    const/4 v0, -0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_expired_time_ms"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsMaxStaleUsesOption()I
    .registers 5

    const/4 v0, -0x1

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_stale_uses"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsPersistDelayMillisOption()I
    .registers 5

    const/4 v0, -0x1

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "persist_delay_ms"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStaleDnsPersistToDiskOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 160
    const-class v1, Ljava/lang/Boolean;

    .line 161
    const-string v2, "StaleDNS"

    const-string v3, "persist_to_disk"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 160
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStaleDnsUseStaleOnNameNotResolvedOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 170
    const-class v1, Ljava/lang/Boolean;

    .line 171
    const-string v2, "StaleDNS"

    const-string v3, "use_stale_on_name_not_resolved"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 170
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getStoreServerConfigsInPropertiesOption()Lorg/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    const/4 v0, 0x0

    .line 54
    const-class v1, Ljava/lang/Boolean;

    .line 55
    const-string v2, "QUIC"

    const-string v3, "store_server_configs_in_properties"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 54
    invoke-static {v0}, Lorg/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentId()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 129
    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "user_agent_id"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 254
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 255
    const-string v2, ","

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_31

    aget-object v4, p1, v3

    .line 256
    sget-object v5, Lorg/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 261
    :cond_31
    invoke-static {v2, v0}, Lads_mobile_sdk/in2$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
