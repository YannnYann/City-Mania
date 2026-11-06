###### Class com.facebook.ads.redexgen.X.C3X (com.facebook.ads.redexgen.X.3X)
.class public final Lcom/facebook/ads/redexgen/X/3X;
.super Lcom/facebook/ads/redexgen/X/4H;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xa;,
        Lcom/facebook/ads/redexgen/X/Qf;,
        Lcom/facebook/ads/redexgen/X/XY;
    }
.end annotation


# static fields
.field public static A0y:Z

.field public static A0z:Z

.field public static A10:[B

.field public static A11:[Ljava/lang/String;

.field public static final A12:[I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Qf;

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:J

.field public A0O:J

.field public A0P:J

.field public A0Q:J

.field public A0R:J

.field public A0S:Landroid/media/MediaFormat;

.field public A0T:Landroid/view/Surface;

.field public A0U:Landroid/view/Surface;

.field public A0V:Lcom/facebook/ads/redexgen/X/Tp;

.field public A0W:Lcom/facebook/ads/redexgen/X/XY;

.field public A0X:Lcom/facebook/ads/redexgen/X/Xo;

.field public A0Y:Ljava/lang/Object;

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z

.field public A0e:Z

.field public A0f:Z

.field public A0g:Z

.field public A0h:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public A0i:Z

.field public A0j:Z

.field public A0k:Z

.field public final A0l:I

.field public final A0m:I

.field public final A0n:I

.field public final A0o:J

.field public final A0p:Landroid/content/Context;

.field public final A0q:Lcom/facebook/ads/redexgen/X/Xa;

.field public final A0r:Lcom/facebook/ads/redexgen/X/Xt;

.field public final A0s:Lcom/facebook/ads/redexgen/X/Xw;

.field public final A0t:Lcom/facebook/ads/redexgen/X/YB;

.field public final A0u:Z

.field public final A0v:Z

.field public final A0w:[J

.field public final A0x:[J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 116
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RYIMeRWQ62G39l2OVauIZdmncmqxQuSx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bDEe1VxjMLIaeYGjemsZIiA5L2aoyT0v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F7IinEiVJZurDSY1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qTkMRglA5JedC5ti1cNf8dUydPKqW6Sn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zPq5xDhZFx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aMb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iHy682td1SJKWmhJCWg02OfRO3R0e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3X;->A0P()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/facebook/ads/redexgen/X/3X;->A12:[I

    return-void

    nop

    :array_3c
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Xf;Lcom/facebook/ads/redexgen/X/TG;JLcom/facebook/ads/redexgen/X/Ru;ZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/YC;IIIII)V
    .registers 34
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 5983
    move-object/from16 v6, p0

    const/4 v8, 0x2

    move-object/from16 v7, p0

    move-object/from16 v10, p3

    move/from16 v16, p15

    move-object/from16 v9, p2

    move/from16 v15, p14

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v7 .. v16}, Lcom/facebook/ads/redexgen/X/4H;-><init>(ILcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Xf;Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/Ru;ZZII)V

    .line 5984
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/3X;->A0e:Z

    .line 5985
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/3X;->A0Z:Z

    .line 5986
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/3X;->A0f:Z

    .line 5987
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 5988
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/3X;->A0c:Z

    .line 5989
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/3X;->A0h:Z

    .line 5990
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A2Z:Lcom/facebook/ads/redexgen/X/XQ;

    .line 5991
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    .line 5992
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A1O:Lcom/facebook/ads/redexgen/X/XQ;

    .line 5993
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0h:Z

    .line 5994
    move-wide/from16 v0, p5

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0o:J

    .line 5995
    move/from16 v0, p12

    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0l:I

    .line 5996
    move/from16 v0, p13

    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0m:I

    .line 5997
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    .line 5998
    move/from16 v0, p16

    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0n:I

    .line 5999
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Xw;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0s:Lcom/facebook/ads/redexgen/X/Xw;

    .line 6000
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Xt;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    .line 6001
    new-instance v0, Lcom/facebook/ads/redexgen/X/YB;

    move-object/from16 v4, p10

    move-object/from16 v1, p11

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/YB;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/YC;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    .line 6002
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    iget-boolean v1, v6, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xa;

    invoke-direct {v0, v4, v6, v1}, Lcom/facebook/ads/redexgen/X/Xa;-><init>(Lcom/facebook/ads/redexgen/X/Xt;Lcom/facebook/ads/redexgen/X/3X;Z)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    .line 6003
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3X;->A0i()Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0u:Z

    .line 6004
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x1d

    if-ne v1, v0, :cond_97

    sget-object v5, Lcom/facebook/ads/redexgen/X/N1;->A06:Ljava/lang/String;

    const/16 v4, 0x32b

    const/4 v1, 0x6

    const/16 v0, 0x16

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v8, 0x1

    :cond_97
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/3X;->A0a:Z

    .line 6005
    const/16 v1, 0xa

    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    .line 6006
    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0x:[J

    .line 6007
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    .line 6008
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    .line 6009
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    .line 6010
    const/4 v0, -0x1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6011
    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    .line 6012
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    .line 6013
    iput v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A02:F

    .line 6014
    iput v7, v6, Lcom/facebook/ads/redexgen/X/3X;->A0H:I

    .line 6015
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0F()V

    .line 6016
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/VC;)I
    .registers 6

    .line 6017
    iget v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0B:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_20

    .line 6018
    const/4 v3, 0x0

    .line 6019
    .local v0, "totalInitializationDataSize":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 6020
    .local v1, "initializationDataCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v1, v2, :cond_1c

    .line 6021
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    .line 6022
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 6023
    .end local v2    # "i":I
    :cond_1c
    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0B:I

    add-int/2addr v0, v3

    return v0

    .line 6024
    .end local v0    # "totalInitializationDataSize":I
    .end local v1    # "initializationDataCount":I
    :cond_20
    iget v2, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    .line 6025
    .local v0, "width":I
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A02(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6026
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6027
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A0F(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_a

    .line 6028
    return v3

    .line 6029
    :cond_a
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/VC;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1f

    :goto_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6030
    .local v1, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "4WIAzxPkmNZM0HnozVlLcAJi4lpLtrSX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ImPv9HbUlRYmwalfuxil6RF5xU51dGSr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v7, 0x1

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    .line 6031
    .local v4, "requiresSecureDecryption":Z
    :goto_2f
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_40

    goto :goto_19

    .line 6032
    :cond_3e
    const/4 v4, 0x0

    goto :goto_2f

    .line 6033
    :cond_40
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "2SfVYWqWVbqmIvTDx9Sy4z7vpVFv9Xu6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {p0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/TG;->A8P(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 6034
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p2, :cond_57

    .line 6035
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A0C(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;)Ljava/util/List;

    move-result-object v2

    .line 6036
    :cond_57
    const/4 v1, 0x2

    if-eqz v4, :cond_70

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6037
    if-eqz v4, :cond_6f

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6038
    invoke-interface {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/TG;->A8P(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 6039
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 6040
    const/4 v7, 0x2

    .line 6041
    :cond_6f
    return v7

    .line 6042
    :cond_70
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 6043
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/PX;->A00(I)I

    move-result v0

    return v0

    .line 6044
    :cond_7b
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4H;->A1G(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 6045
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/PX;->A00(I)I

    move-result v0

    return v0

    .line 6046
    :cond_86
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Sq;

    .line 6047
    .local v6, "decoderInfo":Lcom/facebook/ads/redexgen/X/Sq;
    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/Sq;->A0S(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v6

    .line 6048
    .local v7, "decoderCapable":Z
    if-eqz v6, :cond_c1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    if-lez v0, :cond_c1

    iget v4, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_146

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "oaL22TZcJwPgWtKUDlbRaj7B2UzHz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v4, :cond_c1

    .line 6049
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_d8

    .line 6050
    iget v4, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    float-to-double v0, v0

    .line 6051
    invoke-virtual {v5, v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Sq;->A0R(IID)Z

    move-result v6

    .line 6052
    :cond_c1
    :goto_c1
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Sq;->A04:Z

    if-eqz v0, :cond_d5

    const/16 v1, 0x10

    .line 6053
    .local v3, "adaptiveSupport":I
    :goto_c7
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Sq;->A08:Z

    if-eqz v0, :cond_cd

    const/16 v3, 0x20

    .line 6054
    .local v2, "tunnelingSupport":I
    :cond_cd
    if-eqz v6, :cond_d3

    const/4 v0, 0x4

    .line 6055
    .local p0, "formatSupport":I
    :goto_d0
    or-int/2addr v1, v3

    or-int/2addr v1, v0

    return v1

    .line 6056
    :cond_d3
    const/4 v0, 0x3

    goto :goto_d0

    .line 6057
    :cond_d5
    const/16 v1, 0x8

    goto :goto_c7

    .line 6058
    :cond_d8
    iget v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    mul-int/2addr v1, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TN;->A00()I

    move-result v0

    if-gt v1, v0, :cond_144

    :goto_e3
    move v6, v7

    .line 6059
    if-nez v6, :cond_c1

    .line 6060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1d

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0x482

    const/4 v1, 0x3

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/N1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0x481

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A04(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c1

    .line 6061
    :cond_144
    const/4 v7, 0x0

    goto :goto_e3

    :cond_146
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;II)I
    .registers 10

    .line 6062
    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    if-ne p2, v3, :cond_6

    .line 6063
    .end local v0
    .end local v1
    :cond_5
    return v3

    .line 6064
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ec

    :cond_d
    const/4 v0, -0x1

    :goto_e
    packed-switch v0, :pswitch_data_106

    .line 6065
    return v3

    .line 6066
    :sswitch_12
    const/16 v2, 0x6bc

    const/16 v1, 0x13

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :sswitch_24
    const/16 v2, 0x6a9

    const/16 v1, 0x13

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :sswitch_36
    const/16 v6, 0x677

    const/16 v5, 0x9

    const/16 v4, 0x2c

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4e
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "zEgMswacNdCF1Ez2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Zow"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_e

    :sswitch_66
    const/16 v2, 0x69c

    const/16 v1, 0xd

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :sswitch_78
    const/16 v2, 0x692

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_e

    :sswitch_8a
    const/16 v2, 0x663

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_e

    .line 6067
    :pswitch_9d
    mul-int/2addr p1, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b3

    .line 6068
    .local v0, "maxPixels":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "Z"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .line 6069
    .local v1, "minCompressionRatio":I
    goto :goto_e5

    .line 6070
    .local v0, "maxPixels":I
    :cond_b3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "cmGmFF6N6i"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 6071
    .local v1, "minCompressionRatio":I
    goto :goto_e5

    .line 6072
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_bc
    mul-int/2addr p1, p2

    .line 6073
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 6074
    .restart local v1    # "minCompressionRatio":I
    goto :goto_e5

    .line 6075
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_bf
    const/16 v2, 0xb3

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/N1;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 6076
    return v3

    .line 6077
    :cond_d2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A05(II)I

    move-result v1

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/N1;->A05(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x10

    mul-int/lit8 p1, v0, 0x10

    .line 6078
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 6079
    .restart local v1    # "minCompressionRatio":I
    goto :goto_e5

    .line 6080
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_e3
    mul-int/2addr p1, p2

    .line 6081
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 6082
    .restart local v1    # "minCompressionRatio":I
    :goto_e5
    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x63306f58 -> :sswitch_8a
        -0x63185e82 -> :sswitch_78
        0x46cdc642 -> :sswitch_66
        0x4f62373a -> :sswitch_36
        0x5f50bed8 -> :sswitch_24
        0x5f50bed9 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_e3
        :pswitch_bf
        :pswitch_bc
        :pswitch_9d
        :pswitch_9d
    .end packed-switch
.end method

.method private A03(JJJJZ)J
    .registers 14

    .line 6083
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1f()F

    move-result v0

    float-to-double v0, v0

    .line 6084
    .local v0, "playbackSpeed":D
    sub-long/2addr p7, p1

    long-to-double v2, p7

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 6085
    .local v2, "earlyUs":J
    if-eqz p9, :cond_d

    .line 6086
    sub-long/2addr p5, p3

    sub-long/2addr v0, p5

    .line 6087
    :cond_d
    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/3X;)J
    .registers 2

    .line 6088
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0L:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/3X;JJJJZ)J
    .registers 10

    .line 6089
    invoke-direct/range {p0 .. p9}, Lcom/facebook/ads/redexgen/X/3X;->A03(JJJJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/3X;)Landroid/content/Context;
    .registers 1

    .line 6090
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    return-object p0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/VC;)Landroid/graphics/Point;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6091
    iget v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    const/4 v7, 0x0

    if-le v1, v0, :cond_2a

    const/4 v11, 0x1

    .line 6092
    .local v2, "isVerticalVideo":Z
    :goto_8
    if-eqz v11, :cond_27

    iget v6, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    .line 6093
    .local v3, "formatLongEdgePx":I
    :goto_c
    if-eqz v11, :cond_24

    iget v5, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    .line 6094
    .local v5, "formatShortEdgePx":I
    :goto_10
    int-to-float v4, v5

    int-to-float v3, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6095
    :cond_24
    iget v5, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    goto :goto_10

    .line 6096
    :cond_27
    iget v6, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    goto :goto_c

    .line 6097
    :cond_2a
    const/4 v11, 0x0

    goto :goto_8

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "275Rll9dAnXddPRl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wiQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    div-float/2addr v4, v3

    .line 6098
    .local v6, "aspectRatio":F
    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A12:[I

    array-length v0, v1

    :goto_3c
    const/4 v3, 0x0

    if-ge v7, v0, :cond_92

    aget v9, v1, v7

    .line 6099
    .local v10, "longEdgePx":I
    int-to-float v2, v9

    mul-float/2addr v2, v4

    float-to-int v8, v2

    .line 6100
    .local v11, "shortEdgePx":I
    if-le v9, v6, :cond_48

    if-gt v8, v5, :cond_49

    .line 6101
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_48
    return-object v3

    .line 6102
    :cond_49
    sget v3, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v2, 0x15

    if-lt v3, v2, :cond_6a

    .line 6103
    if-eqz v11, :cond_68

    move v2, v8

    .line 6104
    :goto_52
    if-eqz v11, :cond_66

    .line 6105
    :goto_54
    invoke-virtual {p0, v2, v9}, Lcom/facebook/ads/redexgen/X/Sq;->A0N(II)Landroid/graphics/Point;

    move-result-object v10

    .line 6106
    .local v9, "alignedSize":Landroid/graphics/Point;
    iget v2, p1, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    .line 6107
    .local p0, "frameRate":F
    iget v9, v10, Landroid/graphics/Point;->x:I

    iget v8, v10, Landroid/graphics/Point;->y:I

    .end local v5
    .end local v6
    .local p3, "formatShortEdgePx":I
    .local p4, "aspectRatio":F
    float-to-double v2, v2

    invoke-virtual {p0, v9, v8, v2, v3}, Lcom/facebook/ads/redexgen/X/Sq;->A0R(IID)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 6108
    return-object v10

    .line 6109
    :cond_66
    move v9, v8

    goto :goto_54

    .line 6110
    :cond_68
    move v2, v9

    goto :goto_52

    .line 6111
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "aspectRatio":F
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_6a
    const/16 v3, 0x10

    invoke-static {v9, v3}, Lcom/facebook/ads/redexgen/X/N1;->A05(II)I

    move-result v2

    mul-int/lit8 v9, v2, 0x10

    .line 6112
    .end local v10    # "longEdgePx":I
    .local v6, "longEdgePx":I
    invoke-static {v8, v3}, Lcom/facebook/ads/redexgen/X/N1;->A05(II)I

    move-result v2

    mul-int/lit8 v8, v2, 0x10

    .line 6113
    .end local v11    # "shortEdgePx":I
    .local v9, "shortEdgePx":I
    mul-int v3, v9, v8

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TN;->A00()I

    move-result v2

    if-gt v3, v2, :cond_8f

    .line 6114
    if-eqz v11, :cond_8d

    move v1, v8

    .line 6115
    :goto_83
    if-eqz v11, :cond_8b

    :goto_85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 6116
    return-object v0

    .line 6117
    :cond_8b
    move v9, v8

    goto :goto_85

    .line 6118
    :cond_8d
    move v1, v9

    goto :goto_83

    .line 6119
    .end local v6    # "longEdgePx":I
    .end local v9    # "shortEdgePx":I
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 6120
    .end local v10
    .end local v11
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "longEdgePx":I
    :cond_92
    return-object v3
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/XY;ZI)Landroid/media/MediaFormat;
    .registers 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6121
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 6122
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x5b6

    const/4 v1, 0x4

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6123
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6124
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6125
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MX;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 6126
    const/16 v2, 0x506

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 6127
    const/16 v2, 0x60c

    const/16 v1, 0x10

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 6128
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MX;->A02(Landroid/media/MediaFormat;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V

    .line 6129
    const/16 v2, 0x5a7

    const/16 v1, 0x9

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/XY;->A02:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6130
    const/16 v2, 0x58f

    const/16 v1, 0xa

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/XY;->A00:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6131
    const/16 v2, 0x599

    const/16 v1, 0xe

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/XY;->A01:I

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 6132
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    const/4 v3, 0x0

    if-lt v1, v0, :cond_98

    .line 6133
    const/16 v2, 0x5f1

    const/16 v1, 0x8

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6134
    :cond_98
    if-eqz p3, :cond_a7

    .line 6135
    const/16 v2, 0x495

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6136
    :cond_a7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0z:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Xx;->A03(Lcom/facebook/ads/redexgen/X/Xc;Landroid/media/MediaFormat;)V

    .line 6137
    if-eqz p4, :cond_b1

    .line 6138
    invoke-static {v4, p4}, Lcom/facebook/ads/redexgen/X/3X;->A0T(Landroid/media/MediaFormat;I)V

    .line 6139
    :cond_b1
    return-object v4
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/3X;Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/VC;I)Lcom/facebook/ads/redexgen/X/96;
    .registers 4

    .line 6140
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/97;->A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/VC;I)Lcom/facebook/ads/redexgen/X/96;

    move-result-object p0

    return-object p0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/VC;[Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/XY;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6141
    iget v4, p2, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    .line 6142
    .local v0, "maxWidth":I
    iget v3, p2, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    .line 6143
    .local v1, "maxHeight":I
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3X;->A00(Lcom/facebook/ads/redexgen/X/VC;)I

    move-result v2

    .line 6144
    .local v2, "maxInputSize":I
    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_12

    .line 6145
    new-instance v0, Lcom/facebook/ads/redexgen/X/XY;

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/XY;-><init>(III)V

    return-object v0

    .line 6146
    :cond_12
    const/4 v8, 0x0

    .line 6147
    .local v3, "haveUnknownDimensions":Z
    array-length v6, p3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_45

    aget-object v7, p3, v5

    .line 6148
    .local v8, "streamFormat":Lcom/facebook/ads/redexgen/X/VC;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A04:Z

    invoke-static {v0, p2, v7}, Lcom/facebook/ads/redexgen/X/3X;->A0v(ZLcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 6149
    iget v0, v7, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget v0, v7, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    if-ne v0, v1, :cond_43

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    or-int/2addr v8, v0

    .line 6150
    iget v0, v7, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6151
    iget v0, v7, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6152
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/3X;->A00(Lcom/facebook/ads/redexgen/X/VC;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6153
    .end local v8    # "streamFormat":Lcom/facebook/ads/redexgen/X/VC;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 6154
    :cond_43
    const/4 v0, 0x0

    goto :goto_2b

    .line 6155
    :cond_45
    if-eqz v8, :cond_c1

    .line 6156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x399

    const/16 v1, 0x2b

    const/16 v0, 0x52

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v5, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6157
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A07(Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/VC;)Landroid/graphics/Point;

    move-result-object v1

    .line 6158
    .local v4, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v1, :cond_c1

    .line 6159
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6160
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6161
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6162
    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/3X;->A02(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xf6

    const/16 v1, 0x22

    const/16 v0, 0x1b

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6164
    .end local v4    # "codecMaxSize":Landroid/graphics/Point;
    :cond_c1
    new-instance v0, Lcom/facebook/ads/redexgen/X/XY;

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/XY;-><init>(III)V

    return-object v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A10:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/TG;",
            "Lcom/facebook/ads/redexgen/X/VC;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Sq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6166
    .local v0, "alternativeMediaCodecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/TN;->A0P(Lcom/facebook/ads/redexgen/X/VC;)Ljava/lang/String;

    move-result-object v1

    .line 6167
    .local v1, "alternativeMimeType":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 6168
    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/TG;->A8P(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 6169
    .local v2, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_2e

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6170
    const/16 v2, 0x680

    const/16 v1, 0x12

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6171
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 6172
    move-object v5, v4

    .line 6173
    .end local v2    # "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    :cond_2e
    return-object v5
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/TG;",
            "Lcom/facebook/ads/redexgen/X/VC;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Sq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6174
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6175
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 6176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6177
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/TG;->A8P(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 6178
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A0E()V
    .registers 3

    .line 6179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    .line 6180
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    if-eqz v0, :cond_1a

    .line 6181
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v1

    .line 6182
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    if-eqz v1, :cond_1a

    .line 6183
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Qf;-><init>(Lcom/facebook/ads/redexgen/X/3X;Lcom/facebook/ads/redexgen/X/Sn;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/Qf;

    .line 6184
    .end local v0    # "codec":Lcom/facebook/ads/redexgen/X/Sn;
    :cond_1a
    return-void
.end method

.method private A0F()V
    .registers 3

    .line 6185
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0G:I

    .line 6186
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0E:I

    .line 6187
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:F

    .line 6188
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0F:I

    .line 6189
    return-void
.end method

.method private A0G()V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A2X:Lcom/facebook/ads/redexgen/X/XQ;

    .line 6191
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 6193
    :cond_17
    return-void
.end method

.method private A0H()V
    .registers 5

    .line 6194
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0m:I

    if-lez v0, :cond_3d

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "uBoqitpfydoOhLSRZySYXOWxOvzyx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v3, :cond_3d

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0m:I

    if-lt v1, v0, :cond_3d

    .line 6195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0I:J

    sub-long/2addr v2, v0

    .line 6196
    .local v0, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/YB;->A00(IJ)V

    .line 6197
    .end local v0    # "elapsedMs":J
    :cond_3d
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    .line 6198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0I:J

    .line 6199
    return-void
.end method

.method private A0I()V
    .registers 6

    .line 6200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v4

    .line 6201
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    if-nez v4, :cond_7

    .line 6202
    return-void

    .line 6203
    :cond_7
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0c:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3a

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "qgvmWAjeo4QKnBkBe41vOj4ta3jaB5SF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "pKUJPsH6HibKXRAAirXH3EqC5s6YUiSU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_39

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Sn;->A9x()I

    move-result v1

    const/16 v0, 0x1e

    if-le v1, v0, :cond_39

    .line 6204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0V(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 6205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0c:Z

    .line 6206
    :cond_39
    return-void

    :cond_3a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0J()V
    .registers 7

    .line 6207
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    if-lez v0, :cond_18

    .line 6208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6209
    .local v0, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0J:J

    sub-long v2, v4, v0

    .line 6210
    .local v2, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/YB;->A01(IJ)V

    .line 6211
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    .line 6212
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0J:J

    .line 6213
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_18
    return-void
.end method

.method private A0K()V
    .registers 7

    .line 6214
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    if-eq v0, v1, :cond_45

    :cond_9
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0G:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    if-ne v1, v0, :cond_23

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0E:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    if-ne v1, v0, :cond_23

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0F:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    if-ne v1, v0, :cond_23

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_45

    .line 6215
    :cond_23
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A07(Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 6216
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0G:I

    .line 6217
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0E:I

    .line 6218
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0F:I

    .line 6219
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:F

    .line 6220
    :cond_45
    return-void
.end method

.method private A0L()V
    .registers 3

    .line 6221
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    if-eqz v0, :cond_b

    .line 6222
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0D(Ljava/lang/Object;)V

    .line 6223
    :cond_b
    return-void
.end method

.method private A0M()V
    .registers 7

    .line 6224
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0E:I

    if-eq v0, v1, :cond_1b

    .line 6225
    :cond_9
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0G:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0E:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0F:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A07(Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 6226
    :cond_1b
    return-void
.end method

.method private A0N()V
    .registers 6

    .line 6227
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0o:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_12

    .line 6228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0o:J

    add-long/2addr v2, v0

    .line 6229
    :goto_f
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    .line 6230
    return-void

    .line 6231
    :cond_12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_f
.end method

.method private A0O()V
    .registers 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6232
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O7;->A03(J)V

    .line 6233
    return-void
.end method

.method public static A0P()V
    .registers 1

    const/16 v0, 0x6f0

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3X;->A10:[B

    return-void

    :array_a
    .array-data 1
        -0x3et
        -0x39t
        -0x3ft
        -0x3et
        -0x38t
        -0x32t
        -0x38t
        -0x36t
        -0x4bt
        -0x45t
        -0x4bt
        -0x48t
        0x6ft
        0x5ft
        0x5et
        0x5bt
        0x65t
        0x5et
        0x74t
        0x6et
        0x5et
        0x5dt
        0x5at
        0x64t
        0x5dt
        0x79t
        -0x76t
        0x7at
        0x7ft
        0x79t
        0x7at
        -0x46t
        -0x55t
        -0x57t
        -0x56t
        -0x51t
        -0x26t
        -0x53t
        -0x57t
        -0x6bt
        -0x75t
        -0x7ct
        -0x7ct
        -0x7ct
        -0x7ft
        -0x4bt
        -0x5ft
        -0x69t
        -0x70t
        -0x70t
        -0x70t
        -0x30t
        -0x34t
        -0x2bt
        -0x2dt
        0x6ft
        0x65t
        0x5et
        0x5ft
        0x5et
        -0x71t
        0x62t
        0x66t
        0x63t
        0x59t
        0x52t
        0x54t
        0x52t
        -0x7dt
        0x56t
        0x5at
        0x6ft
        0x74t
        -0x7et
        0x6ft
        0x66t
        0x6bt
        0x79t
        0x73t
        -0x63t
        -0x51t
        -0x4ft
        -0x51t
        -0x45t
        -0x4ct
        -0x74t
        -0x74t
        -0x63t
        -0x60t
        0x76t
        -0x78t
        -0x76t
        -0x78t
        -0x6ct
        -0x73t
        0x65t
        0x65t
        0x76t
        0x79t
        0x76t
        -0x2dt
        -0x1bt
        -0x19t
        -0x1bt
        -0xft
        -0x16t
        -0x3et
        -0x3et
        -0x2dt
        -0x2at
        -0x2bt
        -0x3at
        -0x28t
        -0x26t
        -0x28t
        -0x1ct
        -0x23t
        -0x4bt
        -0x4bt
        -0x3at
        -0x37t
        -0x1ct
        -0x49t
        -0x4ct
        -0x1ft
        -0x29t
        -0x1bt
        -0x1et
        -0x20t
        -0x2ct
        -0x15t
        -0x6dt
        -0x4ct
        -0x5bt
        -0x57t
        -0x4at
        -0x59t
        -0x45t
        -0x26t
        0xat
        0xet
        -0x6t
        -0x17t
        0x8t
        0x10t
        -0x2t
        0xbt
        -0x1at
        -0x63t
        -0x31t
        -0x2ft
        -0x31t
        -0x45t
        -0x4at
        -0x62t
        -0x6ft
        -0x74t
        -0x74t
        -0x59t
        -0x58t
        -0x68t
        -0x34t
        -0x37t
        -0x48t
        -0x4at
        -0x5bt
        -0x3at
        -0x35t
        -0x44t
        -0x4at
        -0x77t
        -0x25t
        -0x1bt
        -0x26t
        -0x24t
        -0x1ct
        -0x3at
        -0x36t
        -0xft
        -0x77t
        -0x67t
        -0x78t
        -0x63t
        -0x70t
        -0x78t
        0x67t
        0x7bt
        -0x6et
        0x67t
        0x79t
        0x77t
        0x78t
        0x7ct
        0x6et
        0x7et
        0x6dt
        -0x7et
        0x75t
        0x6dt
        -0x75t
        0x6dt
        -0x80t
        -0x7et
        0x5et
        -0x1ft
        -0xft
        -0x20t
        -0xbt
        -0x18t
        -0x20t
        -0x2t
        -0x20t
        -0xdt
        -0xbt
        -0x2et
        -0x2t
        -0x2dt
        -0x16t
        -0x68t
        -0x7at
        -0x30t
        -0x23t
        -0x3bt
        -0x3dt
        -0x3ct
        -0x3dt
        -0x14t
        -0x2at
        -0x43t
        -0x41t
        0x6et
        0x7bt
        0x73t
        0x5ct
        0x61t
        0x5bt
        0x64t
        -0x21t
        -0x14t
        -0xbt
        -0x2ct
        -0x31t
        -0x5t
        -0x1bt
        -0x34t
        -0x34t
        0x7ft
        -0x55t
        -0x60t
        -0x5ft
        -0x61t
        0x5ct
        -0x57t
        -0x63t
        -0x4ct
        0x5ct
        -0x52t
        -0x5ft
        -0x51t
        -0x55t
        -0x58t
        -0x4ft
        -0x50t
        -0x5bt
        -0x55t
        -0x56t
        0x5ct
        -0x63t
        -0x60t
        -0x5at
        -0x4ft
        -0x51t
        -0x50t
        -0x5ft
        -0x60t
        0x5ct
        -0x50t
        -0x55t
        0x76t
        0x5ct
        -0x42t
        -0x16t
        -0x18t
        -0x1ct
        -0x16t
        -0x32t
        -0x54t
        -0x51t
        -0x61t
        -0x60t
        -0x62t
        -0x63t
        -0x7at
        -0x73t
        -0x6at
        -0x78t
        -0x7et
        -0x60t
        -0x7et
        0x74t
        -0x60t
        -0x6ft
        -0x4dt
        -0x50t
        -0x1ft
        -0x18t
        -0xft
        -0x1dt
        -0x23t
        -0x5t
        -0x16t
        0xbt
        0x10t
        0x1t
        -0x7bt
        -0x74t
        -0x6bt
        -0x79t
        -0x7ft
        -0x61t
        -0x70t
        -0x4et
        -0x57t
        -0x53t
        0x74t
        0x7bt
        -0x7ct
        0x76t
        0x70t
        -0x72t
        -0x7ft
        -0x70t
        -0x58t
        -0x72t
        -0x79t
        -0x73t
        -0x42t
        -0x53t
        -0x46t
        -0x65t
        -0x44t
        -0x57t
        -0x46t
        -0x59t
        -0x65t
        -0x3et
        -0x51t
        -0x53t
        -0x53t
        -0x53t
        -0x34t
        -0x47t
        -0x49t
        -0x49t
        -0x47t
        -0x7bt
        0x72t
        0x70t
        0x70t
        0x75t
        -0x3ft
        -0x52t
        -0x53t
        -0x54t
        -0x54t
        -0x58t
        -0x6bt
        -0x6ct
        -0x6dt
        -0x6bt
        -0x71t
        0x7ct
        0x7bt
        0x7at
        0x7et
        -0x50t
        -0x63t
        -0x63t
        -0x65t
        -0x65t
        -0x24t
        -0x9t
        0x2t
        0x9t
        -0x5t
        -0x27t
        -0x2t
        -0x5t
        -0x7t
        0x1t
        -0x4at
        -0xft
        0x2t
        -0x5t
        -0x3t
        -0x9t
        -0x7t
        0xft
        -0x24t
        0x8t
        -0x9t
        0x3t
        -0x5t
        -0x17t
        -0x1t
        0x10t
        -0x5t
        -0x3et
        -0x4at
        -0x2bt
        -0x29t
        -0x23t
        -0x24t
        -0x2dt
        -0x2dt
        -0x13t
        -0x2bt
        -0x30t
        -0x26t
        -0x3bt
        -0x3ft
        -0x3ct
        -0x42t
        -0x7dt
        -0x7bt
        -0x75t
        -0x76t
        -0x7ft
        -0x7ft
        -0x65t
        -0x71t
        -0x6dt
        -0x6dt
        0x6dt
        0x72t
        0x6ct
        0x75t
        -0x5et
        -0x5ct
        -0x56t
        -0x57t
        -0x60t
        -0x60t
        -0x46t
        -0x52t
        -0x4et
        -0x4et
        -0x74t
        -0x6ft
        -0x73t
        -0x6et
        -0x50t
        -0x4et
        -0x48t
        -0x49t
        -0x52t
        -0x52t
        -0x38t
        -0x44t
        -0x40t
        -0x40t
        -0x66t
        -0x61t
        -0x64t
        -0x66t
        0x6at
        0x6ct
        0x72t
        0x71t
        0x68t
        0x68t
        -0x7et
        0x7at
        0x65t
        0x6ft
        0x58t
        0x5at
        0x53t
        0x5bt
        -0x4dt
        -0x4bt
        -0x45t
        -0x46t
        -0x4ft
        -0x4ft
        -0x35t
        -0x3dt
        -0x52t
        -0x48t
        -0x5dt
        -0x61t
        -0x5et
        -0x5ft
        -0x6at
        -0x68t
        -0x62t
        -0x63t
        -0x6ct
        -0x6ct
        -0x52t
        -0x5at
        -0x6ft
        -0x65t
        -0x7at
        -0x7ct
        -0x80t
        -0x78t
        -0x4bt
        -0x29t
        -0x43t
        -0x44t
        -0x4dt
        -0x4dt
        -0x33t
        -0x4ft
        -0x50t
        -0x46t
        -0x5bt
        -0x5dt
        -0x61t
        -0x5ft
        0x73t
        -0x6bt
        0x7bt
        0x7at
        0x71t
        0x71t
        -0x75t
        0x73t
        0x6et
        0x78t
        0x63t
        0x5ft
        0x5dt
        0x65t
        -0x3dt
        -0x30t
        -0x44t
        -0x2et
        -0x40t
        -0x3ct
        -0x65t
        -0x37t
        -0x2dt
        -0x31t
        -0x58t
        -0x39t
        -0x53t
        -0x4ct
        -0x74t
        -0x65t
        -0x7at
        -0x70t
        -0x6et
        0x71t
        -0x74t
        -0x1at
        -0xbt
        -0x1ft
        -0x21t
        -0x15t
        -0x35t
        -0x1at
        0x77t
        -0x7at
        0x74t
        0x7ct
        0x7bt
        0x7bt
        -0x76t
        -0x77t
        -0x7ft
        -0x7at
        0x60t
        0x7bt
        0x6dt
        0x7ct
        0x7ct
        0x66t
        0x78t
        0x52t
        0x6dt
        -0x25t
        0x0t
        -0x8t
        -0x5t
        0x0t
        -0x5t
        0xat
        -0x41t
        -0x16t
        -0x39t
        -0x37t
        -0x3ct
        -0x45t
        -0x48t
        -0x35t
        0x6et
        0x77t
        0x72t
        0x51t
        0x70t
        0x56t
        0x55t
        -0x5at
        -0x70t
        -0x75t
        -0x44t
        -0x71t
        -0x75t
        -0x6bt
        -0x70t
        0x76t
        -0x6ct
        0x7dt
        0x7ct
        0x79t
        -0x68t
        -0x6dt
        0x79t
        -0x67t
        0x7et
        -0x7ft
        0x7ct
        -0x50t
        -0x49t
        -0x6ft
        -0x67t
        -0x6ct
        -0x6bt
        -0x65t
        -0x30t
        -0x17t
        -0xet
        -0xdt
        -0x6t
        -0xdt
        -0x5ct
        -0x3bt
        -0x4at
        -0x4ct
        -0x4bt
        -0x46t
        -0x1at
        -0x49t
        -0x4ct
        -0x3at
        -0x21t
        -0x18t
        -0x17t
        -0x10t
        -0x17t
        -0x66t
        -0x3bt
        -0x55t
        -0x56t
        -0x25t
        -0x52t
        -0x56t
        -0x6bt
        -0x52t
        -0x49t
        -0x48t
        -0x41t
        -0x48t
        0x69t
        -0x6ct
        -0x7ft
        -0x79t
        0x6ft
        -0x63t
        -0x50t
        -0x58t
        -0x54t
        -0x43t
        -0x48t
        -0x3et
        -0x50t
        -0x68t
        -0x3bt
        -0x30t
        -0x52t
        0x6et
        -0x7at
        -0x7bt
        -0x76t
        -0x7et
        0x64t
        -0x70t
        -0x7bt
        -0x7at
        -0x7ct
        0x77t
        -0x76t
        -0x7bt
        -0x7at
        -0x70t
        0x73t
        -0x7at
        -0x71t
        -0x7bt
        -0x7at
        -0x6dt
        -0x7at
        -0x6dt
        0x73t
        -0x6bt
        -0x66t
        -0x6bt
        0x6bt
        0x58t
        0x4et
        0x5at
        0x6dt
        0x53t
        0x72t
        0x7at
        0x6bt
        0x4ft
        -0x61t
        -0x3ft
        -0x3at
        -0x3ft
        -0x67t
        -0x7bt
        -0x3bt
        -0x33t
        -0x40t
        -0x45t
        -0x40t
        -0x48t
        -0x59t
        -0x4ft
        -0x72t
        -0x73t
        -0x76t
        -0x5dt
        -0x5et
        -0x54t
        -0x77t
        -0x75t
        -0x79t
        -0x62t
        0x76t
        0x74t
        0x7ft
        0x55t
        -0x72t
        -0x6at
        -0x6at
        -0x72t
        -0x6dt
        -0x74t
        -0x59t
        -0x3at
        -0x43t
        -0x58t
        -0x3ct
        -0x33t
        -0x35t
        -0x73t
        -0x54t
        0x71t
        0x57t
        0x59t
        0x52t
        -0x3bt
        -0x53t
        -0x56t
        -0x22t
        -0x30t
        -0x40t
        -0x45t
        -0x3ct
        -0x3bt
        -0x42t
        -0x25t
        -0x52t
        -0x5bt
        -0x54t
        -0x6dt
        -0x70t
        -0x6at
        -0x30t
        -0x39t
        -0x32t
        -0x4at
        -0x4ft
        -0x50t
        -0x62t
        -0x6bt
        -0x64t
        -0x7ct
        0x7ft
        0x7ft
        -0x57t
        -0x5bt
        -0x62t
        -0x37t
        -0x35t
        -0x38t
        -0x50t
        -0x34t
        -0x2ct
        -0x14t
        -0x1bt
        -0xet
        -0x8t
        -0xdt
        -0xft
        -0x46t
        -0x79t
        -0x60t
        -0x51t
        -0x64t
        -0x5dt
        0x57t
        0x7ct
        -0x6bt
        -0x5ct
        -0x6bt
        0x60t
        0x59t
        0x63t
        -0x75t
        0x5ft
        0x73t
        -0x68t
        -0x4ft
        -0x40t
        -0x4ft
        0x7dt
        0x75t
        0x79t
        0x78t
        -0x59t
        0x7ct
        -0x71t
        -0x3bt
        -0x59t
        -0x57t
        -0x5ct
        -0x3dt
        -0x5at
        -0x5ct
        -0x58t
        -0x5et
        -0x75t
        0x6et
        0x6ct
        0x71t
        0x7dt
        0x60t
        0x5ft
        0x5dt
        0x5ct
        -0x1ct
        -0x38t
        -0x32t
        -0x36t
        -0x52t
        -0x4dt
        -0x2bt
        -0x3et
        -0x24t
        -0x2et
        0x75t
        0x7ct
        0x55t
        -0x3et
        -0x2bt
        -0x2ct
        -0x23t
        -0x27t
        -0x70t
        -0x5ct
        -0x38t
        -0x5dt
        -0x4at
        -0x4bt
        -0x42t
        -0x46t
        0x71t
        -0x61t
        -0x40t
        -0x3bt
        -0x4at
        0x71t
        -0x7dt
        -0x39t
        -0x26t
        -0x27t
        -0x1et
        -0x22t
        -0x6bt
        -0x3dt
        -0x1ct
        -0x17t
        -0x26t
        -0x6bt
        -0x58t
        -0x7bt
        -0x68t
        -0x5ft
        -0x69t
        -0x68t
        -0x5bt
        0x53t
        -0x5et
        -0x58t
        -0x59t
        -0x5dt
        -0x58t
        -0x59t
        0x53t
        -0x67t
        -0x6ct
        -0x64t
        -0x61t
        -0x68t
        -0x69t
        -0x3bt
        -0x28t
        -0x1at
        -0x1et
        -0x21t
        -0x18t
        -0x19t
        -0x24t
        -0x1et
        -0x1ft
        -0x1at
        -0x6dt
        -0x18t
        -0x1ft
        -0x22t
        -0x1ft
        -0x1et
        -0x16t
        -0x1ft
        -0x5ft
        -0x6dt
        -0x4at
        -0x1et
        -0x29t
        -0x28t
        -0x2at
        -0x6dt
        -0x20t
        -0x2ct
        -0x15t
        -0x6dt
        -0x1bt
        -0x28t
        -0x1at
        -0x1et
        -0x21t
        -0x18t
        -0x19t
        -0x24t
        -0x1et
        -0x1ft
        -0x53t
        -0x6dt
        -0x4dt
        -0x53t
        -0x73t
        -0x59t
        -0x67t
        -0x6dt
        -0x6bt
        -0x70t
        -0xft
        -0x15t
        -0x35t
        -0x18t
        -0x30t
        -0x32t
        -0x32t
        -0x1bt
        -0xdt
        -0x3ct
        -0x42t
        -0x62t
        -0x45t
        -0x5dt
        -0x5ft
        -0x5ft
        -0x42t
        -0x58t
        -0x5et
        -0x7et
        -0x5dt
        -0x72t
        -0x7at
        -0x7bt
        -0x59t
        -0x77t
        -0x61t
        -0x5ft
        -0x6dt
        -0x73t
        -0x62t
        0x6ct
        -0x61t
        -0x7bt
        -0x21t
        -0x1et
        -0x24t
        -0x47t
        -0x30t
        -0x20t
        -0x1et
        -0x43t
        -0x3ft
        -0x4at
        -0x31t
        -0x3ct
        -0x29t
        -0x38t
        -0x3et
        -0x4dt
        -0x2bt
        -0x2et
        -0x7ft
        -0x63t
        -0x64t
        -0x59t
        0x4et
        -0x7et
        -0x71t
        -0x70t
        -0x66t
        -0x6dt
        -0x5et
        0x4et
        -0x7ft
        -0x65t
        -0x77t
        0x7at
        0x74t
        0x7et
        0x7at
        0x77t
        -0x73t
        -0x24t
        -0x36t
        -0x45t
        -0x4bt
        -0x41t
        -0x45t
        -0x48t
        -0x20t
        -0x52t
        -0x64t
        -0x73t
        -0x79t
        -0x6et
        -0x71t
        -0x76t
        -0x60t
        -0x45t
        -0x57t
        -0x66t
        -0x6ct
        -0x61t
        -0x64t
        -0x69t
        -0x4ct
        -0x65t
        -0x4at
        -0x4at
        0x67t
        -0x4ct
        -0x58t
        -0x4bt
        -0x40t
        0x67t
        -0x46t
        -0x45t
        -0x47t
        -0x54t
        -0x58t
        -0x4ct
        0x67t
        -0x56t
        -0x51t
        -0x58t
        -0x4bt
        -0x52t
        -0x54t
        -0x46t
        0x73t
        0x67t
        -0x46t
        -0x4at
        0x67t
        -0x55t
        -0x47t
        -0x4at
        -0x49t
        -0x49t
        -0x50t
        -0x4bt
        -0x52t
        0x67t
        -0x4at
        -0x53t
        -0x53t
        -0x46t
        -0x54t
        -0x45t
        -0x7ft
        0x67t
        -0x5bt
        -0x80t
        -0x36t
        -0x5at
        -0x59t
        -0x45t
        -0x4at
        -0x50t
        -0x71t
        -0x46t
        -0x49t
        -0x64t
        -0x64t
        -0x6ct
        -0x50t
        -0x75t
        -0x49t
        -0x60t
        -0x5dt
        -0x7bt
        0x72t
        0x5ft
        -0x7bt
        0x7dt
        0x79t
        0x56t
        0x5bt
        0x5bt
        0x58t
        -0x64t
        0x73t
        0x74t
        -0x5ft
        -0x6et
        -0x6ct
        -0x6ft
        -0x7et
        0x60t
        0x58t
        -0x6ft
        -0x21t
        -0x5et
        -0x23t
        -0x78t
        -0x64t
        -0x75t
        -0x70t
        -0x6at
        0x54t
        -0x66t
        -0x74t
        -0x66t
        -0x66t
        -0x70t
        -0x6at
        -0x6bt
        0x54t
        -0x70t
        -0x75t
        -0x4ct
        -0x38t
        -0x39t
        -0x3et
        -0x80t
        -0x47t
        -0x3bt
        -0x4at
        -0x3ct
        -0x6dt
        -0x71t
        -0x3et
        -0x31t
        -0x3bt
        -0x2dt
        -0x30t
        -0x36t
        -0x3bt
        -0x71t
        -0x3et
        -0x29t
        -0x6et
        -0x72t
        -0x3bt
        -0x3et
        -0x29t
        -0x6et
        -0x3bt
        -0x71t
        -0x3bt
        -0x3at
        -0x3ct
        -0x30t
        -0x3bt
        -0x3at
        -0x2dt
        -0x31t
        -0x22t
        -0x25t
        -0x24t
        -0x67t
        -0x32t
        -0x25t
        -0x20t
        -0x20t
        -0x25t
        -0x27t
        -0x8t
        0x7t
        0x4t
        0x5t
        -0x3et
        0x1t
        -0x6t
        -0x5t
        0x9t
        -0x57t
        -0x48t
        -0x4bt
        -0x4at
        0x73t
        -0x48t
        -0x51t
        -0x53t
        -0x52t
        -0x46t
        -0x34t
        -0x25t
        -0x28t
        -0x27t
        -0x6at
        -0x23t
        -0x28t
        -0x27t
        -0x2bt
        -0x18t
        -0x5dt
        -0x17t
        -0x4t
        -0x47t
        -0x15t
        -0x18t
        -0xbt
        -0x12t
        -0x18t
        -0xdt
        -0x2ct
        -0x2bt
        -0x2et
        -0x17t
        -0x9t
        -0xct
        -0xbt
        -0x25t
        -0x12t
        -0x17t
        -0x16t
        -0xct
        -0x39t
        -0x6t
        -0x15t
        -0x15t
        -0x16t
        -0x9t
        -0xet
        -0x8t
        -0x5t
        0x1t
        0xat
        0xet
        0xft
        0x0t
        0xdt
        -0x42t
        -0x36t
        -0x47t
        -0x3bt
        -0x43t
        -0x7bt
        -0x36t
        -0x47t
        -0x34t
        -0x43t
        -0x5t
        0xat
        -0x4t
        0xat
        0x4t
        0xft
        0x6t
        0x3t
        0x3t
        0x6t
        0xbt
        0x3t
        0x0t
        0x4t
        0x2t
        0x3t
        0xft
        -0x29t
        -0x1dt
        -0x2et
        -0x32t
        -0x2ct
        -0x5ct
        -0x5bt
        -0x24t
        -0x25t
        -0x32t
        -0x2dt
        -0x1dt
        -0x1ct
        -0x25t
        -0x5ct
        -0x4dt
        0x7dt
        -0x78t
        -0x7ft
        0x69t
        -0x7ct
        -0x58t
        0x78t
        0x6ft
        0x72t
        0x70t
        -0x24t
        -0x2bt
        -0x2ct
        -0x21t
        -0x21t
        -0x55t
        -0x56t
        -0x5at
        -0x58t
        -0x2et
        -0x54t
        -0x55t
        -0x5dt
        -0x57t
        -0x73t
        -0x6at
        -0x73t
        -0x69t
        0x5at
        0x54t
        -0x35t
        -0x2at
        -0x39t
        -0x32t
        -0x3ft
        -0x4bt
        -0x6at
        -0x6dt
        0x6t
        -0x32t
        0x14t
        0x8t
        0x10t
        0x1t
        0x5t
        0xat
        0xft
        -0x16t
        -0x20t
        -0xdt
        -0x1ct
        -0x46t
        -0x7dt
        -0x7et
        -0x7ct
        0x7et
        -0xbt
        -0x12t
        -0x18t
        0x1t
        -0x41t
        -0x4dt
        -0x4at
        -0x42t
        0x74t
        -0x4dt
        -0x58t
        -0x45t
        -0x54t
        -0x4bt
        -0x56t
        -0x40t
        -0x27t
        -0x62t
        -0x74t
        -0x26t
        -0x25t
        -0x20t
        -0x2ft
        -0x1et
        -0x2at
        -0x1dt
        -0x1dt
        -0x22t
        -0x1dt
        -0x24t
        -0x2ct
        -0x38t
        -0x27t
        -0x30t
        -0x2bt
        -0x2at
        -0x3at
        -0x33t
        -0x50t
        -0x5ct
        -0x45t
        0x70t
        -0x55t
        -0x58t
        -0x54t
        -0x56t
        -0x55t
        -0x49t
        -0x15t
        -0x21t
        -0xat
        -0x55t
        -0x19t
        -0x14t
        -0x12t
        -0xdt
        -0xet
        -0x55t
        -0xft
        -0x19t
        -0x8t
        -0x1dt
        -0x20t
        -0x2ct
        -0x15t
        -0x60t
        -0x16t
        -0x24t
        -0x29t
        -0x19t
        -0x25t
        -0xft
        -0x14t
        -0x1t
        -0x5t
        -0xat
        0x1t
        -0x29t
        -0x2dt
        -0x29t
        -0x31t
        -0x4bt
        -0x58t
        -0x4ct
        -0x58t
        -0x45t
        -0x51t
        -0x16t
        -0x1bt
        -0x21t
        -0x19t
        -0x18t
        -0x23t
        -0xft
        -0x11t
        -0x25t
        -0x1et
        -0x59t
        0x69t
        0x68t
        0x69t
        -0x65t
        -0x74t
        -0x67t
        -0x70t
        -0x69t
        -0x69t
        -0x76t
        -0x71t
        -0x43t
        -0x52t
        -0x45t
        -0x4et
        -0x47t
        -0x47t
        -0x54t
        -0x4ft
        -0x47t
        -0x6bt
        -0x7at
        -0x6dt
        -0x76t
        -0x6ft
        -0x6ft
        -0x7ct
        -0x77t
        -0x68t
        -0x24t
        -0x33t
        -0x26t
        -0x2ft
        -0x28t
        -0x28t
        -0x35t
        -0x30t
        -0x20t
        -0x6t
        -0x4t
        -0xdt
        -0x7t
        -0x4t
        -0xdt
        -0x2t
        0x3t
        0xft
        0x2t
        0x9t
        0x2t
        -0x2t
        0x10t
        0x2t
        -0x14t
        0x12t
        0x11t
        0xdt
        0x12t
        0x11t
        -0x21t
        0x12t
        0x3t
        0x3t
        0x2t
        0xft
        -0x30t
        -0x33t
        -0x2et
        -0x41t
        -0x2et
        -0x39t
        -0x33t
        -0x34t
        -0x75t
        -0x3et
        -0x3dt
        -0x3bt
        -0x30t
        -0x3dt
        -0x3dt
        -0x2ft
        -0x6bt
        0x5bt
        0x52t
        0x57t
        -0x66t
        0x52t
        0x53t
        0x5at
        0xat
        -0x8t
        0x5t
        0xbt
        0x6t
        0x5t
        0x0t
        -0x41t
        -0x49t
        -0x4bt
        -0x44t
        -0x5et
        -0x4bt
        -0x50t
        -0x4ft
        -0x45t
        -0x72t
        -0x3ft
        -0x4et
        -0x4et
        -0x4ft
        -0x42t
        -0x5dt
        -0x70t
        -0x68t
        -0x6dt
        -0x62t
        -0x72t
        -0x5ft
        -0x62t
        -0x5at
        -0x64t
        -0x75t
        -0x6ct
        -0x79t
        -0x73t
        -0x63t
        -0x3at
        -0x39t
        -0x40t
        -0x40t
        -0x49t
        -0x42t
        -0x49t
        -0x4at
        0x7ft
        -0x3et
        -0x42t
        -0x4dt
        -0x35t
        -0x4ct
        -0x4dt
        -0x4bt
        -0x43t
        -0x57t
        -0x68t
        -0x5bt
        -0x5ft
        -0x68t
        -0x68t
        -0x6et
        -0x80t
        0x68t
        -0x24t
        -0x31t
        -0x36t
        -0x35t
        -0x2bt
        -0x6bt
        -0x67t
        -0x33t
        -0x2at
        -0x2at
        0x8t
        -0x5t
        -0xat
        -0x9t
        0x1t
        -0x3ft
        -0xdt
        0x8t
        -0x3et
        -0x3dt
        -0x3dt
        -0x4at
        -0x4ft
        -0x4et
        -0x44t
        0x7ct
        -0x52t
        -0x3dt
        -0x50t
        -0x65t
        -0x72t
        -0x77t
        -0x76t
        -0x6ct
        0x54t
        -0x77t
        -0x6ct
        -0x6ft
        -0x79t
        -0x62t
        0x52t
        -0x65t
        -0x72t
        -0x68t
        -0x72t
        -0x6ct
        -0x6dt
        -0x2et
        -0x3bt
        -0x40t
        -0x3ft
        -0x35t
        -0x75t
        -0x3ct
        -0x3ft
        -0x2et
        -0x41t
        -0x27t
        -0x34t
        -0x39t
        -0x38t
        -0x2et
        -0x6et
        -0x30t
        -0x2dt
        -0x69t
        -0x27t
        -0x70t
        -0x38t
        -0x2at
        -0x39t
        -0x46t
        -0x4bt
        -0x4at
        -0x40t
        -0x80t
        -0x37t
        0x7et
        -0x39t
        -0x41t
        -0x4bt
        0x7ft
        -0x40t
        -0x41t
        -0x7dt
        0x7ft
        -0x39t
        -0x3ft
        -0x77t
        -0x5t
        -0x12t
        -0x17t
        -0x16t
        -0xct
        -0x4ct
        -0x3t
        -0x4et
        -0x5t
        -0xdt
        -0x17t
        -0x4dt
        -0xct
        -0xdt
        -0x49t
        -0x4dt
        -0x5t
        -0xbt
        -0x42t
        -0x5t
        -0x1bt
        -0x8t
        -0x9t
        -0xdt
        -0xet
        -0x7t
        -0x16t
        -0x5t
        -0xct
        -0x19t
        -0x1at
        -0x9t
        -0x17t
        -0x1ct
        -0xct
        -0x18t
        -0x5t
        -0xdt
        -0xdt
        -0x18t
        -0x9t
        -0x1dt
        -0x16t
        -0xdt
        -0x15t
        -0x15t
        -0x20t
        -0x11t
        -0x25t
        -0x1et
        -0x16t
        -0x47t
    .end array-data
.end method

.method private final A0Q(I)V
    .registers 5

    .line 6234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A04:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A04:I

    .line 6235
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    .line 6236
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    .line 6237
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/O7;->A07:I

    .line 6238
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/O7;->A07:I

    .line 6239
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0l:I

    if-lt v1, v0, :cond_28

    .line 6240
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0J()V

    .line 6241
    :cond_28
    return-void
.end method

.method private final A0R(JJF)V
    .registers 15

    .line 6242
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KN;->A01(J)J

    move-result-wide v0

    long-to-int v6, v0

    .line 6243
    .local v1, "positionMs":I
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/KN;->A01(J)J

    move-result-wide v0

    long-to-int v5, v0

    .line 6244
    .local v0, "presentationGapMs":I
    const/16 v3, 0x3e8

    if-le v5, v3, :cond_44

    const/16 v0, 0x2710

    if-ge v5, v0, :cond_44

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    if-le v2, v1, :cond_44

    .line 6245
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    const-wide v7, 0x408f400000000000L    # 1000.0

    if-le v6, v0, :cond_45

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    add-int/2addr v1, v0

    if-ge v6, v1, :cond_45

    .line 6246
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/O7;->A0E:I

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    add-int/2addr v1, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/O7;->A0E:I

    .line 6247
    :cond_40
    :goto_40
    iput v6, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    .line 6248
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    .line 6249
    :cond_44
    return-void

    .line 6250
    :cond_45
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    add-int/2addr v1, v0

    if-le v6, v1, :cond_40

    .line 6251
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/O7;->A0E:I

    int-to-float v0, v5

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/O7;->A0E:I

    goto :goto_40
.end method

.method private A0S(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V
    .registers 14

    .line 6252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0X:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_d

    .line 6253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0X:Lcom/facebook/ads/redexgen/X/Xo;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Xo;->AHc(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V

    .line 6254
    :cond_d
    return-void
.end method

.method public static A0T(Landroid/media/MediaFormat;I)V
    .registers 5

    .line 6255
    const/16 v2, 0x649

    const/16 v1, 0x11

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 6256
    const/16 v2, 0x485

    const/16 v1, 0x10

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6257
    return-void
.end method

.method private A0U(Landroid/view/Surface;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6258
    if-nez p1, :cond_8

    .line 6259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_48

    .line 6260
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    .line 6261
    .end local v0
    :cond_8
    :goto_8
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A0h:Lcom/facebook/ads/redexgen/X/XQ;

    .line 6262
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v9

    .line 6263
    .local v0, "shouldReInitCodecUponSurfaceSetFailure":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    if-eq v0, p1, :cond_ca

    .line 6264
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    .line 6265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0Q:J

    .line 6266
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A9n()I

    move-result v4

    .line 6267
    .local v1, "state":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0f:Z

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->ABM()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v7, 0x1

    .line 6268
    .local v2, "shouldSetJoiningDeadline":Z
    :goto_2b
    const/4 v3, 0x2

    if-eq v4, v1, :cond_30

    if-ne v4, v3, :cond_da

    .line 6269
    :cond_30
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_61

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6270
    :cond_46
    const/4 v7, 0x0

    goto :goto_2b

    .line 6271
    :cond_48
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1k()Lcom/facebook/ads/redexgen/X/Sq;

    move-result-object v2

    .line 6272
    .local v0, "codecInfo":Lcom/facebook/ads/redexgen/X/Sq;
    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3X;->A0r(Lcom/facebook/ads/redexgen/X/Sq;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6273
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sq;->A06:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    .line 6274
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    goto :goto_8

    .line 6275
    .local v6, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    :cond_61
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "bAiVO2VhFVs3QTofeBFUfXHw06Wm2es2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_da

    .line 6276
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_c3

    if-eqz v5, :cond_c3

    if-eqz p1, :cond_c3

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/3X;->A0b:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_8e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8e
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "RkzURDWRAG2e9shURQw0dKFNMHGw0Lnk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v6, :cond_c3

    .line 6277
    if-eqz v9, :cond_d7

    .line 6278
    :try_start_99
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/3X;->A0d(Lcom/facebook/ads/redexgen/X/Sn;Landroid/view/Surface;)V

    goto :goto_da
    :try_end_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 6279
    .local v7, "e":Ljava/lang/IllegalStateException;
    :catch_9d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A1n()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b8

    .line 6280
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1p()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    goto :goto_da

    :cond_b8
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "ff1ESQVtQ0uCWsGnypZckqVL4ucmZPZZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1p()V

    .end local v7
    goto :goto_da

    .line 6281
    :cond_c3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A1n()V

    .line 6282
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1p()V

    goto :goto_da

    .line 6283
    .end local v1    # "state":I
    .end local v2    # "shouldSetJoiningDeadline":Z
    :cond_ca
    if-eqz p1, :cond_10f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_10f

    .line 6284
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0M()V

    .line 6285
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0L()V

    goto :goto_10f

    .line 6286
    :cond_d7
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/3X;->A0d(Lcom/facebook/ads/redexgen/X/Sn;Landroid/view/Surface;)V

    .line 6287
    .end local v6    # "codec":Lcom/facebook/ads/redexgen/X/Sn;
    :cond_da
    :goto_da
    if-eqz p1, :cond_110

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_110

    .line 6288
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0M()V

    .line 6289
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0E()V

    .line 6290
    if-eq v4, v3, :cond_ea

    if-eqz v7, :cond_ed

    .line 6291
    :cond_ea
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0N()V

    .line 6292
    :cond_ed
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 6293
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A12:Lcom/facebook/ads/redexgen/X/XQ;

    .line 6294
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    .line 6295
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A00(Lcom/facebook/ads/redexgen/X/Xa;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_106

    const/4 v8, 0x1

    .line 6296
    .local v3, "shouldIgnoreUnknownSurfaceSize":Z
    :cond_106
    if-nez v8, :cond_10f

    .line 6297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/Mo;)V

    .line 6298
    :cond_10f
    :goto_10f
    return-void

    .line 6299
    :cond_110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0F()V

    .line 6300
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0E()V

    .line 6301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 6302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A08()V

    const/4 v0, 0x0

    throw v0
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 8

    .line 6303
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v0

    .line 6304
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    if-nez v0, :cond_7

    .line 6305
    return-void

    .line 6306
    :cond_7
    if-eqz p1, :cond_29

    .line 6307
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Sn;->A9M()Landroid/util/Pair;

    move-result-object v5

    .line 6308
    .local v1, "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_29

    .line 6309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/O7;->A04(Landroid/util/Pair;)V

    .line 6310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/O7;->A00:I

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A04(ILcom/facebook/ads/redexgen/X/VC;)V

    .line 6311
    .end local v1    # "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_29
    return-void
.end method

.method private final A0W(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    .registers 8

    .line 6312
    const/16 v2, 0x4ee

    const/16 v1, 0xf

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6313
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Sn;->AIw(IZ)V

    .line 6314
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6315
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0Q(I)V

    .line 6316
    return-void
.end method

.method private final A0X(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    .registers 12
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6317
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    if-eqz v0, :cond_8

    .line 6318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3X;->A0Y(Lcom/facebook/ads/redexgen/X/Sn;IJ)V

    .line 6319
    return-void

    .line 6320
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0K()V

    .line 6321
    :try_start_b
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6323
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/Sn;->AIw(IZ)V

    .line 6324
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    .line 6325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    .line 6327
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6328
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6329
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0O()V
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_47

    .line 6330
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6331
    return-void

    .line 6332
    :catchall_47
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6333
    throw v0
.end method

.method private final A0Y(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    .registers 12
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6334
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6336
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/Sn;->AIw(IZ)V

    .line 6337
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    .line 6338
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    .line 6340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_43

    .line 6342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0K()V

    .line 6344
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6345
    :cond_43
    return-void
.end method

.method private final A0Z(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    .registers 8

    .line 6346
    const/16 v2, 0x62b

    const/16 v1, 0xf

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6347
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Sn;->AIw(IZ)V

    .line 6348
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A0B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A0B:I

    .line 6350
    return-void
.end method

.method private final A0a(Lcom/facebook/ads/redexgen/X/Sn;IJJ)V
    .registers 27
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6351
    move-object/from16 v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    if-eqz v0, :cond_14

    .line 6352
    const/4 v13, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/3X;->A0c(Lcom/facebook/ads/redexgen/X/Sn;IJJZ)V

    .line 6353
    return-void

    .line 6354
    :cond_14
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/3X;->A0K()V

    .line 6355
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3X;->A0S:Landroid/media/MediaFormat;

    move-object v13, v4

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/3X;->A0S(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V

    .line 6356
    :try_start_26
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6358
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/Sn;->AIv(IJ)V

    .line 6359
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    .line 6360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6361
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    .line 6362
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6363
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6364
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/3X;->A0O()V
    :try_end_5e
    .catchall {:try_start_26 .. :try_end_5e} :catchall_7c

    .line 6365
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_74

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6366
    :cond_74
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "qw8m2lMMOBhtwDKiqr9qPQKZQhksW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 6367
    :catchall_7c
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6368
    throw v0
.end method

.method private final A0b(Lcom/facebook/ads/redexgen/X/Sn;IJJZ)V
    .registers 28
    .param p1    # Lcom/facebook/ads/redexgen/X/Sn;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 6369
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    if-eqz v0, :cond_14

    .line 6370
    move/from16 v13, p7

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/3X;->A0c(Lcom/facebook/ads/redexgen/X/Sn;IJJZ)V

    .line 6371
    return-void

    .line 6372
    :cond_14
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/3X;->A0K()V

    .line 6373
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/3X;->A0S:Landroid/media/MediaFormat;

    move-object v13, v6

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/3X;->A0S(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V

    .line 6374
    :try_start_26
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6376
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/Sn;->AIv(IJ)V

    .line 6377
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    .line 6378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6379
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    .line 6380
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6381
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6382
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/3X;->A0O()V
    :try_end_5e
    .catchall {:try_start_26 .. :try_end_5e} :catchall_62

    .line 6383
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6384
    return-void

    .line 6385
    :catchall_62
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6386
    throw v0
.end method

.method private final A0c(Lcom/facebook/ads/redexgen/X/Sn;IJJZ)V
    .registers 18
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6387
    move-wide v6, p5

    if-eqz p7, :cond_26

    .line 6388
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "P"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/3X;->A0S:Landroid/media/MediaFormat;

    move-object v3, p0

    move-wide v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/3X;->A0S(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V

    .line 6389
    :cond_26
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A02(Ljava/lang/String;)V

    .line 6390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6391
    .local v0, "startRenderTime":J
    invoke-interface {p1, p2, v6, v7}, Lcom/facebook/ads/redexgen/X/Sn;->AIv(IJ)V

    .line 6392
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0f:J

    .line 6393
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A00()V

    .line 6394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/O7;->A09:I

    .line 6395
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 6397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6398
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0K()V

    .line 6399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6400
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0O()V

    .line 6401
    :cond_6c
    return-void
.end method

.method public static A0d(Lcom/facebook/ads/redexgen/X/Sn;Landroid/view/Surface;)V
    .registers 2

    .line 6402
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Sn;->AKt(Landroid/view/Surface;)V

    .line 6403
    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/3X;JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V
    .registers 7

    .line 6404
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/3X;->A0S(JJLcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private A0f(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6405
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0d:Z

    .line 6406
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v0

    .line 6407
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    return-void
.end method

.method private A0g()Z
    .registers 9

    .line 6408
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0n:I

    const/4 v7, 0x0

    if-gtz v0, :cond_6

    .line 6409
    return v7

    .line 6410
    :cond_6
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1f

    .line 6411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0n:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_20

    :cond_1f
    const/4 v7, 0x1

    .line 6412
    .local v0, "continueRetry":Z
    :cond_20
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_42

    .line 6413
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x385

    const/16 v1, 0x14

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6415
    :cond_42
    return v7
.end method

.method public static A0h()Z
    .registers 2

    .line 6416
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static A0i()Z
    .registers 5

    .line 6417
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_3c

    const/16 v2, 0x500

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/N1;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v2, 0x2d5

    const/4 v1, 0x6

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/N1;->A05:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_4c

    :cond_3e
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "hBo4sFlbfj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    :goto_4c
    return v0
.end method

.method public static synthetic A0j()Z
    .registers 1

    .line 6418
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3X;->A0h()Z

    move-result v0

    return v0
.end method

.method public static A0k(J)Z
    .registers 5

    .line 6419
    const-wide/16 v1, -0x7530

    cmp-long v0, p0, v1

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static A0l(J)Z
    .registers 5

    .line 6420
    const-wide/32 v1, -0x7a120

    cmp-long v0, p0, v1

    if-gez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private A0m(JJ)Z
    .registers 15

    .line 6421
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A9n()I

    move-result v1

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v1, v0, :cond_67

    const/4 v8, 0x1

    .line 6422
    .local v0, "isStarted":Z
    :goto_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0j:Z

    if-nez v0, :cond_40

    .line 6423
    if-nez v8, :cond_13

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0g:Z

    if-eqz v0, :cond_3e

    :cond_13
    const/4 v7, 0x1

    .line 6424
    .local v1, "shouldRenderFirstFrame":Z
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    sub-long/2addr v1, v3

    .line 6425
    .local v4, "elapsedSinceLastRenderUs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_3c

    .line 6426
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1i()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3c

    if-nez v7, :cond_3b

    if-eqz v8, :cond_3c

    .line 6427
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/facebook/ads/redexgen/X/3X;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 6428
    :cond_3b
    :goto_3b
    return v9

    .line 6429
    :cond_3c
    const/4 v9, 0x0

    goto :goto_3b

    .line 6430
    :cond_3e
    const/4 v7, 0x0

    goto :goto_14

    .line 6431
    :cond_40
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_55

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_55
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "DsTcv7khaJnVA8M9XuBL8Qg5wFjhyDSr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YKx3K3PMQLLp7qgDz5oHLXhJn9ZQ21Sd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_65

    const/4 v7, 0x1

    goto :goto_14

    :cond_65
    const/4 v7, 0x0

    goto :goto_14

    .line 6432
    :cond_67
    const/4 v8, 0x0

    goto :goto_9
.end method

.method private final A0n(JJ)Z
    .registers 6

    .line 6433
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0l(J)Z

    move-result v0

    return v0
.end method

.method private final A0o(JJ)Z
    .registers 6

    .line 6434
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0k(J)Z

    move-result v0

    return v0
.end method

.method private final A0p(JJ)Z
    .registers 8

    .line 6435
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v1, 0x186a0

    cmp-long v0, p3, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final A0q(Lcom/facebook/ads/redexgen/X/Sn;IJJ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6436
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/97;->A1Q(J)I

    move-result v3

    .line 6437
    .local v0, "droppedSourceBufferCount":I
    if-nez v3, :cond_8

    .line 6438
    const/4 v0, 0x0

    return v0

    .line 6439
    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/O7;->A06:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/O7;->A06:I

    .line 6440
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0Q(I)V

    .line 6441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A1m()V

    .line 6442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 6444
    :cond_28
    return v1
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/Sq;)Z
    .registers 6

    .line 6445
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_3d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0e:Z

    if-eqz v0, :cond_3d

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3f

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "E"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_3d

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A03:Ljava/lang/String;

    .line 6446
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A06:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    .line 6447
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3b
    const/4 v0, 0x1

    .line 6448
    :goto_3c
    return v0

    .line 6449
    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/3X;)Z
    .registers 1

    .line 6450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A21()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/3X;JJ)Z
    .registers 5

    .line 6451
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3X;->A0m(JJ)Z

    move-result p0

    return p0
.end method

.method private final A0u(Ljava/lang/String;)Z
    .registers 10

    .line 6452
    const/16 v2, 0x2e7

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_11

    .line 6453
    return v6

    .line 6454
    :cond_11
    const-class v4, Lcom/facebook/ads/redexgen/X/3X;

    monitor-enter v4

    .line 6455
    :try_start_14
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/3X;->A0z:Z

    if-nez v0, :cond_2e

    .line 6456
    const/16 v2, 0x4e5

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/N1;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_31

    .line 6457
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    .line 6458
    :goto_2c
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0z:Z

    .line 6459
    :cond_2e
    monitor-exit v4

    goto/16 :goto_bf0

    .line 6460
    :cond_31
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v7, 0x1b

    if-gt v0, v7, :cond_4b

    const/16 v2, 0x233

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/N1;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6461
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    goto :goto_2c

    .line 6462
    :cond_4b
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    if-lt v0, v7, :cond_50

    goto :goto_2c

    .line 6463
    :cond_50
    sget-object v1, Lcom/facebook/ads/redexgen/X/N1;->A03:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_bf6

    goto/16 :goto_9cb

    :sswitch_5b
    const/16 v3, 0x23f

    const/4 v2, 0x7

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x37

    goto/16 :goto_9cf

    :sswitch_6d
    const/16 v3, 0x238

    const/4 v2, 0x7

    const/16 v0, 0x12

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x36

    goto/16 :goto_9cf

    :sswitch_80
    const/16 v3, 0x13a

    const/16 v2, 0xa

    const/16 v0, 0x1f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x1c

    goto/16 :goto_9cf

    :sswitch_94
    const/16 v3, 0x130

    const/16 v2, 0xa

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    goto/16 :goto_9cf

    :sswitch_a6
    const/16 v3, 0x6f

    const/16 v2, 0xc

    const/16 v0, 0x64

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xc

    goto/16 :goto_9cf

    :sswitch_ba
    const/16 v3, 0x22c

    const/4 v2, 0x7

    const/16 v0, 0x7d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x35

    goto/16 :goto_9cf

    :sswitch_cd
    const/16 v3, 0x225

    const/4 v2, 0x7

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x34

    goto/16 :goto_9cf

    :sswitch_e0
    const/16 v3, 0xcc

    const/16 v2, 0xe

    const/16 v0, 0x7e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x10

    goto/16 :goto_9cf

    :sswitch_f4
    const/16 v3, 0x246

    const/16 v2, 0xc

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3a

    goto/16 :goto_9cf

    :sswitch_108
    const/16 v3, 0x301

    const/16 v2, 0x8

    const/16 v0, 0x6d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x57

    goto/16 :goto_9cf

    :sswitch_11c
    const/16 v3, 0x624

    const/4 v2, 0x7

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x67

    goto/16 :goto_9cf

    :sswitch_12f
    const/16 v3, 0x53b

    const/16 v2, 0xe

    const/16 v0, 0x52

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x39

    goto/16 :goto_9cf

    :sswitch_143
    const/16 v3, 0xe6

    const/4 v2, 0x7

    const/16 v0, 0xa

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x14

    goto/16 :goto_9cf

    :sswitch_156
    const/16 v3, 0x6e0

    const/4 v2, 0x7

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x77

    goto/16 :goto_9cf

    :sswitch_169
    const/16 v3, 0x521

    const/16 v2, 0xe

    const/16 v0, 0x4e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x32

    goto/16 :goto_9cf

    :sswitch_17d
    const/16 v3, 0x14f

    const/16 v2, 0xa

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x1e

    goto/16 :goto_9cf

    :sswitch_191
    const/16 v3, 0x52f

    const/4 v2, 0x7

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x33

    goto/16 :goto_9cf

    :sswitch_1a4
    const/16 v3, 0x54f

    const/16 v2, 0x8

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3c

    goto/16 :goto_9cf

    :sswitch_1b8
    const/16 v3, 0x270

    const/4 v2, 0x7

    const/16 v0, 0x43

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x43

    goto/16 :goto_9cf

    :sswitch_1cb
    const/16 v3, 0x5ce

    const/16 v2, 0x8

    const/16 v0, 0xa

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x53

    goto/16 :goto_9cf

    :sswitch_1df
    const/16 v3, 0x557

    const/16 v2, 0x9

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3d

    goto/16 :goto_9cf

    :sswitch_1f3
    const/16 v3, 0x2e

    const/16 v2, 0x9

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x8

    goto/16 :goto_9cf

    :sswitch_207
    const/16 v3, 0x580

    const/4 v2, 0x7

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x45

    goto/16 :goto_9cf

    :sswitch_21a
    const/16 v3, 0x1ed

    const/16 v2, 0xe

    const/16 v0, 0x2e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x30

    goto/16 :goto_9cf

    :sswitch_22e
    const/16 v3, 0x1df

    const/16 v2, 0xe

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x2f

    goto/16 :goto_9cf

    :sswitch_242
    const/16 v3, 0x1d1

    const/16 v2, 0xe

    const/4 v0, 0x2

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x2e

    goto/16 :goto_9cf

    :sswitch_255
    const/16 v3, 0x35a

    const/16 v2, 0x8

    const/16 v0, 0x5c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x65

    goto/16 :goto_9cf

    :sswitch_269
    const/16 v3, 0x33b

    const/16 v2, 0xb

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5d

    goto/16 :goto_9cf

    :sswitch_27d
    const/16 v3, 0x425

    const/16 v2, 0x8

    const/16 v0, 0x46

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6f

    goto/16 :goto_9cf

    :sswitch_291
    const/16 v3, 0x41d

    const/16 v2, 0x8

    const/16 v0, 0x39

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6e

    goto/16 :goto_9cf

    :sswitch_2a5
    const/16 v3, 0x415

    const/16 v2, 0x8

    const/16 v0, 0x67

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6d

    goto/16 :goto_9cf

    :sswitch_2b9
    const/16 v3, 0x40d

    const/16 v2, 0x8

    const/16 v0, 0x26

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6c

    goto/16 :goto_9cf

    :sswitch_2cd
    const/16 v3, 0x3f

    const/16 v2, 0x8

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xa

    goto/16 :goto_9cf

    :sswitch_2e0
    const/16 v3, 0x37

    const/16 v2, 0x8

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x9

    goto/16 :goto_9cf

    :sswitch_2f4
    const/16 v3, 0x514

    const/4 v2, 0x7

    const/16 v0, 0x7c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x31

    goto/16 :goto_9cf

    :sswitch_307
    const/16 v3, 0x587

    const/16 v2, 0x8

    const/16 v0, 0x46

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x46

    goto/16 :goto_9cf

    :sswitch_31b
    const/16 v3, 0xed

    const/16 v2, 0x9

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x15

    goto/16 :goto_9cf

    :sswitch_32f
    const/16 v3, 0x1f

    const/16 v2, 0x8

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x6

    goto/16 :goto_9cf

    :sswitch_342
    const/16 v3, 0x569

    const/4 v2, 0x5

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x42

    goto/16 :goto_9cf

    :sswitch_355
    const/16 v3, 0x564

    const/4 v2, 0x5

    const/16 v0, 0x2d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x41

    goto/16 :goto_9cf

    :sswitch_368
    const/16 v3, 0x536

    const/4 v2, 0x5

    const/16 v0, 0x1e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x38

    goto/16 :goto_9cf

    :sswitch_37b
    const/16 v3, 0x468

    const/4 v2, 0x5

    const/16 v0, 0x37

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x79

    goto/16 :goto_9cf

    :sswitch_38e
    const/16 v3, 0x45c

    const/4 v2, 0x5

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x72

    goto/16 :goto_9cf

    :sswitch_3a1
    const/16 v3, 0x353

    const/4 v2, 0x5

    const/16 v0, 0xb

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x63

    goto/16 :goto_9cf

    :sswitch_3b4
    const/16 v3, 0x34a

    const/4 v2, 0x5

    const/16 v0, 0x51

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x61

    goto/16 :goto_9cf

    :sswitch_3c7
    const/16 v3, 0x31e

    const/4 v2, 0x5

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5f

    goto/16 :goto_9cf

    :sswitch_3da
    const/16 v3, 0x177

    const/4 v2, 0x5

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x25

    goto/16 :goto_9cf

    :sswitch_3ed
    const/16 v3, 0x172

    const/4 v2, 0x5

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x24

    goto/16 :goto_9cf

    :sswitch_400
    const/16 v3, 0x16d

    const/4 v2, 0x5

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x23

    goto/16 :goto_9cf

    :sswitch_413
    const/16 v3, 0x168

    const/4 v2, 0x5

    const/16 v0, 0x5a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x22

    goto/16 :goto_9cf

    :sswitch_426
    const/16 v3, 0x163

    const/4 v2, 0x5

    const/16 v0, 0x1e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x21

    goto/16 :goto_9cf

    :sswitch_439
    const/16 v3, 0x15e

    const/4 v2, 0x5

    const/16 v0, 0x65

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x20

    goto/16 :goto_9cf

    :sswitch_44c
    const/16 v3, 0x159

    const/4 v2, 0x5

    const/16 v0, 0x5b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x1f

    goto/16 :goto_9cf

    :sswitch_45f
    const/16 v3, 0x11f

    const/4 v2, 0x5

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x19

    goto/16 :goto_9cf

    :sswitch_472
    const/16 v3, 0x1a

    const/4 v2, 0x5

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x5

    goto/16 :goto_9cf

    :sswitch_484
    const/16 v3, 0xa0

    const/16 v2, 0xb

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xd

    goto/16 :goto_9cf

    :sswitch_498
    const/16 v3, 0x29f

    const/16 v2, 0x8

    const/16 v0, 0x42

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x47

    goto/16 :goto_9cf

    :sswitch_4ac
    const/16 v3, 0x5ca

    const/4 v2, 0x4

    const/16 v0, 0x16

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x50

    goto/16 :goto_9cf

    :sswitch_4bf
    const/16 v3, 0x5b2

    const/4 v2, 0x4

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x49

    goto/16 :goto_9cf

    :sswitch_4d2
    const/16 v3, 0x560

    const/4 v2, 0x4

    const/16 v0, 0x5e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x40

    goto/16 :goto_9cf

    :sswitch_4e5
    const/16 v3, 0x510

    const/4 v2, 0x4

    const/16 v0, 0x74

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x27

    goto/16 :goto_9cf

    :sswitch_4f8
    const/16 v3, 0x46d

    const/4 v2, 0x4

    const/16 v0, 0xc

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x7a

    goto/16 :goto_9cf

    :sswitch_50b
    const/16 v3, 0x34f

    const/4 v2, 0x4

    const/16 v0, 0x19

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x62

    goto/16 :goto_9cf

    :sswitch_51e
    const/16 v3, 0x346

    const/4 v2, 0x4

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x60

    goto/16 :goto_9cf

    :sswitch_531
    const/16 v3, 0x2fa

    const/4 v2, 0x4

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x51

    goto/16 :goto_9cf

    :sswitch_543
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x2

    goto/16 :goto_9cf

    :sswitch_555
    const/4 v3, 0x4

    const/4 v2, 0x4

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x1

    goto/16 :goto_9cf

    :sswitch_566
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/16 v0, 0x70

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x0

    goto/16 :goto_9cf

    :sswitch_577
    const/16 v3, 0x4fd

    const/4 v2, 0x3

    const/16 v0, 0x6b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x26

    goto/16 :goto_9cf

    :sswitch_58a
    const/16 v3, 0x4eb

    const/4 v2, 0x3

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x18

    goto/16 :goto_9cf

    :sswitch_59d
    const/16 v3, 0x4e2

    const/4 v2, 0x3

    const/16 v0, 0x65

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x17

    goto/16 :goto_9cf

    :sswitch_5b0
    const/16 v3, 0x4df

    const/4 v2, 0x3

    const/16 v0, 0x51

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x16

    goto/16 :goto_9cf

    :sswitch_5c3
    const/16 v3, 0x47e

    const/4 v2, 0x3

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x7d

    goto/16 :goto_9cf

    :sswitch_5d5
    const/16 v3, 0x362

    const/4 v2, 0x3

    const/4 v0, 0x3

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x66

    goto/16 :goto_9cf

    :sswitch_5e7
    const/16 v3, 0x31b

    const/4 v2, 0x3

    const/16 v0, 0x38

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5e

    goto/16 :goto_9cf

    :sswitch_5fa
    const/16 v3, 0x2fe

    const/4 v2, 0x3

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x52

    goto/16 :goto_9cf

    :sswitch_60d
    const/16 v3, 0x2a7

    const/4 v2, 0x3

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4a

    goto/16 :goto_9cf

    :sswitch_620
    const/16 v3, 0x29c

    const/4 v2, 0x3

    const/16 v0, 0x19

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x44

    goto/16 :goto_9cf

    :sswitch_633
    const/16 v3, 0x252

    const/4 v2, 0x3

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3e

    goto/16 :goto_9cf

    :sswitch_646
    const/16 v3, 0x5b0

    const/4 v2, 0x2

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x48

    goto/16 :goto_9cf

    :sswitch_659
    const/16 v3, 0x461

    const/4 v2, 0x2

    const/16 v0, 0x39

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x73

    goto/16 :goto_9cf

    :sswitch_66c
    const/16 v3, 0x45a

    const/4 v2, 0x2

    const/16 v0, 0x2e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x71

    goto/16 :goto_9cf

    :sswitch_67f
    const/16 v3, 0x358

    const/4 v2, 0x2

    const/16 v0, 0x72

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x64

    goto/16 :goto_9cf

    :sswitch_692
    const/16 v3, 0xda

    const/4 v2, 0x2

    const/16 v0, 0x34

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x11

    goto/16 :goto_9cf

    :sswitch_6a5
    const/16 v3, 0x6e7

    const/16 v2, 0x8

    const/16 v0, 0x5b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x78

    goto/16 :goto_9cf

    :sswitch_6b9
    const/16 v3, 0x124

    const/16 v2, 0xc

    const/16 v0, 0x20

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x1a

    goto/16 :goto_9cf

    :sswitch_6cd
    const/16 v3, 0x477

    const/4 v2, 0x7

    const/16 v0, 0x21

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x7c

    goto/16 :goto_9cf

    :sswitch_6e0
    const/16 v3, 0xab

    const/16 v2, 0x8

    const/16 v0, 0x78

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xe

    goto/16 :goto_9cf

    :sswitch_6f4
    const/16 v3, 0x63a

    const/16 v2, 0x9

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6b

    goto/16 :goto_9cf

    :sswitch_708
    const/16 v3, 0x331

    const/16 v2, 0xa

    const/16 v0, 0xb

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5c

    goto/16 :goto_9cf

    :sswitch_71c
    const/16 v3, 0x199

    const/16 v2, 0xe

    const/16 v0, 0x6d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x2a

    goto/16 :goto_9cf

    :sswitch_730
    const/16 v3, 0x1fb

    const/16 v2, 0xe

    const/16 v0, 0x4d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x28

    goto/16 :goto_9cf

    :sswitch_744
    const/16 v3, 0x2f1

    const/16 v2, 0x9

    const/16 v0, 0x37

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4f

    goto/16 :goto_9cf

    :sswitch_758
    const/16 v3, 0x6d5

    const/4 v2, 0x6

    const/16 v0, 0x61

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x76

    goto/16 :goto_9cf

    :sswitch_76b
    const/16 v3, 0x6cf

    const/4 v2, 0x6

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x75

    goto/16 :goto_9cf

    :sswitch_77e
    const/16 v3, 0x3ee

    const/16 v2, 0x9

    const/16 v0, 0x6b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x69

    goto/16 :goto_9cf

    :sswitch_792
    const/16 v3, 0x27

    const/4 v2, 0x7

    const/16 v0, 0x33

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x7

    goto/16 :goto_9cf

    :sswitch_7a4
    const/16 v3, 0x5c0

    const/16 v2, 0xa

    const/16 v0, 0x5b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4c

    goto/16 :goto_9cf

    :sswitch_7b8
    const/16 v3, 0x643

    const/4 v2, 0x6

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x70

    goto/16 :goto_9cf

    :sswitch_7ca
    const/16 v3, 0x144

    const/16 v2, 0xb

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x1d

    goto/16 :goto_9cf

    :sswitch_7de
    const/16 v3, 0x61c

    const/16 v2, 0x8

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x6a

    goto/16 :goto_9cf

    :sswitch_7f1
    const/16 v3, 0x13

    const/4 v2, 0x7

    const/16 v0, 0xc

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x4

    goto/16 :goto_9cf

    :sswitch_803
    const/16 v3, 0xc

    const/4 v2, 0x7

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/4 v7, 0x3

    goto/16 :goto_9cf

    :sswitch_815
    const/16 v3, 0x5ba

    const/4 v2, 0x6

    const/16 v0, 0x26

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4b

    goto/16 :goto_9cf

    :sswitch_828
    const/16 v3, 0x3f7

    const/16 v2, 0x9

    const/16 v0, 0x42

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x68

    goto/16 :goto_9cf

    :sswitch_83c
    const/16 v3, 0x549

    const/4 v2, 0x6

    const/4 v0, 0x3

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3b

    goto/16 :goto_9cf

    :sswitch_84e
    const/16 v3, 0xc1

    const/16 v2, 0xb

    const/16 v0, 0xb

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xf

    goto/16 :goto_9cf

    :sswitch_862
    const/16 v3, 0x209

    const/16 v2, 0xe

    const/16 v0, 0xb

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x29

    goto/16 :goto_9cf

    :sswitch_876
    const/16 v3, 0x5e8

    const/16 v2, 0x9

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x56

    goto/16 :goto_9cf

    :sswitch_88a
    const/16 v3, 0x5df

    const/16 v2, 0x9

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x55

    goto/16 :goto_9cf

    :sswitch_89d
    const/16 v3, 0x5d6

    const/16 v2, 0x9

    const/16 v0, 0x2c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x54

    goto/16 :goto_9cf

    :sswitch_8b1
    const/16 v3, 0x65a

    const/16 v2, 0x9

    const/16 v0, 0x12

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x74

    goto/16 :goto_9cf

    :sswitch_8c5
    const/16 v3, 0x323

    const/16 v2, 0x8

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5b

    goto/16 :goto_9cf

    :sswitch_8d9
    const/16 v3, 0x118

    const/4 v2, 0x7

    const/16 v0, 0x5a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x12

    goto/16 :goto_9cf

    :sswitch_8ec
    const/16 v3, 0x471

    const/4 v2, 0x6

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x7b

    goto/16 :goto_9cf

    :sswitch_8fe
    const/16 v3, 0x8a

    const/16 v2, 0xa

    const/16 v0, 0x78

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0xb

    goto/16 :goto_9cf

    :sswitch_912
    const/16 v3, 0x315

    const/4 v2, 0x6

    const/16 v0, 0x2d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x5a

    goto/16 :goto_9cf

    :sswitch_925
    const/16 v3, 0x30f

    const/4 v2, 0x6

    const/16 v0, 0x5f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x59

    goto/16 :goto_9cf

    :sswitch_938
    const/16 v3, 0x309

    const/4 v2, 0x6

    const/16 v0, 0x3d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x58

    goto/16 :goto_9cf

    :sswitch_94b
    const/16 v3, 0x2e1

    const/4 v2, 0x6

    const/16 v0, 0x33

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4e

    goto :goto_9cf

    :sswitch_95d
    const/16 v3, 0x2db

    const/4 v2, 0x6

    const/16 v0, 0x38

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x4d

    goto :goto_9cf

    :sswitch_96f
    const/16 v3, 0xdc

    const/16 v2, 0xa

    const/16 v0, 0x6c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x13

    goto :goto_9cf

    :sswitch_982
    const/16 v3, 0x25c

    const/4 v2, 0x6

    const/16 v0, 0x3a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x3f

    goto :goto_9cf

    :sswitch_994
    const/16 v3, 0x1c3

    const/16 v2, 0xe

    const/16 v0, 0x48

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x2d

    goto :goto_9cf

    :sswitch_9a7
    const/16 v3, 0x1b5

    const/16 v2, 0xe

    const/16 v0, 0x3a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    const/16 v7, 0x2c

    goto :goto_9cf

    :sswitch_9ba
    const/16 v3, 0x1a7

    const/16 v2, 0xe

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9cb

    goto :goto_9cd

    :cond_9cb
    :goto_9cb
    const/4 v7, -0x1

    goto :goto_9cf

    :goto_9cd
    const/16 v7, 0x2b

    :goto_9cf
    packed-switch v7, :pswitch_data_df0

    goto :goto_9d5

    .line 6464
    :pswitch_9d3
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    .line 6465
    :goto_9d5
    sget-object v1, Lcom/facebook/ads/redexgen/X/N1;->A06:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ef0

    goto/16 :goto_bdf

    :sswitch_9e0
    const/16 v3, 0x293

    const/16 v2, 0x9

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xa

    goto/16 :goto_be3

    :sswitch_9f4
    const/16 v3, 0x400

    const/16 v2, 0xd

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x1a

    goto/16 :goto_be3

    :sswitch_a08
    const/16 v3, 0x4f

    const/16 v2, 0xa

    const/16 v0, 0x3b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x3

    goto/16 :goto_be3

    :sswitch_a1b
    const/16 v3, 0x286

    const/16 v2, 0xd

    const/16 v0, 0x59

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xd

    goto/16 :goto_be3

    :sswitch_a2f
    const/16 v3, 0x269

    const/4 v2, 0x7

    const/16 v0, 0x2b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x6

    goto/16 :goto_be3

    :sswitch_a41
    const/16 v3, 0x262

    const/4 v2, 0x7

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xe

    goto/16 :goto_be3

    :sswitch_a54
    const/16 v3, 0x3dd

    const/16 v2, 0x9

    const/16 v0, 0x34

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x19

    goto/16 :goto_be3

    :sswitch_a68
    const/16 v3, 0x64

    const/16 v2, 0xb

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x15

    goto/16 :goto_be3

    :sswitch_a7c
    const/16 v3, 0x59

    const/16 v2, 0xb

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x4

    goto/16 :goto_be3

    :sswitch_a8f
    const/16 v3, 0x3cc

    const/16 v2, 0x9

    const/16 v0, 0x7d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xc

    goto/16 :goto_be3

    :sswitch_aa3
    const/16 v3, 0x217

    const/16 v2, 0xe

    const/16 v0, 0x5a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x16

    goto/16 :goto_be3

    :sswitch_ab7
    const/16 v3, 0x463

    const/4 v2, 0x5

    const/16 v0, 0x43

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x18

    goto/16 :goto_be3

    :sswitch_aca
    const/16 v3, 0x4b

    const/4 v2, 0x4

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x1

    goto/16 :goto_be3

    :sswitch_adb
    const/16 v3, 0x47

    const/4 v2, 0x4

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    goto/16 :goto_be3

    :sswitch_aec
    const/16 v3, 0x7b

    const/16 v2, 0xf

    const/16 v0, 0x52

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x9

    goto/16 :goto_be3

    :sswitch_b00
    const/16 v3, 0x3d5

    const/16 v2, 0x8

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x7

    goto/16 :goto_be3

    :sswitch_b13
    const/16 v3, 0x3c4

    const/16 v2, 0x8

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x17

    goto/16 :goto_be3

    :sswitch_b27
    const/16 v3, 0x579

    const/4 v2, 0x7

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xb

    goto/16 :goto_be3

    :sswitch_b3a
    const/16 v3, 0x255

    const/4 v2, 0x7

    const/4 v0, 0x3

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x2

    goto/16 :goto_be3

    :sswitch_b4b
    const/16 v3, 0x365

    const/16 v2, 0x8

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x12

    goto/16 :goto_be3

    :sswitch_b5f
    const/16 v3, 0x277

    const/16 v2, 0xf

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x11

    goto :goto_be3

    :sswitch_b72
    const/16 v3, 0x3e6

    const/16 v2, 0x8

    const/16 v0, 0x2b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x13

    goto :goto_be3

    :sswitch_b85
    const/16 v3, 0x94

    const/16 v2, 0xc

    const/16 v0, 0x3b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x14

    goto :goto_be3

    :sswitch_b98
    const/16 v3, 0x2c1

    const/16 v2, 0xe

    const/4 v0, 0x5

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0x10

    goto :goto_be3

    :sswitch_baa
    const/16 v3, 0x2cf

    const/4 v2, 0x6

    const/16 v0, 0x31

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/16 v6, 0xf

    goto :goto_be3

    :sswitch_bbc
    const/16 v3, 0x379

    const/16 v2, 0xc

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    const/4 v6, 0x5

    goto :goto_be3

    :sswitch_bce
    const/16 v3, 0x36d

    const/16 v2, 0xc

    const/16 v0, 0x30

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bdf

    goto :goto_be1

    :cond_bdf
    :goto_bdf
    const/4 v6, -0x1

    goto :goto_be3

    :goto_be1
    const/16 v6, 0x8

    :goto_be3
    packed-switch v6, :pswitch_data_f5e

    goto/16 :goto_2c

    .line 6466
    :pswitch_be8
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    goto/16 :goto_2c

    .line 6467
    :pswitch_bec
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    goto/16 :goto_2c
    :try_end_bf0
    .catchall {:try_start_14 .. :try_end_bf0} :catchall_bf3

    .line 6468
    :goto_bf0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/3X;->A0y:Z

    return v0

    .line 6469
    :catchall_bf3
    move-exception v0

    :try_start_bf4
    monitor-exit v4
    :try_end_bf5
    .catchall {:try_start_bf4 .. :try_end_bf5} :catchall_bf3

    throw v0

    :sswitch_data_bf6
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9ba
        -0x7fd6c381 -> :sswitch_9a7
        -0x7fd6c368 -> :sswitch_994
        -0x7d026749 -> :sswitch_982
        -0x78929d6a -> :sswitch_96f
        -0x75f50a1e -> :sswitch_95d
        -0x75f4fe9d -> :sswitch_94b
        -0x736f875c -> :sswitch_938
        -0x736f83c2 -> :sswitch_925
        -0x736f83c1 -> :sswitch_912
        -0x7327ce1c -> :sswitch_8fe
        -0x651ebb62 -> :sswitch_8ec
        -0x6423293b -> :sswitch_8d9
        -0x604f5117 -> :sswitch_8c5
        -0x5ca40cc4 -> :sswitch_8b1
        -0x58520ec1 -> :sswitch_89d
        -0x58520eba -> :sswitch_88a
        -0x58520eb9 -> :sswitch_876
        -0x4eaed329 -> :sswitch_862
        -0x4892fb4f -> :sswitch_84e
        -0x465b3df3 -> :sswitch_83c
        -0x43e6c939 -> :sswitch_828
        -0x3ec0fcc5 -> :sswitch_815
        -0x3b33cca0 -> :sswitch_803
        -0x3b33cc9a -> :sswitch_7f1
        -0x398ae3f6 -> :sswitch_7de
        -0x391f0fb4 -> :sswitch_7ca
        -0x346837ae -> :sswitch_7b8
        -0x323788e3 -> :sswitch_7a4
        -0x30f57652 -> :sswitch_792
        -0x2f88a116 -> :sswitch_77e
        -0x2f61ed98 -> :sswitch_76b
        -0x2efd0837 -> :sswitch_758
        -0x2e9e9441 -> :sswitch_744
        -0x2247b8b1 -> :sswitch_730
        -0x1f0fa2b7 -> :sswitch_71c
        -0x19af3b41 -> :sswitch_708
        -0x114fad3e -> :sswitch_6f4
        -0x10dae90b -> :sswitch_6e0
        -0x1084b7b7 -> :sswitch_6cd
        -0xa5988e9 -> :sswitch_6b9
        -0x35f9fbf -> :sswitch_6a5
        0x84e -> :sswitch_692
        0xa04 -> :sswitch_67f
        0xa9b -> :sswitch_66c
        0xa9f -> :sswitch_659
        0xd9b -> :sswitch_646
        0x11ebd -> :sswitch_633
        0x127db -> :sswitch_620
        0x12beb -> :sswitch_60d
        0x1334d -> :sswitch_5fa
        0x135c9 -> :sswitch_5e7
        0x13aea -> :sswitch_5d5
        0x158d2 -> :sswitch_5c3
        0x1821e -> :sswitch_5b0
        0x18220 -> :sswitch_59d
        0x18401 -> :sswitch_58a
        0x18c69 -> :sswitch_577
        0x1716e6 -> :sswitch_566
        0x171ac8 -> :sswitch_555
        0x171ac9 -> :sswitch_543
        0x252f5f -> :sswitch_531
        0x25981d -> :sswitch_51e
        0x259b88 -> :sswitch_50b
        0x290a13 -> :sswitch_4f8
        0x3021fd -> :sswitch_4e5
        0x321e47 -> :sswitch_4d2
        0x332327 -> :sswitch_4bf
        0x33ab63 -> :sswitch_4ac
        0x27691fb -> :sswitch_498
        0x349f581 -> :sswitch_484
        0x3ab0ea7 -> :sswitch_472
        0x3e53ea5 -> :sswitch_45f
        0x3f25a44 -> :sswitch_44c
        0x3f25a46 -> :sswitch_439
        0x3f25a49 -> :sswitch_426
        0x3f25e05 -> :sswitch_413
        0x3f25e07 -> :sswitch_400
        0x3f25e09 -> :sswitch_3ed
        0x3f261c6 -> :sswitch_3da
        0x48dce49 -> :sswitch_3c7
        0x48dd589 -> :sswitch_3b4
        0x48dd8af -> :sswitch_3a1
        0x4d36832 -> :sswitch_38e
        0x4f0b0e7 -> :sswitch_37b
        0x5e2479e -> :sswitch_368
        0x60acc05 -> :sswitch_355
        0x6214744 -> :sswitch_342
        0x9d91379 -> :sswitch_32f
        0xadc0551 -> :sswitch_31b
        0xea056b3 -> :sswitch_307
        0x1121dbc3 -> :sswitch_2f4
        0x1255818c -> :sswitch_2e0
        0x1263990d -> :sswitch_2cd
        0x12d90f3a -> :sswitch_2b9
        0x12d90f4c -> :sswitch_2a5
        0x12d98b1b -> :sswitch_291
        0x12d98b22 -> :sswitch_27d
        0x1844c711 -> :sswitch_269
        0x1e3e8044 -> :sswitch_255
        0x2f5336ed -> :sswitch_242
        0x2f54115e -> :sswitch_22e
        0x2f541849 -> :sswitch_21a
        0x31cf010e -> :sswitch_207
        0x36ad82f4 -> :sswitch_1f3
        0x391a0b61 -> :sswitch_1df
        0x3f3728cd -> :sswitch_1cb
        0x448ec687 -> :sswitch_1b8
        0x46260f63 -> :sswitch_1a4
        0x4c505106 -> :sswitch_191
        0x4de67084 -> :sswitch_17d
        0x506ac5a9 -> :sswitch_169
        0x5abad9cd -> :sswitch_156
        0x64d2e6e9 -> :sswitch_143
        0x65e4085b -> :sswitch_12f
        0x6f373556 -> :sswitch_11c
        0x719f1dcb -> :sswitch_108
        0x75d9a0f0 -> :sswitch_f4
        0x7796d144 -> :sswitch_e0
        0x78fc0e50 -> :sswitch_cd
        0x790521fb -> :sswitch_ba
        0x7933207f -> :sswitch_a6
        0x7a05a409 -> :sswitch_94
        0x7a0696bd -> :sswitch_80
        0x7a16dfe7 -> :sswitch_6d
        0x7a1f0e95 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_df0
    .packed-switch 0x0
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
        :pswitch_9d3
    .end packed-switch

    :sswitch_data_ef0
    .sparse-switch
        -0x797bd2a9 -> :sswitch_bce
        -0x797bd2a8 -> :sswitch_bbc
        -0x764842b7 -> :sswitch_baa
        -0x56efdb18 -> :sswitch_b98
        -0x4fb863e1 -> :sswitch_b85
        -0x44aaf270 -> :sswitch_b72
        -0x445f00b8 -> :sswitch_b5f
        -0x2a356629 -> :sswitch_b4b
        -0x236fe21d -> :sswitch_b3a
        -0x22afd633 -> :sswitch_b27
        -0x17f15937 -> :sswitch_b13
        -0x17ca4d0e -> :sswitch_b00
        -0x93ce2de -> :sswitch_aec
        0x1e9d52 -> :sswitch_adb
        0x1e9d5f -> :sswitch_aca
        0x4e27953 -> :sswitch_ab7
        0x1a302dd7 -> :sswitch_aa3
        0x1e80aae9 -> :sswitch_a8f
        0x24f121f5 -> :sswitch_a7c
        0x24f121f7 -> :sswitch_a68
        0x25b7277f -> :sswitch_a54
        0x301eae78 -> :sswitch_a41
        0x301f8ff2 -> :sswitch_a2f
        0x3fd34a20 -> :sswitch_a1b
        0x6449d7cc -> :sswitch_a08
        0x72869bf2 -> :sswitch_9f4
        0x7f30d73a -> :sswitch_9e0
    .end sparse-switch

    :pswitch_data_f5e
    .packed-switch 0x0
        :pswitch_bec
        :pswitch_bec
        :pswitch_bec
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
        :pswitch_be8
    .end packed-switch
.end method

.method public static A0v(ZLcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/VC;)Z
    .registers 7

    .line 6470
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    if-ne v1, v0, :cond_60

    if-nez p0, :cond_54

    iget v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_62

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "Re9ApgitGxUJo4E1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "XXS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    if-ne v3, v0, :cond_60

    iget p0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v3, p2, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_62

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "pb1nOwe8niAjsswQ5ZTVk5zh1nDv9ZSU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "tfbL2C7FYUAvSD84YSO7lyOOgsT48TSy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_60

    :cond_54
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/VC;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 6471
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    .line 6472
    :goto_5f
    return v0

    .line 6473
    :cond_60
    const/4 v0, 0x0

    goto :goto_5f

    :cond_62
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A1X()V
    .registers 5

    .line 6474
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1X()V

    .line 6475
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:I

    .line 6476
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    .line 6477
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    .line 6478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0J:J

    .line 6479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    .line 6480
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    if-eqz v0, :cond_22

    .line 6481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A0D()V

    .line 6482
    :cond_22
    return-void
.end method

.method public final A1Y()V
    .registers 3

    .line 6483
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    .line 6484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0J()V

    .line 6485
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6486
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    if-eqz v0, :cond_16

    .line 6487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A0E()V

    .line 6488
    :cond_16
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1Y()V

    .line 6489
    return-void
.end method

.method public final A1Z()V
    .registers 4

    .line 6490
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6491
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    .line 6492
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    .line 6493
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:F

    .line 6494
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    .line 6495
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    .line 6496
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    .line 6497
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0F()V

    .line 6498
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0E()V

    .line 6499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0s:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A08()V

    .line 6500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/Qf;

    .line 6501
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    .line 6502
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    .line 6503
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    .line 6504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0G()V

    .line 6505
    :try_start_2e
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1Z()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3e

    .line 6506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O7;->A02()V

    .line 6507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A09(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 6508
    return-void

    .line 6509
    :catchall_3e
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O7;->A02()V

    .line 6510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A09(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 6511
    throw v2
.end method

.method public final A1a(JZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6512
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4H;->A1a(JZ)V

    .line 6513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 6515
    :cond_12
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0E()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_27

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6516
    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "BBQSV1tNuVp7XpEZEQVDi8HnQiR1YTyl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    if-eqz v0, :cond_37

    .line 6517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A0C()V

    .line 6518
    :cond_37
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0N:J

    .line 6519
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0L:J

    .line 6520
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    .line 6521
    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:I

    .line 6522
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:I

    .line 6523
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    if-eqz v0, :cond_6d

    .line 6524
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    add-int/lit8 v6, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_21

    sget-object v4, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "oSGEJC0mATgTjcfAGyy4ajz3RDZv7Lqy"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aget-wide v0, v7, v6

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    .line 6525
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    .line 6526
    :cond_6d
    if-eqz p3, :cond_76

    .line 6527
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0N()V

    .line 6528
    :goto_72
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A0H()V

    .line 6529
    return-void

    .line 6530
    :cond_76
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    goto :goto_72
.end method

.method public final A1b(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6531
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4H;->A1b(ZZ)V

    .line 6532
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A1V()Lcom/facebook/ads/redexgen/X/Ph;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    .line 6533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0h:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0A(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 6534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0s:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A09()V

    .line 6535
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0g:Z

    .line 6536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0j:Z

    .line 6537
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/VC;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6538
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_11

    .line 6539
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    .line 6540
    :goto_d
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/4H;->A1c([Lcom/facebook/ads/redexgen/X/VC;JJ)V

    .line 6541
    return-void

    .line 6542
    :cond_11
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    array-length v0, v0

    if-ne v1, v0, :cond_5a

    .line 6543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x42d

    const/16 v1, 0x2d

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6544
    :goto_47
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aput-wide p4, v1, v0

    .line 6545
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    add-int/lit8 v2, v0, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    aput-wide v0, v3, v2

    goto :goto_d

    .line 6546
    :cond_5a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    goto :goto_47
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/Sn;Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/VC;)I
    .registers 12

    .line 6547
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4H;->A0z:Lcom/facebook/ads/redexgen/X/Xc;

    iget v3, p3, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v2, p3, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v1, p4, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A04(Lcom/facebook/ads/redexgen/X/Xc;IIII)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_12

    .line 6548
    return v6

    .line 6549
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A21()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2a

    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6550
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v1, p3, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    if-ne v1, v0, :cond_2a

    .line 6551
    return v5

    .line 6552
    :cond_2a
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Sq;->A04:Z

    invoke-static {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/3X;->A0v(ZLcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_8b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "05kf3O4m1PmcWtyk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ivl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_8a

    iget v4, p4, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0W:Lcom/facebook/ads/redexgen/X/XY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_64

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_64
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "x3LPq4mLq3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/XY;->A02:I

    if-gt v4, v0, :cond_8a

    iget v1, p4, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0W:Lcom/facebook/ads/redexgen/X/XY;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/XY;->A00:I

    if-gt v1, v0, :cond_8a

    .line 6553
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/3X;->A00(Lcom/facebook/ads/redexgen/X/VC;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0W:Lcom/facebook/ads/redexgen/X/XY;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/XY;->A01:I

    if-gt v1, v0, :cond_8a

    .line 6554
    invoke-virtual {p3, p4}, Lcom/facebook/ads/redexgen/X/VC;->A0A(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_88

    :goto_87
    return v5

    .line 6555
    :cond_88
    const/4 v5, 0x3

    goto :goto_87

    .line 6556
    :cond_8a
    return v6

    :cond_8b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/VC;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6557
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4H;->A24(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6558
    const/16 v0, 0x14

    return v0

    .line 6559
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0j:Z

    invoke-static {p1, p3, v0}, Lcom/facebook/ads/redexgen/X/3X;->A01(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;Z)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/TG;",
            "Lcom/facebook/ads/redexgen/X/VC;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Sq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6560
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3X;->A0D(Lcom/facebook/ads/redexgen/X/TG;Lcom/facebook/ads/redexgen/X/VC;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A1m()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6561
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1m()V

    .line 6562
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    .line 6563
    return-void
.end method

.method public final A1n()V
    .registers 5

    .line 6564
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1n()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1b

    .line 6565
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    .line 6566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_1a

    .line 6567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_13

    .line 6568
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    .line 6569
    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6570
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    .line 6571
    :cond_1a
    return-void

    .line 6572
    :catchall_1b
    move-exception v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    .line 6573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_31

    .line 6574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_2a

    .line 6575
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    .line 6576
    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6577
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    .line 6578
    :cond_31
    throw v2
.end method

.method public final A1q(J)V
    .registers 8

    .line 6579
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4H;->A1q(J)V

    .line 6580
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    .line 6581
    :goto_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0x:[J

    const/4 v3, 0x0

    aget-wide v1, v0, v3

    cmp-long v0, p1, v1

    if-ltz v0, :cond_34

    .line 6582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    aget-wide v0, v0, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    .line 6583
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    .line 6584
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0w:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6585
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0x:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 6586
    :cond_34
    return-void
.end method

.method public final A1r(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 8
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6587
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4H;->A24(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_39

    .line 6588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 6589
    const/16 v2, 0x66d

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    .line 6590
    .local v0, "isSwitchingToDav1d":Z
    :goto_20
    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 6592
    :cond_31
    const/4 v0, 0x0

    goto :goto_20

    .line 6593
    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Xa;->A05(Lcom/facebook/ads/redexgen/X/Xa;Z)Z

    .line 6594
    return-void

    .line 6595
    .end local v0    # "isSwitchingToDav1d":Z
    :cond_39
    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A0B:Lcom/facebook/ads/redexgen/X/XP;

    .line 6596
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A00(Lcom/facebook/ads/redexgen/X/XP;)I

    move-result v4

    .line 6597
    .local v0, "videoWidthToEnableSR":I
    if-lez v4, :cond_66

    if-eqz p1, :cond_66

    iget v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_58

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_58
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "eA3sjnYK8PYaKj4ZxIZy4VKEWZVTdUhj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-le v3, v4, :cond_66

    .line 6598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Xa;->A05(Lcom/facebook/ads/redexgen/X/Xa;Z)Z

    .line 6599
    :cond_66
    return-void
.end method

.method public final A1s(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6600
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4H;->A1s(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 6601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A05(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V

    .line 6602
    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:F

    .line 6603
    iget v0, p1, Lcom/facebook/ads/redexgen/X/VC;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0D:I

    .line 6604
    return-void
.end method

.method public final A1t(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6606
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1i()J

    move-result-wide v0

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Xa;->A0J(Lcom/facebook/ads/redexgen/X/VC;J)Z

    .line 6607
    :cond_11
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/T2;)V
    .registers 6

    .line 6608
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:I

    .line 6609
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/T2;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0O:J

    .line 6610
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    if-eqz v0, :cond_1d

    .line 6611
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3X;->A27()V

    .line 6612
    :cond_1d
    return-void
.end method

.method public final A1v(Lcom/facebook/ads/redexgen/X/Sn;Landroid/media/MediaFormat;)V
    .registers 11

    .line 6613
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0S:Landroid/media/MediaFormat;

    .line 6614
    const/16 v2, 0x4cd

    const/16 v1, 0xa

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v2, 0x4d7

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x4b9

    const/16 v1, 0xb

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x4c4

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v3, :cond_133

    .line 6615
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 6616
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 6617
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    const/4 v3, 0x1

    .line 6618
    .local v1, "hasCrop":Z
    :goto_44
    if-eqz v3, :cond_124

    .line 6619
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 6620
    :goto_50
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6621
    if-eqz v3, :cond_115

    .line 6622
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 6623
    :goto_5e
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    .line 6624
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    .line 6625
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_7f

    .line 6626
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0D:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_8c

    :cond_79
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6627
    :cond_7f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 6628
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    goto :goto_b1

    .line 6629
    :cond_8c
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "867Alqp2IE9rr1a1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "BSf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x5a

    if-eq v3, v0, :cond_a2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0D:I

    const/16 v0, 0x10e

    if-ne v1, v0, :cond_b1

    .line 6630
    :cond_a2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6631
    .local v0, "rotatedHeight":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6632
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    .line 6633
    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    .line 6634
    .end local v0    # "rotatedHeight":I
    :cond_b1
    :goto_b1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0H:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->ALA(I)V

    .line 6635
    iget v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(IIIF)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0V:Lcom/facebook/ads/redexgen/X/Tp;

    .line 6636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xt;->A0F(F)V

    .line 6637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 6638
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_79

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "9jhluCbSE08jdVbVPtpLuia4mkowKwVy"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    .line 6639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VC;->A07()Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:I

    .line 6640
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0r(I)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:I

    .line 6641
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0f(I)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:I

    .line 6642
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0l(I)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:F

    .line 6643
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0Y(F)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v0

    .line 6644
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A14()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    .line 6645
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0D(Lcom/facebook/ads/redexgen/X/VC;)V

    const/4 v0, 0x0

    throw v0

    .line 6646
    :cond_115
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_5e

    .line 6647
    :cond_124
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_50

    .line 6648
    :cond_133
    const/4 v3, 0x0

    goto/16 :goto_44

    .line 6649
    :cond_136
    return-void
.end method

.method public final A1w(Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/Sn;Lcom/facebook/ads/redexgen/X/VC;Landroid/media/MediaCrypto;)V
    .registers 18
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TK;
        }
    .end annotation

    .line 6650
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A1e()[Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0A(Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/VC;[Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/XY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0W:Lcom/facebook/ads/redexgen/X/XY;

    .line 6651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0W:Lcom/facebook/ads/redexgen/X/XY;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0u:Z

    .line 6652
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/3X;->A08(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/XY;ZI)Landroid/media/MediaFormat;

    move-result-object v8

    .line 6653
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    if-nez v0, :cond_4c

    .line 6654
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A0r(Lcom/facebook/ads/redexgen/X/Sq;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 6655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-nez v0, :cond_48

    .line 6656
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0p:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A06:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3f

    :goto_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "zipSymz4mf9og0vCT4cHcTaK4vUFN0av"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    .line 6657
    :cond_48
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    .line 6658
    :cond_4c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0z:Lcom/facebook/ads/redexgen/X/Xc;

    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/Xc;->A0L:Z

    const/16 v2, 0x56e

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    if-eqz v6, :cond_99

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_99

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 6659
    invoke-virtual {v0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/4 v7, 0x1

    .line 6660
    .local v1, "isLowLatencyDecodingSupported":Z
    :goto_6a
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Sq;->A03:Ljava/lang/String;

    .line 6661
    const/16 v2, 0x49d

    const/16 v1, 0x1c

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0z:Lcom/facebook/ads/redexgen/X/Xc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A0C:Z

    if-eqz v0, :cond_83

    const/4 v3, 0x1

    .line 6662
    .local v2, "disableLowLatencyDecodingForPlatformDav1d":Z
    :cond_83
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x1e

    if-ge v1, v0, :cond_ab

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4H;->A0z:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_9b

    goto :goto_39

    .line 6663
    :cond_99
    const/4 v7, 0x0

    goto :goto_6a

    :cond_9b
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "RmAod2PZIjrobZNg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "EQN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Xc;->A0M:Z

    if-eqz v0, :cond_b5

    .line 6664
    :cond_ab
    if-eqz v7, :cond_b5

    if-nez v3, :cond_b5

    .line 6665
    invoke-virtual {v8, v5, v4}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 6666
    invoke-virtual {v8, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6667
    :cond_b5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 6668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Xa;->A06(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v8

    .line 6669
    :cond_c3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 6670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    .line 6671
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A07()Landroid/view/Surface;

    const/4 v0, 0x0

    throw v0

    .line 6672
    :cond_d2
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/3X;->A0Y:Ljava/lang/Object;

    move-object v7, p2

    move-object/from16 v10, p4

    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sn;->A5h(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V

    .line 6673
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_ee

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    if-eqz v0, :cond_ee

    .line 6674
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Qf;-><init>(Lcom/facebook/ads/redexgen/X/3X;Lcom/facebook/ads/redexgen/X/Sn;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/Qf;

    .line 6675
    :cond_ee
    return-void
.end method

.method public final A1x(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A0F(Ljava/lang/String;)V

    .line 6677
    return-void
.end method

.method public final A1y(Ljava/lang/String;JJ)V
    .registers 12

    .line 6678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/YB;->A0G(Ljava/lang/String;JJ)V

    .line 6679
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0u(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0b:Z

    .line 6680
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0v:Z

    if-eqz v0, :cond_17

    .line 6681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xa;->A0E(Ljava/lang/String;)V

    .line 6682
    :cond_17
    return-void
.end method

.method public final A1z(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A0F(Ljava/lang/String;)V

    .line 6684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_30

    .line 6685
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1i()J

    move-result-wide v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v4, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "d"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-virtual {v5, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/Xa;->A0J(Lcom/facebook/ads/redexgen/X/VC;J)Z

    .line 6686
    :cond_30
    return-void
.end method

.method public final A20()Z
    .registers 6

    .line 6687
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0a:Z

    if-eqz v0, :cond_13

    .line 6688
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0Q:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x1f4

    cmp-long v0, v3, v1

    if-gez v0, :cond_13

    const/4 v0, 0x1

    .line 6689
    :goto_12
    return v0

    .line 6690
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final A22()Z
    .registers 2

    .line 6691
    const/4 v0, 0x1

    return v0
.end method

.method public final A23(JJLcom/facebook/ads/redexgen/X/Sn;Ljava/nio/ByteBuffer;IIJZZ)Z
    .registers 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6692
    move-wide/from16 v2, p9

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0I()V

    .line 6693
    iget-wide v4, v8, Lcom/facebook/ads/redexgen/X/3X;->A0L:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    move-wide/from16 v4, p1

    if-nez v0, :cond_16

    .line 6694
    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/3X;->A0L:J

    .line 6695
    :cond_16
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/3X;->A0N:J

    sget-object v10, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v9, v10, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v9, 0xa

    if-eq v10, v9, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v11, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v10, "T"

    const/4 v9, 0x4

    aput-object v10, v11, v9

    cmp-long v9, v2, v0

    if-eqz v9, :cond_45

    .line 6696
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-nez v0, :cond_43

    .line 6697
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/3X;->A0r:Lcom/facebook/ads/redexgen/X/Xt;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Xt;->A0G(J)V

    .line 6698
    :cond_43
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/3X;->A0N:J

    .line 6699
    :cond_45
    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0R:J

    sub-long v0, v2, v9

    .line 6700
    .local v2, "presentationTimeUs":J
    const/4 v9, 0x1

    move-object/from16 v14, p5

    move/from16 v13, p7

    if-eqz p11, :cond_56

    .line 6701
    invoke-direct {v8, v14, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0Z(Lcom/facebook/ads/redexgen/X/Sn;IJ)V

    .line 6702
    iput-wide v6, v8, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6703
    return v9

    .line 6704
    :cond_56
    sub-long v6, v2, v4

    .line 6705
    .local v4, "earlyUs":J
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    sget-object v12, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v11, v12, v9

    const/4 v9, 0x0

    aget-object v12, v12, v9

    const/16 v9, 0x1e

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v11, v9, :cond_86

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    const/16 v17, 0x0

    if-ne v10, v9, :cond_95

    .line 6706
    :goto_74
    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/3X;->A0k(J)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 6707
    invoke-direct {v8, v14, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0Z(Lcom/facebook/ads/redexgen/X/Sn;IJ)V

    .line 6708
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6709
    const/4 v0, 0x1

    return v0

    :cond_86
    sget-object v12, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v11, "aXi14aOnggGvzxvmnKcC9iYpFhdSgDjX"

    const/4 v9, 0x1

    aput-object v11, v12, v9

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    const/16 v17, 0x0

    if-ne v10, v9, :cond_95

    goto :goto_74

    .line 6710
    :cond_94
    return v17

    .line 6711
    :cond_95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    .line 6712
    .local v16, "elapsedRealtimeNowUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/97;->A9n()I

    move-result v10

    const/4 v9, 0x2

    if-ne v10, v9, :cond_d9

    const/4 v15, 0x1

    .line 6713
    .local v23, "isStarted":Z
    :goto_a5
    iget-boolean v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    move/from16 v22, p12

    if-eqz v9, :cond_d1

    if-eqz v15, :cond_12d

    .end local v2    # "presentationTimeUs":J
    .local v24, "presentationTimeUs":J
    iget-wide v11, v8, Lcom/facebook/ads/redexgen/X/3X;->A0P:J

    sub-long v9, v18, v11

    .line 6714
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/3X;->A0p(JJ)Z

    move-result v9

    if-eqz v9, :cond_12d

    const/16 v5, 0x15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6715
    .end local v2
    .restart local v10
    :goto_be
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 6716
    .local v1, "notifyFrameMetaDataListener":Z
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    move/from16 v2, v22

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Xa;->A0K(Lcom/facebook/ads/redexgen/X/VC;JZ)Z

    const/4 v0, 0x0

    throw v0

    .line 6717
    .end local v10
    .local v2, "presentationTimeUs":J
    :cond_d1
    const/16 v5, 0x15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_be

    .line 6718
    :cond_d9
    const/4 v15, 0x0

    goto :goto_a5

    .line 6719
    .end local v1    # "notifyFrameMetaDataListener":Z
    :cond_db
    const/16 v25, 0x1

    .line 6720
    .local v19, "notifyFrameMetaDataListener":Z
    sget v4, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    if-lt v4, v5, :cond_11d

    .line 6721
    :try_start_e1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_e4
    .catch Ljava/lang/IllegalStateException; {:try_start_e1 .. :try_end_e4} :catch_114

    move-result-wide v23

    .line 6722
    move-object/from16 v18, p0

    .end local v4    # "earlyUs":J
    .local v24, "earlyUs":J
    sget-object v6, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v5, v6, v4

    const/4 v4, 0x0

    aget-object v6, v6, v4

    const/16 v4, 0x1e

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_101

    .line 6723
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6724
    :cond_101
    sget-object v6, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v5, "2QHTOj8kvcmWgIhhns8Rajex54zoF"

    const/4 v4, 0x7

    aput-object v5, v6, v4

    :try_start_108
    move-wide/from16 v21, v0

    move-object/from16 v19, v14

    move/from16 v20, v13

    invoke-direct/range {v18 .. v25}, Lcom/facebook/ads/redexgen/X/3X;->A0b(Lcom/facebook/ads/redexgen/X/Sn;IJJZ)V

    goto :goto_120
    :try_end_112
    .catch Ljava/lang/IllegalStateException; {:try_start_108 .. :try_end_112} :catch_112

    .line 6725
    :catch_112
    move-exception v1

    goto :goto_115

    .end local v24    # "earlyUs":J
    .restart local v4    # "earlyUs":J
    :catch_114
    move-exception v1

    .line 6726
    .end local v4    # "earlyUs":J
    .restart local v0
    .restart local v24    # "earlyUs":J
    :goto_115
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0g()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 6727
    return v17

    .line 6728
    :cond_11c
    throw v1

    .line 6729
    .end local v4
    .restart local v24    # "earlyUs":J
    :cond_11d
    :try_start_11d
    invoke-direct {v8, v14, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0X(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    :try_end_120
    .catch Ljava/lang/IllegalStateException; {:try_start_11d .. :try_end_120} :catch_124

    .line 6730
    :goto_120
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6731
    const/4 v0, 0x1

    return v0

    .line 6732
    :catch_124
    move-exception v1

    .line 6733
    .restart local v0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0g()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 6734
    return v17

    .line 6735
    :cond_12c
    throw v1

    .line 6736
    .end local v2    # "presentationTimeUs":J
    .restart local v24    # "earlyUs":J
    :cond_12d
    if-eqz v15, :cond_135

    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0L:J

    cmp-long v11, v4, v9

    if-nez v11, :cond_136

    .line 6737
    .end local v24    # "earlyUs":J
    .restart local v10
    :cond_135
    return v17

    .line 6738
    :cond_136
    move-wide/from16 v9, p3

    sub-long v18, v18, v9

    .line 6739
    .local v26, "elapsedSinceStartOfLoopUs":J
    sub-long v6, v6, v18

    .line 6740
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 6741
    .local v28, "systemTimeNs":J
    mul-long v15, v6, v20

    add-long v11, v18, v15

    .line 6742
    .local v2, "unadjustedFrameReleaseTimeNs":J
    iget-object v15, v8, Lcom/facebook/ads/redexgen/X/3X;->A0s:Lcom/facebook/ads/redexgen/X/Xw;

    .line 6743
    invoke-virtual {v15, v2, v3, v11, v12}, Lcom/facebook/ads/redexgen/X/Xw;->A07(JJ)J

    move-result-wide v23

    .line 6744
    .local v30, "adjustedReleaseTimeNs":J
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v11

    if-nez v11, :cond_156

    .line 6745
    sub-long v6, v23, v18

    div-long v6, v6, v20

    .line 6746
    :cond_156
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/3X;->A0n(JJ)Z

    move-result v11

    if-eqz v11, :cond_1a5

    .line 6747
    const/16 v11, 0x15

    sget-object v16, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v15, v16, v12

    const/4 v12, 0x6

    aget-object v12, v16, v12

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v15, v12, :cond_188

    sget-object v16, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v15, "JeMrXkiwyf"

    const/4 v12, 0x5

    aput-object v15, v16, v12

    move-object/from16 v25, p0

    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local p0, "presentationTimeUs":J
    move-object/from16 v26, v14

    move/from16 v27, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    invoke-direct/range {v25 .. v31}, Lcom/facebook/ads/redexgen/X/3X;->A0q(Lcom/facebook/ads/redexgen/X/Sn;IJJ)Z

    move-result v12

    if-eqz v12, :cond_1a7

    .line 6748
    :goto_187
    return v17

    :cond_188
    sget-object v16, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v15, "hdhMaNTNQgTUm79ORkLI0Fzd0F91yHSb"

    const/4 v12, 0x3

    aput-object v15, v16, v12

    const-string v15, "A2R9MOy7HoGmmJRsJSNpUmOhRjd7gqSj"

    const/4 v12, 0x0

    aput-object v15, v16, v12

    move-object/from16 v25, p0

    .end local v2
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local p0, "presentationTimeUs":J
    move-object/from16 v26, v14

    move/from16 v27, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    invoke-direct/range {v25 .. v31}, Lcom/facebook/ads/redexgen/X/3X;->A0q(Lcom/facebook/ads/redexgen/X/Sn;IJJ)Z

    move-result v12

    if-eqz v12, :cond_1a7

    goto :goto_187

    .line 6749
    .end local v10    # "earlyUs":J
    .end local p0    # "presentationTimeUs":J
    .restart local v2    # "unadjustedFrameReleaseTimeNs":J
    .restart local v4    # "earlyUs":J
    .local v24, "presentationTimeUs":J
    :cond_1a5
    const/16 v11, 0x15

    .line 6750
    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .end local v4    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .restart local p0    # "presentationTimeUs":J
    :cond_1a7
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/3X;->A0o(JJ)Z

    move-result v12

    if-eqz v12, :cond_1d3

    .line 6751
    .end local p0    # "presentationTimeUs":J
    .local v5, "presentationTimeUs":J
    invoke-direct {v8, v14, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0W(Lcom/facebook/ads/redexgen/X/Sn;IJ)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1ca

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6752
    :cond_1ca
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "fbU2VrE98PnDfYcDvsLqqJdsNJDNnw7d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    .line 6753
    .end local v5    # "presentationTimeUs":J
    .restart local p0    # "presentationTimeUs":J
    .end local p0    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    :cond_1d3
    iget-object v12, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v12

    if-eqz v12, :cond_1eb

    .line 6754
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    .end local v10    # "earlyUs":J
    .local v21, "earlyUs":J
    invoke-virtual {v2, v4, v5, v9, v10}, Lcom/facebook/ads/redexgen/X/Xa;->A0B(JJ)V

    .line 6755
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    move/from16 v2, v22

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Xa;->A0K(Lcom/facebook/ads/redexgen/X/VC;JZ)Z

    const/4 v0, 0x0

    throw v0

    .line 6756
    .end local v21    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .end local v5    # "presentationTimeUs":J
    .end local v10    # "earlyUs":J
    .restart local v21    # "earlyUs":J
    .restart local p0    # "presentationTimeUs":J
    :cond_1eb
    sget v9, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    if-lt v9, v11, :cond_213

    .line 6757
    const-wide/32 v10, 0xc350

    cmp-long v9, v6, v10

    if-gez v9, :cond_25d

    .line 6758
    move-object/from16 v18, p0

    :try_start_1f8
    move-wide/from16 v21, v0

    move-object/from16 v19, v14

    move/from16 v20, v13

    invoke-direct/range {v18 .. v24}, Lcom/facebook/ads/redexgen/X/3X;->A0a(Lcom/facebook/ads/redexgen/X/Sn;IJJ)V
    :try_end_201
    .catch Ljava/lang/IllegalStateException; {:try_start_1f8 .. :try_end_201} :catch_20a

    .line 6759
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6760
    const/4 v0, 0x1

    return v0

    .line 6761
    :catch_20a
    move-exception v1

    .line 6762
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0g()Z

    move-result v0

    if-eqz v0, :cond_212

    .line 6763
    return v17

    .line 6764
    :cond_212
    throw v1

    .line 6765
    :cond_213
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v15, 0x7530

    cmp-long v11, v6, v15

    if-gez v11, :cond_25d

    .line 6766
    const-wide/16 v3, 0x2af8

    cmp-long v2, v6, v3

    if-lez v2, :cond_24d

    .line 6767
    const-wide/16 v11, 0x2710

    sget-object v3, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x35

    if-eq v3, v2, :cond_23e

    sget-object v4, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v3, "KF7ZC8HIwZ"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    sub-long/2addr v6, v11

    goto :goto_23f

    :cond_23e
    sub-long/2addr v6, v11

    :goto_23f
    :try_start_23f
    div-long v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_24d
    :try_end_245
    .catch Ljava/lang/InterruptedException; {:try_start_23f .. :try_end_245} :catch_245

    .line 6768
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6769
    return v17

    .line 6770
    .end local p0    # "presentationTimeUs":J
    .local v4, "presentationTimeUs":J
    :cond_24d
    :goto_24d
    :try_start_24d
    invoke-direct {v8, v14, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/3X;->A0X(Lcom/facebook/ads/redexgen/X/Sn;IJ)V
    :try_end_250
    .catch Ljava/lang/IllegalStateException; {:try_start_24d .. :try_end_250} :catch_254

    .line 6771
    iput-wide v9, v8, Lcom/facebook/ads/redexgen/X/3X;->A0K:J

    .line 6772
    const/4 v0, 0x1

    return v0

    .line 6773
    :catch_254
    move-exception v1

    .line 6774
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3X;->A0g()Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 6775
    return v17

    .line 6776
    :cond_25c
    throw v1

    .line 6777
    .end local p0
    .restart local v4    # "presentationTimeUs":J
    :cond_25d
    sub-long/2addr v2, v4

    .line 6778
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_275

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4H;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    .line 6779
    :goto_26c
    move-object/from16 v6, p0

    .end local v4    # "presentationTimeUs":J
    .local v10, "presentationTimeUs":J
    move-wide v7, v4

    move-wide v9, v2

    move v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/3X;->A0R(JJF)V

    .line 6780
    return v17

    .line 6781
    :cond_275
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_26c
.end method

.method public final A25(Lcom/facebook/ads/redexgen/X/Sq;)Z
    .registers 3

    .line 6782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0Z:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6783
    :cond_10
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A0r(Lcom/facebook/ads/redexgen/X/Sq;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 6784
    :goto_17
    return v0

    .line 6785
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final A26(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 6786
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 6787
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 6788
    :cond_f
    iget v1, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x7

    if-ne v1, v0, :cond_26

    .line 6789
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A0A()Lcom/facebook/ads/redexgen/X/KP;

    move-result-object v1

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KP;->A02(I)Lcom/facebook/ads/redexgen/X/KP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KP;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    .line 6790
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 6791
    :cond_26
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A27()V
    .registers 3

    .line 6792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0j:Z

    .line 6793
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    if-nez v0, :cond_10

    .line 6794
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    .line 6795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0t:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0D(Ljava/lang/Object;)V

    .line 6796
    :cond_10
    return-void
.end method

.method public final A28(JJZ)Z
    .registers 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 6797
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p5, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final AAM(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6798
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 6799
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0U(Landroid/view/Surface;)V

    .line 6800
    :cond_8
    :goto_8
    return-void

    .line 6801
    :cond_9
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_d1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "KREeACCHTlwu8ddK1Kzfi9bw16JB4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_59

    .line 6802
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0H:I

    .line 6803
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v4

    .line 6804
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/Sn;
    if-eqz v4, :cond_8

    .line 6805
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0H:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_49

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "e"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Sn;->ALA(I)V

    goto :goto_8

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "xLrHRLKUW8a95n8rXuXAT7tESNXoYGSR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "zAWpFMEQW92aWBE2ysjWHFELYOwHv3Sb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Sn;->ALA(I)V

    goto :goto_8

    .line 6806
    :cond_59
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7a

    .line 6807
    check-cast p2, Lcom/facebook/ads/redexgen/X/Xo;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_70

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_70
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "K"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0X:Lcom/facebook/ads/redexgen/X/Xo;

    goto :goto_8

    .line 6808
    :cond_7a
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_82

    .line 6809
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3X;->A0f(Ljava/lang/Object;)V

    goto :goto_8

    .line 6810
    :cond_82
    const/16 v0, 0xd

    if-ne p1, v0, :cond_93

    .line 6811
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6812
    .local v0, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xa;->A0F(Ljava/util/List;)V

    .line 6813
    .end local v0    # "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    goto/16 :goto_8

    :cond_93
    const/16 v0, 0xe

    if-ne p1, v0, :cond_cc

    .line 6814
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Mo;

    .line 6815
    .local v0, "outputResolution":Lcom/facebook/ads/redexgen/X/Mo;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mo;->A03()I

    move-result v0

    if-eqz v0, :cond_8

    .line 6816
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mo;->A02()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_d1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "sATdPNQKTcJQDi0O9zGASS7KEwnur9li"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    if-eqz v0, :cond_8

    .line 6817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Xa;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/Mo;)V

    goto/16 :goto_8

    .line 6818
    :cond_cc
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/97;->AAM(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_d1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AB7()Z
    .registers 3

    .line 6819
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->AB7()Z

    move-result v1

    .line 6820
    .local v0, "isEnded":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0I()Z

    move-result v0

    and-int/2addr v1, v0

    .line 6822
    :cond_13
    return v1
.end method

.method public final ABM()Z
    .registers 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
    .end annotation

    .line 6823
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->ABM()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    if-nez v0, :cond_38

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "B06qONTXcfa5EVD8D5PDXAL8fBLPP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_38

    .line 6824
    :cond_2a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    if-nez v0, :cond_38

    .line 6825
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xz;->A08:Lcom/facebook/ads/redexgen/X/Xz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0B:Lcom/facebook/ads/redexgen/X/Xz;

    .line 6826
    :cond_38
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/4H;->ABM()Z

    move-result v0

    const/4 v8, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    .line 6827
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0H()Z

    move-result v0

    if-eqz v0, :cond_af

    :cond_54
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0h:Z

    if-eqz v0, :cond_76

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6d

    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6d
    sget-object v4, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "v"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eqz v5, :cond_af

    :cond_76
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0i:Z

    if-nez v0, :cond_a9

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_ac

    sget-object v4, Lcom/facebook/ads/redexgen/X/3X;->A11:[Ljava/lang/String;

    const-string v1, "7RbqHGJzwVZCwqLB37kuqdrRw0UUy7Sa"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "wGqa3WBPHRZIm8XzyHsbalyq4C9m6DSG"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v5, :cond_9f

    :goto_99
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_a9

    .line 6828
    :cond_9f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A1j()Lcom/facebook/ads/redexgen/X/Sn;

    move-result-object v0

    if-eqz v0, :cond_a9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0k:Z

    if-eqz v0, :cond_af

    .line 6829
    :cond_a9
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    .line 6830
    return v8

    :cond_ac
    if-eqz v5, :cond_9f

    goto :goto_99

    .line 6831
    :cond_af
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    const/4 v1, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_b7

    .line 6832
    return v1

    .line 6833
    :cond_b7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_c2

    .line 6834
    return v8

    .line 6835
    :cond_c2
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0M:J

    .line 6836
    return v1
.end method

.method public final AJo(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/96;
        }
    .end annotation

    .line 6837
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4H;->AJo(JJ)V

    .line 6838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0G()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0q:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Xa;->A0B(JJ)V

    .line 6840
    :cond_10
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 4

    .line 6841
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
