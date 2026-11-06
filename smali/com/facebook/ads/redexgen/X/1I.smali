###### Class com.facebook.ads.redexgen.X.C1I (com.facebook.ads.redexgen.X.1I)
.class public final Lcom/facebook/ads/redexgen/X/1I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 26
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qzld4Qy39Azn7KYrj1sXbPZPr2qv6GgB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1yyYiWnNu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zg1voNH89a01plQdKkVOTIE3hJJ00If9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LhD7lTYtuMCYkgD1PnemOg5ERT23PX0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YB3LukNHUN2DaV56yaS9yy46zwl6QYin"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pfYbPlfLNAe5pcAyURRpn9lPUi7k7Z7a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1I;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1I;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1I;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/kz;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/26;Z)Landroid/webkit/WebResourceResponse;
    .registers 13

    .line 4519
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4520
    .local v0, "url":Ljava/lang/String;
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/26;->A05:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_e

    .line 4521
    return-object v7

    .line 4522
    :cond_e
    :try_start_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4523
    .local v1, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4524
    .local v3, "mimeType":Ljava/lang/String;
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/26;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x6c

    const/16 v4, 0x15

    const/16 v0, 0xf

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4526
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/kz;->A0P(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 4527
    .local v4, "cachedFile":Ljava/io/File;
    if-eqz v4, :cond_66

    .line 4528
    if-eqz p4, :cond_61

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/26;->A00:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 4529
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A02()Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v6

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {v4, p0, v2}, Lcom/facebook/ads/redexgen/X/Ds;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Ljava/io/FileInputStream;Lcom/facebook/ads/redexgen/X/8s;)V

    .line 4530
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 4531
    :cond_61
    invoke-static {v3, v1, v4}, Lcom/facebook/ads/redexgen/X/1I;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 4532
    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v4, 0x19

    const/16 v0, 0x69

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4533
    .end local v4    # "cachedFile":Ljava/io/File;
    :cond_7f
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/26;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 4534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x81

    const/16 v4, 0x16

    const/16 v0, 0x45

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4535
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/kz;->A0Q(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4536
    .local v4, "cachedImageFile":Ljava/io/File;
    if-eqz v0, :cond_ac

    .line 4537
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 4538
    :cond_ac
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x19

    const/16 v4, 0x1a

    const/16 v0, 0x17

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4539
    .end local v4    # "cachedImageFile":Ljava/io/File;
    :cond_c6
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/26;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 4540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x97

    const/16 v4, 0x16

    const/16 v0, 0x40

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4541
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 4542
    invoke-static {p0, p2, v0, v1, v3}, Lcom/facebook/ads/redexgen/X/e1;->A00(Lcom/facebook/ads/redexgen/X/Hi;Landroid/webkit/WebResourceRequest;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_f1} :catch_f1

    .line 4543
    :catch_f1
    move-exception v5

    .line 4544
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x36

    const/16 v1, 0x23

    const/16 v0, 0x24

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x11

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4545
    .end local v1    # "e":Ljava/io/IOException;
    :cond_11a
    return-object v7
.end method

.method public static A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4546
    .local p0, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 4547
    .local p0, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const/16 v6, 0xc8

    const/16 v2, 0x6a

    const/4 v1, 0x2

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move-object p0, p0

    move-object v4, p1

    move-object p1, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/1I;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 4

    const/16 v0, 0xb5

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/1I;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/redexgen/X/1I;->A01:[Ljava/lang/String;

    const-string v1, "7l6kM9ADseoG9RLfCJpKjz7J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    fill-array-data v3, :array_2c

    sput-object v3, Lcom/facebook/ads/redexgen/X/1I;->A00:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x15t
        0x33t
        0x35t
        0x3at
        0x37t
        -0xet
        0x3ft
        0x3bt
        0x45t
        0x45t
        -0xet
        0x38t
        0x41t
        0x44t
        -0xet
        0x38t
        0x3bt
        0x3et
        0x37t
        -0xet
        0x47t
        0x44t
        0x3et
        0xct
        -0xet
        -0x3dt
        -0x1ft
        -0x1dt
        -0x18t
        -0x1bt
        -0x60t
        -0x13t
        -0x17t
        -0xdt
        -0xdt
        -0x60t
        -0x1at
        -0x11t
        -0xet
        -0x60t
        -0x17t
        -0x13t
        -0x1ft
        -0x19t
        -0x1bt
        -0x60t
        -0xbt
        -0xet
        -0x14t
        -0x46t
        -0x60t
        0x21t
        0x25t
        0x30t
        -0x2et
        -0x1t
        -0x1t
        -0x4t
        -0x1t
        -0x53t
        -0x4t
        -0x3t
        -0xet
        -0x5t
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0x10t
        -0x12t
        -0x10t
        -0xbt
        -0xet
        -0xft
        -0x53t
        -0xdt
        -0xat
        -0x7t
        -0xet
        -0x53t
        -0xdt
        -0x4t
        -0x1t
        -0x53t
        0x2t
        -0x1t
        -0x7t
        -0x39t
        -0x53t
        -0x1at
        -0x1et
        -0x1ft
        0x15t
        0x4t
        0x9t
        0x5t
        0xet
        0x3t
        0x5t
        -0x12t
        0x5t
        0x14t
        0x17t
        0xft
        0x12t
        0xbt
        -0x3dt
        -0x41t
        -0x38t
        -0x16t
        -0x19t
        -0x25t
        -0x23t
        -0x15t
        -0x15t
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x22t
        -0x1ft
        -0x1ct
        -0x23t
        -0x68t
        -0x13t
        -0x16t
        -0x1ct
        -0x4et
        -0x68t
        -0x2t
        0x20t
        0x1dt
        0x11t
        0x13t
        0x21t
        0x21t
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x17t
        0x1bt
        0xft
        0x15t
        0x13t
        -0x32t
        0x23t
        0x20t
        0x1at
        -0x18t
        -0x32t
        -0x7t
        0x1bt
        0x18t
        0xct
        0xet
        0x1ct
        0x1ct
        0x12t
        0x17t
        0x10t
        -0x37t
        0x1ft
        0x12t
        0xdt
        0xet
        0x18t
        -0x37t
        0x1et
        0x1bt
        0x15t
        -0x1dt
        -0x37t
        0x49t
        0x58t
        0x51t
        -0x10t
        -0x5t
        -0x6t
        -0x9t
        -0xft
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 4548
    const/16 v2, 0x33

    const/4 v1, 0x3

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;)V

    .line 4549
    .local v0, "e":Lcom/facebook/ads/redexgen/X/lg;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/lg;->A05(I)V

    .line 4550
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4551
    .local v1, "info":Lorg/json/JSONObject;
    const/16 v2, 0xb0

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4552
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4553
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/lg;->A07(Lorg/json/JSONObject;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_32} :catch_32

    .line 4554
    :catch_32
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v3

    const/16 v2, 0xad

    const/4 v1, 0x3

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A03(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/lf;->A12:I

    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/le;->AC0(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 4555
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 4556
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A05(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C4E (com.facebook.ads.redexgen.X.4E)
.class public final Lcom/facebook/ads/redexgen/X/4E;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8s;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/security/MessageDigest;

.field public final A01:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A02:Lcom/facebook/ads/redexgen/X/8s;

.field public final A03:Ljava/io/FileInputStream;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 157
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5FxkjmViipfuOEmeGZRh1rWuAhi58BIY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P0uDFh8HOwAWvDVGkGeATzc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FQ2HPVuJ9Fju5P7EfteSFhbDkCSiUGCr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lMnDCDrcSzZtU6RMhKfYe1rO633Hkzz8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BZaCeAJ4mpNw1z6aTzzGkvXJAvKgKDg7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gl5vlYV0aCgrCc0s0sEnhviYHRKbo8Yg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tgc0UJMQxUN8PgOF6KJ9ZKrej2a3tpw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OSPCme8ftb56UzOVrw2bgiBSvmZFYlRk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4E;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Ljava/io/FileInputStream;Lcom/facebook/ads/redexgen/X/8s;)V
    .registers 7

    .line 9425
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 9426
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4E;->A03:Ljava/io/FileInputStream;

    .line 9427
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4E;->A02:Lcom/facebook/ads/redexgen/X/8s;

    .line 9428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4E;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 9429
    :try_start_9
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4E;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    goto :goto_1b
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_18} :catch_18

    .line 9430
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :catch_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    .line 9431
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1b
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/4E;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const-string v1, "wkBtkBfOXubsKwfKzYpxBJzZI93GSJMw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_4d

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const-string v1, "6MRboz4pfSS0DylRcsmX7nz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Z3yJOYkAPU5AGas9ZlGFYfEzislvm9u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x2d

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_4d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4E;->A04:[B

    return-void

    nop

    :array_a
    .array-data 1
        -0x68t
        -0x71t
        -0x80t
        0xbt
        0x1at
        0x13t
    .end array-data
.end method


# virtual methods
.method public final available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9433
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 9434
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4E;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 9436
    .local v0, "bytesRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    if-eqz v0, :cond_5f

    .line 9437
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/4E;->A05:[Ljava/lang/String;

    const-string v1, "wFnf9K6AarqF2rYbRIkm3wGElU25UaCd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v6, :cond_29

    .line 9438
    :try_start_23
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_5f

    .line 9439
    :cond_29
    const/4 v0, -0x1

    if-ne v6, v0, :cond_5f

    .line 9440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/q0;->A05([B)Ljava/lang/String;

    move-result-object v1

    .line 9441
    .local v2, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A02:Lcom/facebook/ads/redexgen/X/8s;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8s;->AAW(Ljava/lang/String;)V

    .line 9442
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    goto :goto_5f
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_44

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9443
    :catch_44
    move-exception v1

    .line 9444
    .local v2, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4E;->A00:Ljava/security/MessageDigest;

    .line 9445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4E;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 9446
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/lf;->A13:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 9447
    const/4 v2, 0x3

    const/4 v1, 0x3

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4E;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/le;->ACp(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 9448
    :cond_5f
    :goto_5f
    return v6
.end method

.method public final skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9449
    long-to-int v6, p1

    .line 9450
    .local v0, "bytesToRead":I
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 9451
    .local v2, "b":[B
    const-wide/16 v2, 0x0

    .line 9452
    .local v3, "totalRead":J
    :goto_7
    if-lez v6, :cond_14

    .line 9453
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9454
    .local v5, "currentBufSize":I
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/4E;->read([BII)I

    move-result v0

    .line 9455
    .local v6, "actuallyRead":I
    if-gtz v0, :cond_15

    .line 9456
    :cond_14
    return-wide v2

    .line 9457
    :cond_15
    sub-int/2addr v6, v0

    .line 9458
    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 9459
    .end local v5    # "currentBufSize":I
    .end local v6    # "actuallyRead":I
    goto :goto_7
.end method
