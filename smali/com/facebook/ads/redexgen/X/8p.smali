###### Class com.facebook.ads.redexgen.X.C8p (com.facebook.ads.redexgen.X.8p)
.class public final Lcom/facebook/ads/redexgen/X/8p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rl;
.implements Lcom/facebook/ads/redexgen/X/Yw;
.implements Lcom/facebook/ads/redexgen/X/X4;
.implements Lcom/facebook/ads/redexgen/X/X8;
.implements Lcom/facebook/ads/redexgen/X/VB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/V6;,
        Lcom/facebook/ads/redexgen/X/V4;,
        Lcom/facebook/ads/redexgen/X/V5;,
        Lcom/facebook/ads/redexgen/X/Ri;,
        Lcom/facebook/ads/redexgen/X/Rj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Rl;",
        "Lcom/facebook/ads/redexgen/X/Yw;",
        "Lcom/facebook/ads/redexgen/X/X4<",
        "Lcom/facebook/ads/redexgen/X/Rj;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/X8;",
        "Lcom/facebook/ads/redexgen/X/VB;"
    }
.end annotation


# static fields
.field public static A0e:[B

.field public static A0f:[Ljava/lang/String;

.field public static final A0g:Lcom/facebook/ads/redexgen/X/VC;

.field public static final A0h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/Rm;

.field public A07:Lcom/facebook/ads/redexgen/X/V6;

.field public A08:Lcom/facebook/ads/redexgen/X/ZK;

.field public A09:Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:[Lcom/facebook/ads/redexgen/X/V5;

.field public A0L:[Lcom/facebook/ads/redexgen/X/Rb;

.field public final A0M:J

.field public final A0N:Landroid/net/Uri;

.field public final A0O:Landroid/os/Handler;

.field public final A0P:Lcom/facebook/ads/redexgen/X/Lx;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/TE;

.field public final A0R:Lcom/facebook/ads/redexgen/X/Rp;

.field public final A0S:Lcom/facebook/ads/redexgen/X/Ru;

.field public final A0T:Lcom/facebook/ads/redexgen/X/Uu;

.field public final A0U:Lcom/facebook/ads/redexgen/X/Uz;

.field public final A0V:Lcom/facebook/ads/redexgen/X/V4;

.field public final A0W:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0X:Lcom/facebook/ads/redexgen/X/X1;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Ql;

.field public final A0Z:Ljava/lang/Runnable;

.field public final A0a:Ljava/lang/Runnable;

.field public final A0b:Ljava/lang/String;

.field public final A0c:Z

.field public final A0d:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 367
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HBBlPsqGeET7DuTBobJ6q6d8HMPjbTur"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tVXkzOcWE4KqEP8GR5IDvdJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WunBoZwErb3KjhbC4DTXDk0N"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X40TLSCiBs9RpCHiwR3jRJe9ZBCWaXj3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NJegO1Vjlbxq2kODAs2GUONQL6B8lk2C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J0BgCPOewip9mZAwvZWu1UFJiSfKLrdz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eCXZHu2If1eHwalkwZlLOwEkK0SadJt4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QP9wMapQKpVcF6hMAqhiAWSjk3a4jcrM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8p;->A0I()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8p;->A0D()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8p;->A0h:Ljava/util/Map;

    .line 368
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ke;-><init>()V

    .line 369
    const/16 v2, 0xa1

    const/4 v1, 0x3

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v3

    const/16 v2, 0x90

    const/16 v1, 0x11

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A14()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8p;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    .line 370
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Uz;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/X1;Lcom/facebook/ads/redexgen/X/Uu;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/XN;)V
    .registers 16

    .line 25265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0N:Landroid/net/Uri;

    .line 25267
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Q:Lcom/facebook/ads/redexgen/X/TE;

    .line 25268
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/8p;->A0S:Lcom/facebook/ads/redexgen/X/Ru;

    .line 25269
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/8p;->A0R:Lcom/facebook/ads/redexgen/X/Rp;

    .line 25270
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/8p;->A0X:Lcom/facebook/ads/redexgen/X/X1;

    .line 25271
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    .line 25272
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/8p;->A0V:Lcom/facebook/ads/redexgen/X/V4;

    .line 25273
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/8p;->A0W:Lcom/facebook/ads/redexgen/X/Wm;

    .line 25274
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/8p;->A0b:Ljava/lang/String;

    .line 25275
    int-to-long v0, p11

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0M:J

    .line 25276
    if-eqz p12, :cond_6f

    .line 25277
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ql;

    invoke-direct {v1, p12}, Lcom/facebook/ads/redexgen/X/Ql;-><init>(Lcom/facebook/ads/redexgen/X/XN;)V

    .line 25278
    :goto_1f
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    .line 25279
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0U:Lcom/facebook/ads/redexgen/X/Uz;

    .line 25280
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0P:Lcom/facebook/ads/redexgen/X/Lx;

    .line 25281
    new-instance v0, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Z:Ljava/lang/Runnable;

    .line 25282
    new-instance v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/V3;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0a:Ljava/lang/Runnable;

    .line 25283
    invoke-static {}, Lcom/facebook/ads/redexgen/X/N1;->A0Y()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    .line 25284
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/V5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0K:[Lcom/facebook/ads/redexgen/X/V5;

    .line 25285
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/Rb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    .line 25286
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25287
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25288
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:I

    .line 25289
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A0o:Lcom/facebook/ads/redexgen/X/XQ;

    .line 25290
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A2M:Lcom/facebook/ads/redexgen/X/XQ;

    .line 25291
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_63
    const/4 v2, 0x1

    :cond_64
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0d:Z

    .line 25292
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A0q:Lcom/facebook/ads/redexgen/X/XQ;

    .line 25293
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0c:Z

    .line 25294
    return-void

    .line 25295
    :cond_6f
    const/16 v2, 0xd

    const/16 v1, 0x1d

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ql;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ql;-><init>(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private A00()I
    .registers 9

    .line 25296
    const/4 v7, 0x0

    .line 25297
    .local v0, "extractedSamplesCount":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_37

    aget-object v0, v5, v3

    .line 25298
    .local v4, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0P()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "I2xpzyGM5ATgcN45iQDZCvu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "yexe01l01fJGTtt57Z6g4PKS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/2addr v7, v6

    .line 25299
    .end local v4    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25300
    :cond_37
    return v7
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8p;)J
    .registers 2

    .line 25301
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0M:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8p;Z)J
    .registers 2

    .line 25302
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A03(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private A03(Z)J
    .registers 9

    .line 25303
    const-wide/high16 v1, -0x8000000000000000L

    .line 25304
    .local v0, "largestQueuedTimestampUs":J
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v0, v0

    if-ge v5, v0, :cond_4d

    .line 25305
    if-nez p1, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/V6;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/V6;->A01:[Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v3, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v3, "2TCzKTUAeKHOFhOgA84o9m2gDHHw0blQ"

    const/4 v0, 0x7

    aput-object v3, v4, v0

    const-string v3, "J2VIIiQ12N46iucbAIsllz4rrLWVfcOQ"

    const/4 v0, 0x4

    aput-object v3, v4, v0

    aget-boolean v0, v6, v5

    if-eqz v0, :cond_4a

    .line 25306
    :cond_3e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v5

    .line 25307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0T()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 25308
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 25309
    .end local v2    # "i":I
    :cond_4d
    return-wide v1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8p;)Landroid/os/Handler;
    .registers 1

    .line 25310
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05()Lcom/facebook/ads/redexgen/X/VC;
    .registers 1

    .line 25311
    sget-object v0, Lcom/facebook/ads/redexgen/X/8p;->A0g:Lcom/facebook/ads/redexgen/X/VC;

    return-object v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/V5;)Lcom/facebook/ads/redexgen/X/Rb;
    .registers 6

    .line 25312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v3, v0

    .line 25313
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_18

    .line 25314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0K:[Lcom/facebook/ads/redexgen/X/V5;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/V5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 25315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v1

    return-object v0

    .line 25316
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 25317
    .end local v1    # "i":I
    :cond_18
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0W:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0S:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0R:Lcom/facebook/ads/redexgen/X/Rp;

    .line 25318
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0B(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/Rb;

    move-result-object v2

    .line 25319
    .local v1, "trackOutput":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/Rb;->A0d(Lcom/facebook/ads/redexgen/X/VB;)V

    .line 25320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0K:[Lcom/facebook/ads/redexgen/X/V5;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/V5;

    .line 25321
    .local v2, "sampleQueueTrackIds":[Lcom/facebook/ads/redexgen/X/V5;
    aput-object p1, v0, v3

    .line 25322
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A1H([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/V5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0K:[Lcom/facebook/ads/redexgen/X/V5;

    .line 25323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Rb;

    .line 25324
    .local v3, "sampleQueues":[Lcom/facebook/ads/redexgen/X/Rb;
    aput-object v2, v0, v3

    .line 25325
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A1H([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Rb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    .line 25326
    return-object v2
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/Rj;JJLjava/io/IOException;I)Lcom/facebook/ads/redexgen/X/X5;
    .registers 29

    .line 25327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A03(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/99;

    move-result-object v2

    .line 25328
    .local v1, "dataSource":Lcom/facebook/ads/redexgen/X/99;
    new-instance v9, Lcom/facebook/ads/redexgen/X/Uc;

    .line 25329
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v10

    .line 25330
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v12

    .line 25331
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A01()Landroid/net/Uri;

    move-result-object v13

    .line 25332
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A02()Ljava/util/Map;

    move-result-object v14

    .line 25333
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A00()J

    move-result-wide v19

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v9 .. v20}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 25334
    .local v2, "loadEventInfo":Lcom/facebook/ads/redexgen/X/Uc;
    new-instance v10, Lcom/facebook/ads/redexgen/X/Ue;

    .line 25335
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/N1;->A0P(J)J

    move-result-wide v16

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25336
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/N1;->A0P(J)J

    move-result-wide v18

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/facebook/ads/redexgen/X/Ue;-><init>(IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJ)V

    .line 25337
    .local v3, "mediaLoadData":Lcom/facebook/ads/redexgen/X/Ue;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/8p;->A0X:Lcom/facebook/ads/redexgen/X/X1;

    new-instance v3, Lcom/facebook/ads/redexgen/X/X0;

    move-object/from16 v2, p6

    move/from16 v5, p7

    invoke-direct {v3, v9, v10, v2, v5}, Lcom/facebook/ads/redexgen/X/X0;-><init>(Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;Ljava/io/IOException;I)V

    .line 25338
    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/X1;->A9X(Lcom/facebook/ads/redexgen/X/X0;)J

    move-result-wide v3

    .line 25339
    .local v4, "retryDelayMs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    cmp-long v5, v3, v6

    if-nez v5, :cond_73

    .line 25340
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ql;->A06:Lcom/facebook/ads/redexgen/X/X5;

    .line 25341
    .local v8, "loadErrorAction":Lcom/facebook/ads/redexgen/X/X5;
    .end local v9
    .local v8, "loadErrorAction":Lcom/facebook/ads/redexgen/X/X5;
    :goto_58
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/X5;->A02()Z

    move-result v20

    xor-int v20, v20, v8

    .line 25342
    .local v9, "wasCanceled":Z
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    .line 25343
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v15

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25344
    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v8 .. v20}, Lcom/facebook/ads/redexgen/X/Uu;->A07(Lcom/facebook/ads/redexgen/X/Uc;IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 25345
    return-object v3

    .line 25346
    .end local v8    # "loadErrorAction":Lcom/facebook/ads/redexgen/X/X5;
    :cond_73
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8p;->A00()I

    move-result v7

    .line 25347
    .local v8, "extractedSamplesCount":I
    iget v5, v0, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    if-le v7, v5, :cond_87

    const/4 v6, 0x1

    .line 25348
    .local v9, "madeProgress":Z
    :goto_7c
    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8p;->A0U(Lcom/facebook/ads/redexgen/X/Rj;I)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 25349
    invoke-static {v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Ql;->A01(ZJ)Lcom/facebook/ads/redexgen/X/X5;

    move-result-object v3

    goto :goto_58

    .line 25350
    :cond_87
    const/4 v6, 0x0

    goto :goto_7c

    .line 25351
    :cond_89
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ql;->A05:Lcom/facebook/ads/redexgen/X/X5;

    goto :goto_58
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    .registers 1

    .line 25352
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A09:Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    .registers 2

    .line 25353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A09:Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/8p;)Ljava/lang/Runnable;
    .registers 1

    .line 25354
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8p;->A0e:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x75

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/8p;)Ljava/lang/String;
    .registers 1

    .line 25355
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method public static A0D()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25356
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 25357
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25358
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private A0E()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
    .end annotation

    .line 25359
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25362
    return-void
.end method

.method private A0F()V
    .registers 14

    .line 25363
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0H:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0I:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    if-nez v0, :cond_11

    .line 25364
    .end local v0
    .end local v1
    .end local v3
    :cond_10
    return-void

    .line 25365
    :cond_11
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v2, v3

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_24

    aget-object v0, v3, v1

    .line 25366
    .local v4, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0U()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    if-nez v0, :cond_21

    .line 25367
    return-void

    .line 25368
    .end local v4    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 25369
    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0P:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A02()Z

    .line 25370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v11, v0

    .line 25371
    .local v0, "trackCount":I
    new-array v10, v11, [Lcom/facebook/ads/redexgen/X/U8;

    .line 25372
    .local v1, "trackArray":[Lcom/facebook/ads/redexgen/X/U8;
    new-array v9, v11, [Z

    .line 25373
    .local v3, "trackIsAudioVideoFlags":[Z
    const/4 v8, 0x0

    .local v4, "i":I
    :goto_31
    const/4 v7, 0x1

    if-ge v8, v11, :cond_131

    .line 25374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0U()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/VC;

    .line 25375
    .local v6, "trackFormat":Lcom/facebook/ads/redexgen/X/VC;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 25376
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A0C(Ljava/lang/String;)Z

    move-result v4

    .line 25377
    .local v8, "isAudio":Z
    if-nez v4, :cond_76

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A0F(Ljava/lang/String;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_68

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_68
    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "M066YDshfLv6ufJQAWGX88NavjIJ8x9B"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "HaWf7X0PQXjbzLQzAxKXQlZfTLO5AEOj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_c4

    :cond_76
    const/4 v1, 0x1

    .line 25378
    .local v9, "isAudioVideo":Z
    :goto_77
    aput-boolean v1, v9, v8

    .line 25379
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0A:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0A:Z

    .line 25380
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/8p;->A09:Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 25381
    .local v10, "icyHeaders":Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    if-eqz v5, :cond_113

    .line 25382
    if-nez v4, :cond_8c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0K:[Lcom/facebook/ads/redexgen/X/V5;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/V5;->A01:Z

    if-eqz v0, :cond_d6

    .line 25383
    :cond_8c
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VC;->A0P:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 25384
    .local v11, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-nez v1, :cond_bb

    .line 25385
    new-array v0, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aput-object v5, v0, v12

    new-instance v1, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    .line 25386
    :goto_99
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/VC;->A07()Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25387
    :cond_bb
    new-array v0, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aput-object v5, v0, v12

    invoke-virtual {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A05([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_99

    .line 25388
    :cond_c4
    const/4 v1, 0x0

    goto :goto_77

    .line 25389
    :cond_c6
    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "JfZfQxpnzGxkEBWXWRh15UjnpMxSX4ct"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Ujr1Rfhr64M72xM04lFL5qNlGxVfDivT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ke;->A14()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v6

    .line 25390
    .end local v11    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_d6
    if-eqz v4, :cond_113

    iget v4, v6, Lcom/facebook/ads/redexgen/X/VC;->A04:I

    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_122

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "S5HkrDixvO2qPLOzoZhPnpRmabOR8jh2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GmH5epODxLL0wJPDoZ5VIE16ybOToPjR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_113

    :goto_fd
    iget v0, v6, Lcom/facebook/ads/redexgen/X/VC;->A0D:I

    if-ne v0, v3, :cond_113

    iget v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    if-eq v0, v3, :cond_113

    .line 25391
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/VC;->A07()Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A0a(I)Lcom/facebook/ads/redexgen/X/Ke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A14()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v6

    .line 25392
    :cond_113
    new-array v1, v7, [Lcom/facebook/ads/redexgen/X/VC;

    aput-object v6, v1, v12

    new-instance v0, Lcom/facebook/ads/redexgen/X/U8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/U8;-><init>([Lcom/facebook/ads/redexgen/X/VC;)V

    aput-object v0, v10, v8

    .line 25393
    .end local v6    # "trackFormat":Lcom/facebook/ads/redexgen/X/VC;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "isAudio":Z
    .end local v9    # "isAudioVideo":Z
    .end local v10    # "icyHeaders":Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_31

    :cond_122
    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "z5SJI6dYauK9PBTGAVRXoHkMUqqd9CQn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ZtcivA5qUhBeHeSNAavfvLUsZQCAevEK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_113

    goto :goto_fd

    .line 25394
    .end local v4    # "i":I
    :cond_131
    new-instance v1, Lcom/facebook/ads/redexgen/X/RY;

    invoke-direct {v1, v10}, Lcom/facebook/ads/redexgen/X/RY;-><init>([Lcom/facebook/ads/redexgen/X/U8;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/V6;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/V6;-><init>(Lcom/facebook/ads/redexgen/X/RY;[Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    .line 25395
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    .line 25396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Rm;->AGX(Lcom/facebook/ads/redexgen/X/Rl;)V

    .line 25397
    return-void
.end method

.method private A0G()V
    .registers 3

    .line 25398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25399
    return-void
.end method

.method private A0H()V
    .registers 17

    .line 25400
    move-object/from16 v1, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Rj;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/8p;->A0N:Landroid/net/Uri;

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/8p;->A0Q:Lcom/facebook/ads/redexgen/X/TE;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/8p;->A0U:Lcom/facebook/ads/redexgen/X/Uz;

    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/8p;->A0P:Lcom/facebook/ads/redexgen/X/Lx;

    move-object/from16 v10, p0

    move-object/from16 v14, p0

    invoke-direct/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/8p;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Uz;Lcom/facebook/ads/redexgen/X/Yw;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 25401
    .local v0, "loadable":Lcom/facebook/ads/redexgen/X/Rj;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-eqz v0, :cond_60

    .line 25402
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8p;->A0S()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25403
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v5

    if-eqz v0, :cond_37

    iget-wide v7, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    cmp-long v0, v7, v2

    if-ltz v0, :cond_37

    .line 25404
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    .line 25405
    iput-wide v5, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25406
    return-void

    .line 25407
    :cond_37
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    .line 25408
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ZK;

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/ZK;->A9e(J)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/ZL;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/ZL;->A00:J

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25409
    invoke-static {v9, v7, v8, v2, v3}, Lcom/facebook/ads/redexgen/X/Rj;->A05(Lcom/facebook/ads/redexgen/X/Rj;JJ)V

    .line 25410
    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v7, v8

    const/4 v4, 0x0

    :goto_52
    if-ge v4, v7, :cond_5e

    aget-object v0, v8, v4

    .line 25411
    .local v6, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Rb;->A0b(J)V

    .line 25412
    .end local v6    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 25413
    :cond_5e
    iput-wide v5, v1, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25414
    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8p;->A00()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    .line 25415
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A0X:Lcom/facebook/ads/redexgen/X/X1;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/8p;->A00:I

    .line 25416
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/X1;->A9C(I)I

    move-result v0

    .line 25417
    invoke-virtual {v3, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Ql;->A08(Lcom/facebook/ads/redexgen/X/X7;Lcom/facebook/ads/redexgen/X/X4;I)J

    move-result-wide v7

    .line 25418
    .local v1, "elapsedRealtimeMs":J
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v6

    .line 25419
    .local v3, "dataSpec":Lcom/facebook/ads/redexgen/X/NX;
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Uc;

    .line 25420
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v4

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;J)V

    .line 25421
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25422
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/Uu;->A06(Lcom/facebook/ads/redexgen/X/Uc;IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJI)V

    .line 25423
    return-void
.end method

.method public static A0I()V
    .registers 1

    const/16 v0, 0xa8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/8p;->A0e:[B

    return-void

    :array_a
    .array-data 1
        -0x43t
        0x1t
        0x1bt
        0x31t
        -0x1bt
        0x5t
        0x1dt
        0x2ct
        0x19t
        -0x4t
        0x19t
        0x2ct
        0x19t
        0x37t
        0x5at
        0x4ct
        0x4ft
        0x50t
        0x5dt
        0x25t
        0x3bt
        0x5dt
        0x5at
        0x52t
        0x5dt
        0x50t
        0x5et
        0x5et
        0x54t
        0x61t
        0x50t
        0x38t
        0x50t
        0x4ft
        0x54t
        0x4ct
        0x3bt
        0x50t
        0x5dt
        0x54t
        0x5at
        0x4ft
        0x37t
        0x5at
        0x4ct
        0x4ft
        0x54t
        0x59t
        0x52t
        0xbt
        0x51t
        0x54t
        0x59t
        0x54t
        0x5et
        0x53t
        0x50t
        0x4ft
        0xbt
        0x4dt
        0x50t
        0x51t
        0x5at
        0x5dt
        0x50t
        0xbt
        0x5bt
        0x5dt
        0x50t
        0x5bt
        0x4ct
        0x5dt
        0x4ct
        0x5ft
        0x54t
        0x5at
        0x59t
        0xbt
        0x54t
        0x5et
        0xbt
        0x4et
        0x5at
        0x58t
        0x5bt
        0x57t
        0x50t
        0x5ft
        0x50t
        0x19t
        0x2t
        0x25t
        0x17t
        0x1at
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x1ct
        0x1ft
        0x24t
        0x1ft
        0x29t
        0x1et
        0x1bt
        0x1at
        -0x2at
        0x18t
        0x1bt
        0x1ct
        0x25t
        0x28t
        0x1bt
        -0x2at
        0x26t
        0x28t
        0x1bt
        0x26t
        0x17t
        0x28t
        0x17t
        0x2at
        0x1ft
        0x25t
        0x24t
        -0x2at
        0x1ft
        0x29t
        -0x2at
        0x19t
        0x25t
        0x23t
        0x26t
        0x22t
        0x1bt
        0x2at
        0x1bt
        -0x1ct
        -0x2at
        0xbt
        0x8t
        -0x1t
        -0x10t
        -0x2at
        0x1at
        0x29t
        0x29t
        0x25t
        0x22t
        0x1ct
        0x1at
        0x2dt
        0x22t
        0x28t
        0x27t
        -0x18t
        0x31t
        -0x1at
        0x22t
        0x1ct
        0x32t
        0x27t
        0x21t
        0x37t
        0x58t
        0x5ft
        0x56t
        0x56t
    .end array-data
.end method

.method private final A0J()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25424
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0X:Lcom/facebook/ads/redexgen/X/X1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/X1;->A9C(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ql;->A0B(I)V

    .line 25425
    return-void
.end method

.method private A0K(I)V
    .registers 13

    .line 25426
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/V6;->A03:[Z

    .line 25428
    .local v0, "trackNotifiedDownstreamFormats":[Z
    aget-boolean v0, v3, p1

    if-nez v0, :cond_50

    .line 25429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/RY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RY;->A05(I)Lcom/facebook/ads/redexgen/X/U8;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A08(I)Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v6

    .line 25430
    .local v1, "trackFormat":Lcom/facebook/ads/redexgen/X/VC;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 25431
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A01(Ljava/lang/String;)I

    move-result v5

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    .line 25432
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Uu;->A03(ILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;J)V

    .line 25433
    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_42

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "f5eiRY8LvGf9norZAId7lLA2Bu57nAMs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ReM94Qk9jjdQJfe6Ak1PIPDJBC3IwAlL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput-boolean v4, v3, p1

    .line 25434
    .end local v1    # "trackFormat":Lcom/facebook/ads/redexgen/X/VC;
    :cond_50
    return-void
.end method

.method private A0L(I)V
    .registers 6

    .line 25435
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/V6;->A02:[Z

    .line 25437
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    if-eqz v0, :cond_1a

    aget-boolean v0, v1, p1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, p1

    .line 25438
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Rb;->A0g(Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 25439
    :cond_1a
    return-void

    .line 25440
    :cond_1b
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25441
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    .line 25442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    .line 25443
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    .line 25444
    iput v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    .line 25445
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v1, v2

    :goto_2b
    if-ge v3, v1, :cond_35

    aget-object v0, v2, v3

    .line 25446
    .local p0, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0Z()V

    .line 25447
    .end local p0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 25448
    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VI;->AEW(Lcom/facebook/ads/redexgen/X/VJ;)V

    .line 25449
    return-void
.end method

.method private final A0M(Lcom/facebook/ads/redexgen/X/Rj;JJ)V
    .registers 32

    .line 25450
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    cmp-long v2, v5, v3

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    if-eqz v2, :cond_2f

    .line 25451
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/ZK;->ABR()Z

    move-result v7

    .line 25452
    .local v1, "isSeekable":Z
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8p;->A03(Z)J

    move-result-wide v5

    .line 25453
    .local v2, "largestQueuedTimestampUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v2, v5, v3

    if-nez v2, :cond_72

    .line 25454
    const-wide/16 v2, 0x0

    .line 25455
    :goto_24
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25456
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/8p;->A0V:Lcom/facebook/ads/redexgen/X/V4;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A0C:Z

    invoke-interface {v5, v3, v4, v7, v2}, Lcom/facebook/ads/redexgen/X/V4;->AH7(JZZ)V

    .line 25457
    .end local v1    # "isSeekable":Z
    .end local v2    # "largestQueuedTimestampUs":J
    :cond_2f
    move-object/from16 v13, p1

    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/Rj;->A03(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/99;

    move-result-object v2

    .line 25458
    .local v1, "dataSource":Lcom/facebook/ads/redexgen/X/99;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Uc;

    .line 25459
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v15

    .line 25460
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v17

    .line 25461
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A01()Landroid/net/Uri;

    move-result-object v18

    .line 25462
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A02()Ljava/util/Map;

    move-result-object v19

    .line 25463
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/99;->A00()J

    move-result-wide v24

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object v14, v3

    invoke-direct/range {v14 .. v25}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 25464
    .local v7, "loadEventInfo":Lcom/facebook/ads/redexgen/X/Uc;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    .line 25465
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25466
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/Uu;->A08(Lcom/facebook/ads/redexgen/X/Uc;IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;)V

    .line 25467
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    .line 25468
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->AEW(Lcom/facebook/ads/redexgen/X/VJ;)V

    .line 25469
    return-void

    .line 25470
    :cond_72
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v5

    goto :goto_24
.end method

.method private final A0N(Lcom/facebook/ads/redexgen/X/Rj;JJI)V
    .registers 32

    .line 25471
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A03(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/99;

    move-result-object v1

    .line 25472
    .local v1, "dataSource":Lcom/facebook/ads/redexgen/X/99;
    move-wide/from16 v19, p2

    move/from16 v12, p6

    if-nez v12, :cond_2c

    .line 25473
    new-instance v2, Lcom/facebook/ads/redexgen/X/Uc;

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    move-wide/from16 v6, v19

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;J)V

    .line 25474
    .local v3, "loadEventInfo":Lcom/facebook/ads/redexgen/X/Uc;
    :goto_1b
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    .line 25475
    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25476
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/Uu;->A06(Lcom/facebook/ads/redexgen/X/Uc;IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJI)V

    .line 25477
    return-void

    .line 25478
    :cond_2c
    new-instance v2, Lcom/facebook/ads/redexgen/X/Uc;

    .line 25479
    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v14

    .line 25480
    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v16

    .line 25481
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A01()Landroid/net/Uri;

    move-result-object v17

    .line 25482
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A02()Ljava/util/Map;

    move-result-object v18

    .line 25483
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A00()J

    move-result-wide v23

    move-wide/from16 v21, p4

    move-object v13, v2

    invoke-direct/range {v13 .. v24}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    goto :goto_1b
.end method

.method private final A0O(Lcom/facebook/ads/redexgen/X/Rj;JJZ)V
    .registers 21

    .line 25484
    move-object v0, p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A03(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/99;

    move-result-object v1

    .line 25485
    .local v1, "dataSource":Lcom/facebook/ads/redexgen/X/99;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Uc;

    .line 25486
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A00(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v3

    .line 25487
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 25488
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A01()Landroid/net/Uri;

    move-result-object v6

    .line 25489
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A02()Ljava/util/Map;

    move-result-object v7

    .line 25490
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/99;->A00()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(JLcom/facebook/ads/redexgen/X/NX;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 25491
    .local v3, "loadEventInfo":Lcom/facebook/ads/redexgen/X/Uc;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8p;->A0T:Lcom/facebook/ads/redexgen/X/Uu;

    .line 25492
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A01(Lcom/facebook/ads/redexgen/X/Rj;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25493
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/Uu;->A05(Lcom/facebook/ads/redexgen/X/Uc;IILcom/facebook/ads/redexgen/X/VC;ILjava/lang/Object;JJ)V

    .line 25494
    if-nez p6, :cond_51

    .line 25495
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v3, :cond_42

    aget-object v1, v4, v2

    .line 25496
    .local v6, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rb;->A0Z()V

    .line 25497
    .end local v6    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 25498
    :cond_42
    iget v1, v0, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    if-lez v1, :cond_51

    .line 25499
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VI;->AEW(Lcom/facebook/ads/redexgen/X/VJ;)V

    .line 25500
    :cond_51
    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/8p;)V
    .registers 1

    .line 25501
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0G()V

    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/8p;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0F()V

    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/ZK;)V
    .registers 8

    .line 25502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    .line 25503
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ZK;->A8U()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    .line 25504
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0B:Z

    const/4 v5, 0x1

    if-nez v0, :cond_39

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ZK;->A8U()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_39

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0C:Z

    .line 25505
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0C:Z

    if-eqz v0, :cond_22

    const/4 v5, 0x7

    :cond_22
    iput v5, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:I

    .line 25506
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8p;->A0V:Lcom/facebook/ads/redexgen/X/V4;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ZK;->ABR()Z

    move-result v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0C:Z

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->AH7(JZZ)V

    .line 25507
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-nez v0, :cond_38

    .line 25508
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0F()V

    .line 25509
    :cond_38
    return-void

    .line 25510
    :cond_39
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private A0S()Z
    .registers 6

    .line 25511
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private A0T()Z
    .registers 2

    .line 25512
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0S()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/Rj;I)Z
    .registers 11

    .line 25513
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0B:Z

    const/4 v5, 0x1

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZK;->A8U()J

    move-result-wide v6

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v1, "0tcNevJ0lQlG1CoRhtU3cPBxWgg75o6o"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "W0PdVUXyxqqOuIKxgyczFibo5jq8qUfX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    cmp-long v0, v6, v3

    if-eqz v0, :cond_41

    .line 25514
    :cond_38
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    .line 25515
    return v5

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25516
    :cond_41
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0T()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 25517
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    .line 25518
    return v6

    .line 25519
    :cond_4f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    .line 25520
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    .line 25521
    iput v6, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    .line 25522
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v1, v4

    :goto_5c
    if-ge v6, v1, :cond_66

    aget-object v0, v4, v6

    .line 25523
    .local v6, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0Z()V

    .line 25524
    .end local v6    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    .line 25525
    :cond_66
    invoke-static {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/Rj;->A05(Lcom/facebook/ads/redexgen/X/Rj;JJ)V

    .line 25526
    return v5
.end method

.method private A0V([ZJ)Z
    .registers 8

    .line 25527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v3, v0

    .line 25528
    .local v0, "trackCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v2, v3, :cond_1d

    .line 25529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v2

    .line 25530
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/facebook/ads/redexgen/X/Rb;->A0f(JZ)Z

    move-result v0

    .line 25531
    .local p0, "seekInsideQueue":Z
    if-nez v0, :cond_1a

    aget-boolean v0, p1, v2

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0A:Z

    if-nez v0, :cond_1a

    .line 25532
    :cond_19
    return v1

    .line 25533
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    .end local p0    # "seekInsideQueue":Z
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 25534
    .end local v1    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/8p;)[Lcom/facebook/ads/redexgen/X/Rb;
    .registers 1

    .line 25535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    return-object p0
.end method


# virtual methods
.method public final A0X(IJ)I
    .registers 6

    .line 25536
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0T()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25537
    const/4 v0, 0x0

    return v0

    .line 25538
    :cond_8
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A0K(I)V

    .line 25539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v1, v0, p1

    .line 25540
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    invoke-virtual {v1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0Q(JZ)I

    move-result v0

    .line 25541
    .local v1, "skipCount":I
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0a(I)V

    .line 25542
    if-nez v0, :cond_1d

    .line 25543
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A0L(I)V

    .line 25544
    :cond_1d
    return v0
.end method

.method public final A0Y(ILcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/T2;I)I
    .registers 8

    .line 25545
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0T()Z

    move-result v0

    const/4 v2, -0x3

    if-eqz v0, :cond_8

    .line 25546
    return v2

    .line 25547
    :cond_8
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A0K(I)V

    .line 25548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v1, v0, p1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    .line 25549
    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0R(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/T2;IZ)I

    move-result v0

    .line 25550
    .local v0, "result":I
    if-ne v0, v2, :cond_1a

    .line 25551
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A0L(I)V

    .line 25552
    :cond_1a
    return v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/ZP;
    .registers 4

    .line 25553
    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/V5;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8p;->A06(Lcom/facebook/ads/redexgen/X/V5;)Lcom/facebook/ads/redexgen/X/Rb;

    move-result-object v0

    return-object v0
.end method

.method public final A0a()V
    .registers 5

    .line 25554
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-eqz v0, :cond_12

    .line 25555
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v0, v3, v1

    .line 25556
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0X()V

    .line 25557
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 25558
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Ql;->A0C(Lcom/facebook/ads/redexgen/X/X8;)V

    .line 25559
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25560
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    .line 25561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0H:Z

    .line 25562
    return-void
.end method

.method public final synthetic A0b()V
    .registers 2

    .line 25563
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0H:Z

    if-nez v0, :cond_f

    .line 25564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VI;->AEW(Lcom/facebook/ads/redexgen/X/VJ;)V

    .line 25565
    :cond_f
    return-void
.end method

.method public final synthetic A0c()V
    .registers 2

    .line 25566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0B:Z

    return-void
.end method

.method public final A0d(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0W()V

    .line 25568
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0J()V

    .line 25569
    return-void
.end method

.method public final synthetic A0e(Lcom/facebook/ads/redexgen/X/ZK;)V
    .registers 2

    .line 25570
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A0R(Lcom/facebook/ads/redexgen/X/ZK;)V

    return-void
.end method

.method public final A0f(I)Z
    .registers 4

    .line 25571
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0T()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v1, v0, p1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0g(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final A5O(J)V
    .registers 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 25572
    return-void
.end method

.method public final A5l(J)Z
    .registers 5

    .line 25573
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    .line 25574
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ql;->A0D()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    if-nez v0, :cond_1a

    .line 25575
    .end local v0
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 25576
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0P:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    move-result v1

    .line 25577
    .local v0, "continuedLoading":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ql;->A0E()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 25578
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0H()V

    .line 25579
    const/4 v1, 0x1

    .line 25580
    :cond_2c
    return v1
.end method

.method public final A6Z(JZ)V
    .registers 9

    .line 25581
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0S()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25583
    return-void

    .line 25584
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V6;->A01:[Z

    .line 25585
    .local v0, "trackEnabledStates":[Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v3, v0

    .line 25586
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v3, :cond_20

    .line 25587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v1, v0, v2

    aget-boolean v0, v4, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0c(JZZ)V

    .line 25588
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 25589
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method public final A6x()V
    .registers 3

    .line 25590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0I:Z

    .line 25591
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25592
    return-void
.end method

.method public final A7R(JLcom/facebook/ads/redexgen/X/Pj;)J
    .registers 12

    .line 25593
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZK;->ABR()Z

    move-result v0

    if-nez v0, :cond_e

    .line 25595
    const-wide/16 v0, 0x0

    return-wide v0

    .line 25596
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/ZK;->A9e(J)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v1

    .line 25597
    .local v0, "seekPoints":Lcom/facebook/ads/redexgen/X/ZJ;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/ZL;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/ZL;->A01:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/ZL;

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/ZL;->A01:J

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Pj;->A00(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7g(J)J
    .registers 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 25598
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0d:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-nez v0, :cond_b

    .line 25599
    const-wide/16 v0, 0x0

    return-wide v0

    .line 25600
    :cond_b
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    if-eqz v0, :cond_13

    .line 25601
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:J

    sub-long/2addr v0, p1

    return-wide v0

    .line 25602
    :cond_13
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8p;->A7i()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public final A7i()J
    .registers 9

    .line 25603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25604
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    const-wide/high16 v6, -0x8000000000000000L

    if-nez v0, :cond_d

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    if-nez v0, :cond_e

    .line 25605
    .end local v3
    :cond_d
    return-wide v6

    .line 25606
    :cond_e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0S()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 25607
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    return-wide v0

    .line 25608
    :cond_17
    const-wide v3, 0x7fffffffffffffffL

    .line 25609
    .local v3, "largestQueuedTimestampUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0A:Z

    if-eqz v0, :cond_4f

    .line 25610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v5, v0

    .line 25611
    .local v0, "trackCount":I
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v2, v5, :cond_4f

    .line 25612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V6;->A02:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V6;->A01:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v2

    .line 25613
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0e()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 25614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v0, v0, v2

    .line 25615
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0T()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 25616
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 25617
    .end local v0    # "trackCount":I
    .end local v5    # "i":I
    :cond_4f
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-nez v0, :cond_5d

    .line 25618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8p;->A03(Z)J

    move-result-wide v3

    .line 25619
    :cond_5d
    cmp-long v0, v3, v6

    if-nez v0, :cond_63

    .line 25620
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    .line 25621
    :cond_63
    return-wide v3
.end method

.method public final A9E()J
    .registers 3

    .line 25622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8p;->A7i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A9z()Lcom/facebook/ads/redexgen/X/RY;
    .registers 2

    .line 25623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/RY;

    return-object v0
.end method

.method public final ADJ()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25625
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0J()V

    .line 25626
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0G:Z

    if-nez v0, :cond_53

    .line 25627
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0c:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_44

    .line 25628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5a

    const/16 v1, 0x36

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0N:Landroid/net/Uri;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0N:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25630
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 25631
    :cond_3a
    const/16 v2, 0xa4

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 25632
    :cond_44
    const/16 v2, 0x2a

    const/16 v1, 0x30

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 25633
    :cond_53
    return-void
.end method

.method public final bridge synthetic AFf(Lcom/facebook/ads/redexgen/X/X7;JJZ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 25634
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/8p;->A0O(Lcom/facebook/ads/redexgen/X/Rj;JJZ)V

    return-void
.end method

.method public final bridge synthetic AFh(Lcom/facebook/ads/redexgen/X/X7;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 25635
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8p;->A0M(Lcom/facebook/ads/redexgen/X/Rj;JJ)V

    return-void
.end method

.method public final bridge synthetic AFi(Lcom/facebook/ads/redexgen/X/X7;JJLjava/io/IOException;I)Lcom/facebook/ads/redexgen/X/X5;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 25636
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/8p;->A07(Lcom/facebook/ads/redexgen/X/Rj;JJLjava/io/IOException;I)Lcom/facebook/ads/redexgen/X/X5;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AFl(Lcom/facebook/ads/redexgen/X/X7;JJI)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 25637
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/8p;->A0N(Lcom/facebook/ads/redexgen/X/Rj;JJI)V

    return-void
.end method

.method public final AFn()V
    .registers 5

    .line 25638
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v0, v3, v1

    .line 25639
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0Y()V

    .line 25640
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 25641
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0U:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uz;->AIp()V

    .line 25642
    return-void
.end method

.method public final AHV(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 4

    .line 25643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25644
    return-void
.end method

.method public final AII(Lcom/facebook/ads/redexgen/X/Rm;J)V
    .registers 5

    .line 25645
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A06:Lcom/facebook/ads/redexgen/X/Rm;

    .line 25646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0P:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 25647
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0H()V

    .line 25648
    return-void
.end method

.method public final AId()J
    .registers 3

    .line 25649
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    if-nez v0, :cond_10

    .line 25650
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:I

    if-le v1, v0, :cond_16

    .line 25651
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    .line 25652
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    return-wide v0

    .line 25653
    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final AIk(J)V
    .registers 3

    .line 25654
    return-void
.end method

.method public final AKP(Lcom/facebook/ads/redexgen/X/ZK;)V
    .registers 4

    .line 25655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A0O:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/V0;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/V0;-><init>(Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/ZK;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25656
    return-void
.end method

.method public final AKQ(JZ)J
    .registers 8
    .param p1    # J
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 25657
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/V6;->A02:[Z

    .line 25659
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A08:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZK;->ABR()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 25660
    :goto_f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    .line 25661
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:J

    .line 25662
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0S()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 25663
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25664
    return-wide p1

    .line 25665
    :cond_1d
    const-wide/16 p1, 0x0

    goto :goto_f

    .line 25666
    :cond_20
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2c

    .line 25667
    invoke-direct {p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/8p;->A0V([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 25668
    return-wide p1

    .line 25669
    :cond_2c
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    .line 25670
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:J

    .line 25671
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8p;->A0D:Z

    .line 25672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ql;->A0E()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 25673
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v1, v2

    :goto_3d
    if-ge v3, v1, :cond_59

    aget-object v0, v2, v3

    .line 25674
    .local p0, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0V()V

    .line 25675
    .end local p0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 25676
    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ql;->A0A()V

    .line 25677
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v1, v2

    :goto_4f
    if-ge v3, v1, :cond_5e

    aget-object v0, v2, v3

    .line 25678
    .restart local p0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0Z()V

    .line 25679
    .end local p0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 25680
    :cond_59
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ql;->A09()V

    .line 25681
    :cond_5e
    return-wide p1
.end method

.method public final AKR([Lcom/facebook/ads/redexgen/X/RA;[Z[Lcom/facebook/ads/redexgen/X/VF;[ZJ)J
    .registers 19

    .line 25682
    move-wide/from16 v0, p5

    move-object v6, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A0E()V

    .line 25683
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/RY;

    .line 25684
    .local v5, "tracks":Lcom/facebook/ads/redexgen/X/RY;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A07:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/V6;->A01:[Z

    .line 25685
    .local v6, "trackEnabledStates":[Z
    iget v3, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    .line 25686
    .local v7, "oldEnabledTrackCount":I
    const/4 v4, 0x0

    .local v8, "i":I
    :goto_11
    array-length v2, p1

    const/4 v7, 0x0

    const/4 v5, 0x1

    if-ge v4, v2, :cond_3c

    .line 25687
    aget-object v2, p3, v4

    if-eqz v2, :cond_39

    aget-object v2, p1, v4

    if-eqz v2, :cond_22

    aget-boolean v2, p2, v4

    if-nez v2, :cond_39

    .line 25688
    :cond_22
    aget-object v2, p3, v4

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ri;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ri;->A00(Lcom/facebook/ads/redexgen/X/Ri;)I

    move-result v10

    .line 25689
    .local v9, "track":I
    aget-boolean v2, v8, v10

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25690
    iget v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    sub-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    .line 25691
    aput-boolean v7, v8, v10

    .line 25692
    const/4 v2, 0x0

    aput-object v2, p3, v4

    .line 25693
    .end local v9    # "track":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 25694
    .end local v8    # "i":I
    :cond_3c
    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A0J:Z

    if-eqz v2, :cond_c5

    if-nez v3, :cond_cd

    :goto_42
    const/4 v3, 0x1

    .line 25695
    .local v8, "seekRequired":Z
    :goto_43
    const/4 v10, 0x0

    .local v9, "i":I
    :goto_44
    array-length v2, p1

    if-ge v10, v2, :cond_d0

    .line 25696
    aget-object v2, p3, v10

    if-nez v2, :cond_c0

    aget-object v2, p1, v10

    if-eqz v2, :cond_c0

    .line 25697
    aget-object v4, p1, v10

    .line 25698
    .local p0, "selection":Lcom/facebook/ads/redexgen/X/Wc;
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wc;->length()I

    move-result v2

    if-ne v2, v5, :cond_af

    const/4 v2, 0x1

    :goto_58
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25699
    invoke-interface {v4, v7}, Lcom/facebook/ads/redexgen/X/Wc;->A8t(I)I

    move-result v2

    if-nez v2, :cond_ad

    const/4 v2, 0x1

    :goto_62
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25700
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wc;->A9y()Lcom/facebook/ads/redexgen/X/U8;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/facebook/ads/redexgen/X/RY;->A04(Lcom/facebook/ads/redexgen/X/U8;)I

    move-result v4

    .line 25701
    .local p1, "track":I
    aget-boolean v2, v8, v4

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 25702
    iget v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    add-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    .line 25703
    aput-boolean v5, v8, v4

    .line 25704
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ri;

    invoke-direct {v2, v6, v4}, Lcom/facebook/ads/redexgen/X/Ri;-><init>(Lcom/facebook/ads/redexgen/X/8p;I)V

    aput-object v2, p3, v10

    .line 25705
    aput-boolean v5, p4, v10

    .line 25706
    if-nez v3, :cond_c0

    .line 25707
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    aget-object v3, v2, v4

    .line 25708
    .local p2, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v3, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Rb;->A0f(JZ)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 25709
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rb;->A0O()I

    move-result v11

    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v4, v4, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_b1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25710
    :cond_ad
    const/4 v2, 0x0

    goto :goto_62

    .line 25711
    :cond_af
    const/4 v2, 0x0

    goto :goto_58

    .line 25712
    :cond_b1
    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v3, "4Ua4pVr65zBMJk5HDRLEFWq"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "gL2F8ebm31DnldlqIQBfJiNQ"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    if-eqz v11, :cond_c3

    const/4 v3, 0x1

    .line 25713
    .end local p0    # "selection":Lcom/facebook/ads/redexgen/X/Wc;
    .end local p1    # "track":I
    .end local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    :cond_c0
    :goto_c0
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 25714
    :cond_c3
    const/4 v3, 0x0

    goto :goto_c0

    .line 25715
    :cond_c5
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_cd

    goto/16 :goto_42

    :cond_cd
    const/4 v3, 0x0

    goto/16 :goto_43

    .line 25716
    .end local v9    # "i":I
    :cond_d0
    iget v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A01:I

    if-nez v2, :cond_120

    .line 25717
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/8p;->A0F:Z

    .line 25718
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/8p;->A0E:Z

    .line 25719
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ql;->A0E()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 25720
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    array-length v3, v4

    :goto_e3
    if-ge v7, v3, :cond_159

    aget-object v2, v4, v7

    .line 25721
    .local p1, "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rb;->A0V()V

    .line 25722
    .end local p1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v7, v7, 0x1

    goto :goto_e3

    .line 25723
    :cond_ed
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/8p;->A0L:[Lcom/facebook/ads/redexgen/X/Rb;

    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v4, v4, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_109

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_109
    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v3, "KObLoyMXSqtqN7ZOBMBJVqArB5WUqyES"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const-string v3, "dMbPgjiIOjrhHCAxl6Nk3JpBvz1yRxX5"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    array-length v2, v8

    :goto_116
    if-ge v7, v2, :cond_15e

    aget-object v3, v8, v7

    .line 25724
    .restart local p1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rb;->A0Z()V

    .line 25725
    .end local p1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/Rb;
    add-int/lit8 v7, v7, 0x1

    goto :goto_116

    .line 25726
    :cond_120
    if-eqz v3, :cond_15e

    .line 25727
    invoke-virtual {v6, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8p;->AKQ(JZ)J

    move-result-wide v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v4, v4, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_140

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25728
    .end local p9
    .local v3, "positionUs":J
    :cond_140
    sget-object v4, Lcom/facebook/ads/redexgen/X/8p;->A0f:[Ljava/lang/String;

    const-string v3, "MVqN2VPdDpdFhjgOAkV8BruKzDDFi3cc"

    const/4 v2, 0x7

    aput-object v3, v4, v2

    const-string v3, "F7RROiJYWj0RV7vDAcRWnMt2on6dtpWm"

    const/4 v2, 0x4

    aput-object v3, v4, v2

    const/4 v2, 0x0

    .restart local v9    # "i":I
    :goto_14d
    array-length v3, p3

    if-ge v2, v3, :cond_15e

    .line 25729
    aget-object v3, p3, v2

    if-eqz v3, :cond_156

    .line 25730
    aput-boolean v5, p4, v2

    .line 25731
    :cond_156
    add-int/lit8 v2, v2, 0x1

    goto :goto_14d

    .line 25732
    :cond_159
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/8p;->A0Y:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ql;->A09()V

    .line 25733
    .end local v9    # "i":I
    :cond_15e
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/8p;->A0J:Z

    .line 25734
    return-wide v0
.end method

.method public final AKu(Z)V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 25735
    return-void
.end method

.method public final ALm(II)Lcom/facebook/ads/redexgen/X/ZP;
    .registers 5

    .line 25736
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/V5;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/V5;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8p;->A06(Lcom/facebook/ads/redexgen/X/V5;)Lcom/facebook/ads/redexgen/X/Rb;

    move-result-object v0

    return-object v0
.end method

.method public final ALv(B)V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 25737
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.V0 (com.facebook.ads.redexgen.X.V0)
.class public final synthetic Lcom/facebook/ads/redexgen/X/V0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ZK;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/ZK;)V
    .registers 3

    .line 73856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:Lcom/facebook/ads/redexgen/X/8p;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:Lcom/facebook/ads/redexgen/X/ZK;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 73857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:Lcom/facebook/ads/redexgen/X/8p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8p;->A0e(Lcom/facebook/ads/redexgen/X/ZK;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.V1 (com.facebook.ads.redexgen.X.V1)
.class public final synthetic Lcom/facebook/ads/redexgen/X/V1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8p;)V
    .registers 2

    .line 73858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/8p;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 73859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8p;->A0c()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.V2 (com.facebook.ads.redexgen.X.V2)
.class public final synthetic Lcom/facebook/ads/redexgen/X/V2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8p;)V
    .registers 2

    .line 73860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/8p;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 73861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A0Q(Lcom/facebook/ads/redexgen/X/8p;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.V3 (com.facebook.ads.redexgen.X.V3)
.class public final synthetic Lcom/facebook/ads/redexgen/X/V3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8p;)V
    .registers 2

    .line 73862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Lcom/facebook/ads/redexgen/X/8p;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 73863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8p;->A0b()V

    return-void
.end method
