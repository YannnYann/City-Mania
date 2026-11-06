###### Class com.facebook.ads.redexgen.X.NI (com.facebook.ads.redexgen.X.NI)
.class public final Lcom/facebook/ads/redexgen/X/NI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dD;


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Lcom/facebook/ads/redexgen/X/dN;

.field public final A04:Lcom/facebook/ads/redexgen/X/dY;

.field public final A05:Lcom/facebook/ads/redexgen/X/lA;

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1042
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2hmAfzTadn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1uDqsMr9wv4o5ZghfCOZg4FuDp7sllqp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nT1KYDstdBBAZ5nN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UVqk4rMzzgqbiyaJgpoGMOUy0jQCoEBq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ewXxsmpHr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rT44HeCpkJQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C3kiv90mrVS0BL1BSM5Dfu9lHf0n3Csl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "grgxNBq6hb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NI;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lA;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/dY;)V
    .registers 5

    .line 57113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57115
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Ljava/util/Map;

    .line 57116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    .line 57117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    .line 57118
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A02()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    .line 57119
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:I

    .line 57120
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    .line 57121
    new-instance v0, Lcom/facebook/ads/redexgen/X/dN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/dN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/dN;

    .line 57122
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A01()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:I

    .line 57123
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 57124
    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NG;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/dU;
        }
    .end annotation

    .line 57125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 57126
    .local v0, "is":Ljava/io/InputStream;
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57127
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 57128
    .local v2, "data":[B
    :goto_11
    array-length v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local p1, "nRead":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1e

    .line 57129
    invoke-virtual {p0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    .line 57130
    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NG;-><init>([B)V

    .line 57131
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local p1    # "nRead":I
    .local v0, "source":Lcom/facebook/ads/redexgen/X/dX;
    return-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    .line 57132
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :catch_28
    move-exception v3

    .line 57133
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x83

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dU;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/dU;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 57134
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/16 v2, 0x13e

    const/16 v1, 0xf

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/dJ;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/dM;)Ljava/io/File;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dJ;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/ads/redexgen/X/dM<",
            "*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 57135
    .local p8, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/dM;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<*>;"
    move-object/from16 v0, p0

    const/16 v3, 0xde

    const/16 v2, 0x16

    const/16 v1, 0x44

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_d
    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 57136
    .local v14, "requestTime":J
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/NI;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 57137
    .local v7, "cacheRoot":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v3, p3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57138
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    .line 57139
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/mv;->A0P(Landroid/content/Context;)J

    move-result-wide v2

    new-instance v6, Lcom/facebook/ads/redexgen/X/88;

    invoke-direct {v6, v2, v3}, Lcom/facebook/ads/redexgen/X/88;-><init>(J)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/NB;

    invoke-direct {v9, v4, v6}, Lcom/facebook/ads/redexgen/X/NB;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/dO;)V

    .line 57140
    .local v5, "cache":Lcom/facebook/ads/redexgen/X/NB;
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/NB;->A09()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_6b

    .line 57141
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v2, :cond_5d

    .line 57142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x31

    const/16 v3, 0x16

    const/16 v2, 0x6a

    invoke-static {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/NB;->A00:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57143
    :cond_5d
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A06:Ljava/util/Map;

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57144
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/NB;->A06()V

    .line 57145
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    invoke-interface {v2, v10, v6, v5}, Lcom/facebook/ads/redexgen/X/dY;->AIi(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/dJ;)V

    .line 57146
    return-object v4

    .line 57147
    :cond_6b
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v2, :cond_8f

    .line 57148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x47

    const/16 v3, 0x1a

    const/16 v2, 0x75

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/NB;->A00:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57149
    :cond_8f
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/dM;->A04()Z

    move-result v2

    if-nez v2, :cond_96

    .line 57150
    return-object v8

    .line 57151
    :cond_96
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    const/4 v2, 0x0

    invoke-interface {v3, v10, v2, v5}, Lcom/facebook/ads/redexgen/X/dY;->AIi(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/dJ;)V

    .line 57152
    const/4 v12, 0x0

    .local v3, "attempt":I
    :goto_9d
    iget v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A00:I

    if-ge v12, v2, :cond_cc
    :try_end_a1
    .catch Lcom/facebook/ads/redexgen/X/NE; {:try_start_d .. :try_end_a1} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/N8; {:try_start_d .. :try_end_a1} :catch_fa

    .line 57153
    :try_start_a1
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    move-object/from16 v7, p0

    .end local v3    # "attempt":I
    .local p0, "attempt":I
    move-object v10, v10

    move-object v6, v9
    :try_end_a7
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_a1 .. :try_end_a7} :catch_af
    .catch Lcom/facebook/ads/redexgen/X/NE; {:try_start_a1 .. :try_end_a7} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/N8; {:try_start_a1 .. :try_end_a7} :catch_fa

    .end local v5    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .local v13, "cache":Lcom/facebook/ads/redexgen/X/NB;
    .end local v6
    .local v10, "targetFile":Ljava/io/File;
    .end local v7    # "cacheRoot":Ljava/io/File;
    .local p2, "cacheRoot":Ljava/io/File;
    :try_start_a7
    move/from16 v11, p4

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/NI;->A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/NB;Ljava/lang/String;IIJ)V

    goto :goto_cd
    :try_end_ad
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_a7 .. :try_end_ad} :catch_ad
    .catch Lcom/facebook/ads/redexgen/X/NE; {:try_start_a7 .. :try_end_ad} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/N8; {:try_start_a7 .. :try_end_ad} :catch_fa

    .line 57154
    :catch_ad
    move-exception v3

    goto :goto_b1

    .end local v10    # "targetFile":Ljava/io/File;
    .end local v13    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .end local p0    # "attempt":I
    .end local p2    # "cacheRoot":Ljava/io/File;
    .restart local v3    # "attempt":I
    .restart local v5    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .restart local v6
    .restart local v7    # "cacheRoot":Ljava/io/File;
    :catch_af
    move-exception v3

    move-object v6, v9

    .line 57155
    .local v0, "proxyCacheException":Lcom/facebook/ads/redexgen/X/dU;
    :goto_b1
    :try_start_b1
    iget v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A00:I

    add-int/lit8 v2, v2, -0x1

    .end local p0
    .local v2, "attempt":I
    if-ne v12, v2, :cond_c2

    .line 57156
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/NI;->A06(Lcom/facebook/ads/redexgen/X/NB;)V

    .line 57157
    instance-of v2, v3, Lcom/facebook/ads/redexgen/X/NE;

    if-nez v2, :cond_c9

    .line 57158
    instance-of v2, v3, Lcom/facebook/ads/redexgen/X/N8;

    if-nez v2, :cond_c6

    .line 57159
    .end local v0    # "proxyCacheException":Lcom/facebook/ads/redexgen/X/dU;
    .restart local p4    # null:I
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/dM;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_c2
    add-int/lit8 v12, v12, 0x1

    move-object v9, v6

    .end local v2    # "attempt":I
    .restart local v3    # "attempt":I
    goto :goto_9d

    .line 57160
    :cond_c6
    check-cast v3, Lcom/facebook/ads/redexgen/X/N8;

    .end local p4    # null:I
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/dM;
    .end local p6
    .end local p7
    .end local p8
    throw v3

    .line 57161
    .restart local p4    # null:I
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/dM;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_c9
    check-cast v3, Lcom/facebook/ads/redexgen/X/NE;

    .end local p4    # null:I
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/dM;
    .end local p6
    .end local p7
    .end local p8
    throw v3

    .line 57162
    .end local v10
    .end local v13
    .end local p2
    .restart local v5    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .restart local v6
    .restart local v7    # "cacheRoot":Ljava/io/File;
    :cond_cc
    move-object v6, v9

    .line 57163
    .end local v3    # "attempt":I
    .end local v5    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .end local v6
    .end local v7    # "cacheRoot":Ljava/io/File;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v13    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .restart local p2    # "cacheRoot":Ljava/io/File;
    :goto_cd
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A03()I

    move-result v8

    .line 57164
    .local v0, "size":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A06()V

    .line 57165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 57166
    .local p0, "loadTime":J
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/dM;->A00()Lcom/facebook/ads/redexgen/X/dG;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    invoke-interface {v3, v4, v2}, Lcom/facebook/ads/redexgen/X/dG;->A5m(Ljava/io/File;Lcom/facebook/ads/redexgen/X/dY;)V

    .line 57167
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A06:Ljava/util/Map;

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57168
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    int-to-long v2, v8

    .line 57169
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 57170
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 57171
    const/16 v11, 0x840

    const/4 v12, 0x0

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/dY;->AIh(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/dJ;)V

    .line 57172
    return-object v4
    :try_end_fa
    .catch Lcom/facebook/ads/redexgen/X/NE; {:try_start_b1 .. :try_end_fa} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/N8; {:try_start_b1 .. :try_end_fa} :catch_fa

    .line 57173
    .end local v0    # "size":I
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v13    # "cache":Lcom/facebook/ads/redexgen/X/NB;
    .end local v14    # "requestTime":J
    .end local p0    # "loadTime":J
    .end local p2    # "cacheRoot":Ljava/io/File;
    :catch_fa
    move-exception v2

    .line 57174
    .local v0, "e":Lcom/facebook/ads/redexgen/X/N8;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    .line 57175
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/N8;->toString()Ljava/lang/String;

    move-result-object v12

    .line 57176
    const/16 v11, 0x841

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/dY;->AIh(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/dJ;)V

    .line 57177
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_112

    .line 57178
    sget-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57179
    :cond_112
    const/4 v0, 0x0

    return-object v0

    .line 57180
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/N8;
    :catch_114
    move-exception v2

    .line 57181
    .local v0, "e":Lcom/facebook/ads/redexgen/X/NE;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    .line 57182
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NE;->toString()Ljava/lang/String;

    move-result-object v12

    .line 57183
    const/16 v11, 0x847

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/dY;->AIh(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/dJ;)V

    .line 57184
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_12c

    .line 57185
    sget-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57186
    :cond_12c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/NI;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length v0, v3

    if-ge p0, v0, :cond_3b

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v1, "m9U6X0moZlc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IfCNkNm6kG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x4c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 3

    const/16 v0, 0x16c

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/NI;->A09:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_24

    sget-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v1, "1YrvosXM8zHw8wsMUb3ulJ8Xgx5scBHO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_2a
    .array-data 1
        -0x69t
        -0x21t
        -0x28t
        -0x16t
        -0x69t
        -0x27t
        -0x24t
        -0x24t
        -0x1bt
        -0x69t
        -0x20t
        -0x1bt
        -0x15t
        -0x24t
        -0x17t
        -0x17t
        -0x14t
        -0x19t
        -0x15t
        -0x24t
        -0x25t
        -0x5bt
        -0x3ft
        -0x4bt
        -0x5t
        -0x2t
        0x1t
        -0x6t
        -0x4bt
        -0x8t
        0x1t
        -0x6t
        -0xat
        0x3t
        -0x6t
        -0x7t
        -0x31t
        -0x4bt
        -0x7dt
        0x75t
        -0x6at
        -0x37t
        -0x37t
        -0x46t
        -0x3et
        -0x3bt
        -0x37t
        -0x71t
        0x75t
        -0x7t
        0x17t
        0x19t
        0x1et
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x1ct
        0x1ft
        0x22t
        0x1bt
        -0x2at
        0x19t
        0x25t
        0x23t
        0x26t
        0x22t
        0x1bt
        0x2at
        0x1bt
        -0x2at
        0x4t
        0x22t
        0x24t
        0x29t
        0x2at
        0x2ft
        0x28t
        -0x1ft
        0x27t
        0x2at
        0x2dt
        0x26t
        -0x1ft
        0x2ft
        0x30t
        0x35t
        -0x1ft
        0x24t
        0x30t
        0x2et
        0x31t
        0x2dt
        0x26t
        0x35t
        0x26t
        -0x1ft
        -0x5bt
        -0x3dt
        -0x3bt
        -0x36t
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x2ft
        -0x38t
        -0x7et
        -0x20t
        -0x2t
        0xbt
        -0x3ct
        0x11t
        -0x43t
        0x0t
        0x9t
        0xct
        0x10t
        0x2t
        -0x43t
        0x0t
        -0x2t
        0x0t
        0x5t
        0x2t
        -0x43t
        0x3t
        0x6t
        0x9t
        0x2t
        -0x35t
        -0x50t
        -0x32t
        -0x25t
        -0x6ct
        -0x1ft
        -0x73t
        -0x21t
        -0x2et
        -0x32t
        -0x2ft
        -0x73t
        -0x32t
        -0x20t
        -0x20t
        -0x2et
        -0x1ft
        -0x20t
        -0x65t
        -0x45t
        -0x27t
        -0x1at
        -0x61t
        -0x14t
        -0x68t
        -0x16t
        -0x23t
        -0x27t
        -0x24t
        -0x68t
        -0x1ct
        -0x23t
        -0x1at
        -0x21t
        -0x14t
        -0x20t
        -0x68t
        -0x19t
        -0x22t
        -0x68t
        -0x48t
        -0x27t
        -0x20t
        -0x27t
        -0x18t
        -0x23t
        -0x1et
        -0x25t
        -0x6ct
        -0x29t
        -0x2bt
        -0x29t
        -0x24t
        -0x27t
        -0x6ct
        -0x26t
        -0x23t
        -0x20t
        -0x27t
        -0x6ct
        -0x2bt
        -0x26t
        -0x18t
        -0x27t
        -0x1at
        -0x6ct
        -0x27t
        -0x14t
        -0x29t
        -0x27t
        -0x27t
        -0x28t
        -0x23t
        -0x1et
        -0x25t
        -0x6ct
        -0x1at
        -0x27t
        -0x18t
        -0x1at
        -0x13t
        -0x6ct
        -0x2bt
        -0x18t
        -0x18t
        -0x27t
        -0x1ft
        -0x1ct
        -0x18t
        -0x19t
        -0x52t
        -0x6ct
        -0x2bt
        0x2t
        0x2t
        -0x1t
        0x2t
        -0x50t
        -0xdt
        -0xft
        -0xdt
        -0x8t
        -0x7t
        -0x2t
        -0x9t
        -0x50t
        0x4t
        -0x8t
        -0xbt
        -0x50t
        -0xat
        -0x7t
        -0x4t
        -0xbt
        -0x36t
        -0x9t
        -0x9t
        -0xct
        -0x9t
        -0x5bt
        -0x18t
        -0xft
        -0x16t
        -0x1at
        -0xdt
        -0x12t
        -0xdt
        -0x14t
        -0x5bt
        -0x15t
        -0x12t
        -0xft
        -0x16t
        -0x48t
        -0x1bt
        -0x1bt
        -0x1et
        -0x1bt
        -0x6dt
        -0x2at
        -0x21t
        -0x1et
        -0x1at
        -0x24t
        -0x1ft
        -0x26t
        -0x6dt
        -0x1at
        -0x1et
        -0x18t
        -0x1bt
        -0x2at
        -0x28t
        -0x48t
        -0x23t
        -0x2et
        -0x22t
        -0x24t
        -0x21t
        -0x25t
        -0x2ct
        -0x1dt
        -0x2ct
        -0x71t
        -0x1ft
        -0x2ct
        -0x1et
        -0x21t
        -0x22t
        -0x23t
        -0x1et
        -0x2ct
        -0x63t
        -0x41t
        -0x23t
        -0x1ct
        -0x2ct
        -0x27t
        -0x2et
        -0x75t
        -0x21t
        -0x26t
        -0x75t
        -0x23t
        -0x30t
        -0x34t
        -0x31t
        -0x75t
        -0x49t
        -0x46t
        -0x3ct
        -0x33t
        -0x7dt
        -0x44t
        -0x41t
        -0x3et
        -0x45t
        -0x7dt
        -0x47t
        -0x49t
        -0x47t
        -0x42t
        -0x45t
        -0x12t
        0x0t
        0x0t
        -0xet
        0x1t
        -0x39t
        -0x44t
        -0x44t
        -0x44t
        0x5t
        0x8t
        0xbt
        0x4t
        -0x27t
        -0x32t
        -0x32t
        -0x32t
        0x0t
        0xdt
        0x3t
        0x11t
        0xet
        0x8t
        0x3t
        -0x2t
        0x0t
        0x12t
        0x12t
        0x4t
        0x13t
        -0x32t
    .end array-data
.end method

.method private A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/NB;Ljava/lang/String;IIJ)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/dU;
        }
    .end annotation

    .line 57187
    move-object/from16 v1, p0

    const/16 v3, 0x107

    const/16 v2, 0x14

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x156

    const/16 v3, 0x16

    const/16 v0, 0x53

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p3

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v5, p1

    if-eqz v0, :cond_2d

    .line 57188
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57189
    .local v0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/NI;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v0

    .line 57190
    .local v0, "source":Lcom/facebook/ads/redexgen/X/dX;
    goto :goto_51

    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :cond_2d
    const/16 v4, 0x14d

    const/16 v3, 0x9

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 57191
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57192
    .local v0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/NI;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v0

    .line 57193
    .local v0, "source":Lcom/facebook/ads/redexgen/X/dX;
    goto :goto_51

    .line 57194
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :cond_4a
    new-instance v0, Lcom/facebook/ads/redexgen/X/N9;

    move/from16 v3, p4

    invoke-direct {v0, v8, v3}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Ljava/lang/String;I)V

    .line 57195
    .local v12, "source":Lcom/facebook/ads/redexgen/X/dX;
    :goto_51
    :try_start_51
    move-wide/from16 v13, p6

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v3, :cond_8c
    :try_end_57
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_51 .. :try_end_57} :catch_169
    .catchall {:try_start_51 .. :try_end_57} :catchall_166

    .line 57196
    :try_start_57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x12f

    const/16 v4, 0xf

    const/16 v3, 0x1f

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0x26

    const/16 v4, 0xb

    const/16 v3, 0x9

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_7c
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_57 .. :try_end_7c} :catch_89
    .catchall {:try_start_57 .. :try_end_7c} :catchall_86

    :try_start_7c
    move/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_8c
    :try_end_86
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_7c .. :try_end_86} :catch_16b
    .catchall {:try_start_7c .. :try_end_86} :catchall_124

    .line 57197
    :catchall_86
    move-exception v6

    goto/16 :goto_22b

    .line 57198
    :catch_89
    move-exception v6

    goto/16 :goto_16c

    .line 57199
    :cond_8c
    :goto_8c
    :try_start_8c
    move-object/from16 v6, p2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A03()I

    move-result v9

    .line 57200
    .local v0, "offset":I
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dX;->length()I
    :try_end_95
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_8c .. :try_end_95} :catch_169
    .catchall {:try_start_8c .. :try_end_95} :catchall_166

    move-result v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x10

    if-eq v4, v3, :cond_a9

    .line 57201
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57202
    .local v10, "sourceLength":I
    :cond_a9
    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "eTbeym3Ey2TfwhNFyBG6ZkfAKtzQxWab"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "sd4JUTjhNLXLgefrlj4RQDt9w4Pjz5Uj"

    const/4 v3, 0x3

    aput-object v4, v5, v3

    if-gez v7, :cond_bb

    const/4 v12, 0x1

    .line 57203
    .local v16, "canNotReadLength":Z
    :goto_b8
    if-eqz v12, :cond_f1

    goto :goto_bd

    .line 57204
    :cond_bb
    const/4 v12, 0x0

    goto :goto_b8

    .line 57205
    :goto_bd
    :try_start_bd
    invoke-direct {v1, v6}, Lcom/facebook/ads/redexgen/X/NI;->A07(Lcom/facebook/ads/redexgen/X/NB;)Z

    move-result v10

    .line 57206
    .local v5, "cleaned":Z
    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v3, :cond_f1

    .line 57207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x95

    const/16 v4, 0x15

    const/16 v3, 0x2c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v5, 0x16

    const/16 v4, 0x10

    const/16 v3, 0x49

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57208
    .restart local v0    # "offset":I
    .restart local v10    # "sourceLength":I
    .restart local v16    # "canNotReadLength":Z
    :cond_f1
    if-nez v12, :cond_f5

    if-ge v9, v7, :cond_107
    :try_end_f5
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_bd .. :try_end_f5} :catch_16b
    .catchall {:try_start_bd .. :try_end_f5} :catchall_124

    .line 57209
    :cond_f5
    :try_start_f5
    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/dX;->AHw(I)V

    .line 57210
    const/16 v3, 0x2000

    new-array v5, v3, [B

    .line 57211
    .local v5, "buffer":[B
    :goto_fc
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/dX;->read([B)I

    move-result v4

    .local v7, "readBytes":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_107
    :try_end_103
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_f5 .. :try_end_103} :catch_169
    .catchall {:try_start_f5 .. :try_end_103} :catchall_166

    .line 57212
    :try_start_103
    invoke-virtual {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/NB;->A08([BI)V

    goto :goto_fc

    .line 57213
    .end local v5    # "buffer":[B
    .end local v7    # "readBytes":I
    :cond_107
    if-eqz v12, :cond_10d

    .line 57214
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A07()V

    goto :goto_116
    :try_end_10d
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_103 .. :try_end_10d} :catch_16b
    .catchall {:try_start_103 .. :try_end_10d} :catchall_124

    .line 57215
    :cond_10d
    :try_start_10d
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A03()I

    move-result v3

    if-ne v3, v7, :cond_151

    .line 57216
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A07()V

    .line 57217
    :goto_116
    const/16 v21, 0x0

    .line 57218
    .local v5, "code":I
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v3, :cond_127
    :try_end_11c
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_10d .. :try_end_11c} :catch_169
    .catchall {:try_start_10d .. :try_end_11c} :catchall_166

    .line 57219
    :try_start_11c
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/N9;->A06()I

    move-result v21

    goto :goto_127
    :try_end_124
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_11c .. :try_end_124} :catch_16b
    .catchall {:try_start_11c .. :try_end_124} :catchall_124

    .line 57220
    .end local v0    # "offset":I
    .end local v5    # "code":I
    .end local v10    # "sourceLength":I
    .end local v16    # "canNotReadLength":Z
    :catchall_124
    move-exception v6

    goto/16 :goto_22b

    .line 57221
    .end local v5
    .local v17, "code":I
    :cond_127
    :goto_127
    :try_start_127
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    .line 57222
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v12

    .line 57223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 57224
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NB;->A03()I

    move-result v3

    int-to-long v3, v3

    .line 57225
    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_13b
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_127 .. :try_end_13b} :catch_169
    .catchall {:try_start_127 .. :try_end_13b} :catchall_166

    .end local v10
    .local p0, "sourceLength":I
    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .local v21, "source":Lcom/facebook/ads/redexgen/X/dX;
    :try_start_13b
    move-wide/from16 v17, v3

    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V
    :try_end_140
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_13b .. :try_end_140} :catch_164
    .catchall {:try_start_13b .. :try_end_140} :catchall_161

    .line 57226
    .end local v0
    .end local v16
    .end local v17    # "code":I
    .end local p0    # "sourceLength":I
    :try_start_140
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dX;->close()V

    goto :goto_150
    :try_end_144
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_140 .. :try_end_144} :catch_146
    .catch Ljava/lang/IllegalArgumentException; {:try_start_140 .. :try_end_144} :catch_144

    .line 57227
    :catch_144
    move-exception v3

    goto :goto_147

    :catch_146
    move-exception v3

    .line 57228
    .local v0, "e":Ljava/lang/Exception;
    :goto_147
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_150

    .line 57229
    sget-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57230
    :cond_150
    :goto_150
    return-void

    .line 57231
    :cond_151
    :try_start_151
    const/16 v5, 0x11b

    const/16 v4, 0x14

    const/16 v3, 0x23

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Ljava/lang/String;)V

    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/NB;
    .end local p3    # null:Ljava/lang/String;
    .end local p4    # null:I
    .end local p5    # null:I
    .end local p6    # null:J
    .end local p7
    throw v4
    :try_end_161
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_151 .. :try_end_161} :catch_164
    .catchall {:try_start_151 .. :try_end_161} :catchall_161

    .line 57232
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16
    .end local p0
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/NB;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4    # null:I
    .restart local p5    # null:I
    .restart local p6    # null:J
    .restart local p7
    :catchall_161
    move-exception v6

    goto/16 :goto_22b

    .line 57233
    :catch_164
    move-exception v6

    goto :goto_186

    .line 57234
    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local v12    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :catchall_166
    move-exception v6

    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    goto/16 :goto_22b

    .line 57235
    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local v12    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :catch_169
    move-exception v6

    goto :goto_186

    :catch_16b
    move-exception v6

    :goto_16c
    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v5, v3

    const/4 v3, 0x3

    aget-object v5, v5, v3

    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_23c

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "FEvgLDxHgmJHNXql"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    .line 57236
    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .local v0, "e":Lcom/facebook/ads/redexgen/X/dU;
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :goto_186
    const/16 v21, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v5, v3

    const/4 v3, 0x7

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_1a1

    .line 57237
    .restart local v5    # "code":I
    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "T9HhHUPHmRtDRYih6csTBmWckuigXZik"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .local v15, "source":Lcom/facebook/ads/redexgen/X/dX;
    :cond_1a1
    :try_start_1a1
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v3, :cond_1ce
    :try_end_1a5
    .catchall {:try_start_1a1 .. :try_end_1a5} :catchall_20b

    .line 57238
    :try_start_1a5
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/N9;->A06()I

    move-result v21

    goto :goto_1ce
    :try_end_1ad
    .catchall {:try_start_1a5 .. :try_end_1ad} :catchall_1ad

    .line 57239
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/dU;
    .end local v5    # "code":I
    :catchall_1ad
    move-exception v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v5, v3

    const/4 v3, 0x4

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_1c8

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "ImVXE49sB20dM2EoLXCVvjDoDOKBzvDP"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    goto :goto_22b

    :cond_1c8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57240
    .end local v5
    .local v16, "code":I
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/lA;

    .line 57241
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v12

    .line 57242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1d7
    .catchall {:try_start_1ce .. :try_end_1d7} :catchall_20b

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const-wide/16 v17, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v5, v3

    const/4 v3, 0x4

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_1fe

    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "1ebbv6sZsY"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const-string v4, "jsueFKzO4"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    .end local v15    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .local v18, "source":Lcom/facebook/ads/redexgen/X/dX;
    goto :goto_205

    :cond_1fe
    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "KSAyepUp6Lv8t3ZYZ0KE3Pcqgz9Tryir"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    .end local v15
    .local v18, "source":Lcom/facebook/ads/redexgen/X/dX;
    :goto_205
    :try_start_205
    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V

    .line 57243
    .end local v18    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/NB;
    .end local p3    # null:Ljava/lang/String;
    .end local p4    # null:I
    .end local p5    # null:I
    .end local p6    # null:J
    .end local p7
    throw v6
    :try_end_209
    .catchall {:try_start_205 .. :try_end_209} :catchall_209

    .line 57244
    .end local v0
    .end local v16    # "code":I
    .restart local v18    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/NB;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4    # null:I
    .restart local p5    # null:I
    .restart local p6    # null:J
    .restart local p7
    :catchall_209
    move-exception v6

    goto :goto_22b

    .end local v18    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local v15    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :catchall_20b
    move-exception v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x10

    if-eq v4, v3, :cond_21f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21f
    sget-object v5, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v4, "6fSXCo91bn6LAd9tVoL5ppajSHGCeKrb"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "7b6W6Np6OlCq8n45whdvZaRJ0dkqNrQI"

    const/4 v3, 0x3

    aput-object v4, v5, v3

    .line 57245
    .end local v15    # "source":Lcom/facebook/ads/redexgen/X/dX;
    .restart local v18    # "source":Lcom/facebook/ads/redexgen/X/dX;
    :goto_22b
    :try_start_22b
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dX;->close()V

    goto :goto_23b
    :try_end_22f
    .catch Lcom/facebook/ads/redexgen/X/dU; {:try_start_22b .. :try_end_22f} :catch_231
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22b .. :try_end_22f} :catch_22f

    .line 57246
    :catch_22f
    move-exception v3

    goto :goto_232

    :catch_231
    move-exception v3

    .line 57247
    .local v0, "e":Ljava/lang/Exception;
    :goto_232
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_23b

    .line 57248
    sget-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23b
    :goto_23b
    throw v6

    :cond_23c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/NB;)V
    .registers 8

    .line 57250
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NB;->A04()Ljava/io/File;

    move-result-object v1

    .line 57251
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 57252
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NB;->A06()V

    .line 57253
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 57254
    .local v1, "deleted":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_4a

    .line 57255
    sget-object v4, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x34

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_36

    .line 57256
    :catch_36
    move-exception v4

    .line 57257
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_4a

    .line 57258
    sget-object v3, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x17

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/NB;)Z
    .registers 7

    .line 57260
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NB;->A05()V

    goto :goto_35
    :try_end_4
    .catch Lcom/facebook/ads/redexgen/X/N8; {:try_start_0 .. :try_end_4} :catch_4

    .line 57261
    :catch_4
    move-exception v4

    .line 57262
    .local v0, "e":Lcom/facebook/ads/redexgen/X/N8;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2f

    sget-object v2, Lcom/facebook/ads/redexgen/X/NI;->A0A:[Ljava/lang/String;

    const-string v1, "AEs2mSbxTVyMZvMH4XlDgcN9VznTkYzp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2d

    .line 57263
    sget-object v3, Lcom/facebook/ads/redexgen/X/NI;->A0B:Ljava/lang/String;

    const/16 v2, 0xf4

    const/16 v1, 0x13

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57264
    :cond_2d
    const/4 v0, 0x0

    return v0

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57265
    :goto_35
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dM;)Lcom/facebook/ads/redexgen/X/dF;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/dJ;",
            "Lcom/facebook/ads/redexgen/X/dM<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/dF<",
            "TT;>;"
        }
    .end annotation

    .line 57266
    .local p1, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/dM;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    move-object v12, p2

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/dM;->A03()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    if-eqz v0, :cond_36

    .line 57267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Ljava/util/Map;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/dJ;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 57268
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_29

    .line 57269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/dJ;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/dY;->AIi(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/dJ;)V

    .line 57270
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/dM;->A00()Lcom/facebook/ads/redexgen/X/dG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/dG;->A4N(Ljava/io/File;Lcom/facebook/ads/redexgen/X/dY;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    return-object v0

    .line 57271
    :cond_29
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/dJ;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v5, v8}, Lcom/facebook/ads/redexgen/X/dY;->AIi(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/dJ;)V

    .line 57272
    new-instance v0, Lcom/facebook/ads/redexgen/X/dF;

    invoke-direct {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/dF;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 57273
    .end local v0    # "cachedFile":Ljava/io/File;
    :cond_36
    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/dJ;->A09:Ljava/lang/String;

    .line 57274
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/dJ;->A04:Ljava/lang/String;

    .line 57275
    .local v10, "extension":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/dN;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/dN;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57276
    .local v11, "md5FileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 57277
    :try_start_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Semaphore;

    .line 57278
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    if-nez v4, :cond_68

    .line 57279
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 57280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57281
    .end local v5    # "semaphore":Ljava/util/concurrent/Semaphore;
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_f5

    .line 57282
    :try_start_69
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 57283
    iget v11, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:I

    .line 57284
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/NI;->A02(Lcom/facebook/ads/redexgen/X/dJ;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/dM;)Ljava/io/File;

    move-result-object v2

    .line 57285
    .local v4, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_8f

    .line 57286
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/dM;->A00()Lcom/facebook/ads/redexgen/X/dG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/dY;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/dG;->A4N(Ljava/io/File;Lcom/facebook/ads/redexgen/X/dY;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v2
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_7f} :catch_a4
    .catchall {:try_start_69 .. :try_end_7f} :catchall_e4

    .line 57287
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 57289
    :try_start_85
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57290
    monitor-exit v1

    .line 57291
    return-object v2

    .line 57292
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v0

    .line 57293
    :cond_8f
    :try_start_8f
    new-instance v2, Lcom/facebook/ads/redexgen/X/dF;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/dF;-><init>(ZLjava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_94} :catch_a4
    .catchall {:try_start_8f .. :try_end_94} :catchall_e4

    .line 57294
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 57296
    :try_start_9a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57297
    monitor-exit v1

    .line 57298
    return-object v2

    .line 57299
    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a1

    throw v0

    .line 57300
    .local v4, "e":Ljava/lang/InterruptedException;
    :catch_a4
    :try_start_a4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Z

    if-eqz v0, :cond_cf

    .line 57301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x61

    const/16 v1, 0xb

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57302
    :cond_cf
    new-instance v2, Lcom/facebook/ads/redexgen/X/dF;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/dF;-><init>(ZLjava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_e4

    .line 57303
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57304
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 57305
    :try_start_da
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57306
    monitor-exit v1

    .line 57307
    return-object v2

    .line 57308
    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_e1

    throw v0

    .line 57309
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_e4
    move-exception v2

    .end local v4
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 57311
    :try_start_eb
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57312
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_f2

    .line 57313
    throw v2

    .line 57314
    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v0

    .line 57315
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v0
.end method

.method public final AJw(Lcom/facebook/ads/redexgen/X/dJ;Z)Lcom/facebook/ads/redexgen/X/dF;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dJ;",
            "Z)",
            "Lcom/facebook/ads/redexgen/X/dF<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 57316
    new-instance v1, Lcom/facebook/ads/redexgen/X/NP;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/dJ;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/dJ;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 57317
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A04()Z

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 57318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A03()Z

    move-result v5

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/NP;-><init>(IIZZZ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/dM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/dM;-><init>(Lcom/facebook/ads/redexgen/X/dG;)V

    .line 57319
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A08(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dM;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    return-object v0
.end method

.method public final AJx(Lcom/facebook/ads/redexgen/X/dJ;)Ljava/io/File;
    .registers 4

    .line 57320
    new-instance v0, Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NO;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/dM;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;-><init>(Lcom/facebook/ads/redexgen/X/dG;)V

    .line 57321
    .local v0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/dM;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/io/File;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;->A01(Z)V

    .line 57322
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;->A02(Z)V

    .line 57323
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/NI;->A08(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dM;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dF;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final AJy(Lcom/facebook/ads/redexgen/X/dJ;)Ljava/lang/String;
    .registers 4

    .line 57324
    new-instance v1, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NJ;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/dM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/dM;-><init>(Lcom/facebook/ads/redexgen/X/dG;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A08(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dM;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dF;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final AJz(Lcom/facebook/ads/redexgen/X/dJ;)Ljava/lang/String;
    .registers 4

    .line 57325
    new-instance v0, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NJ;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/dM;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;-><init>(Lcom/facebook/ads/redexgen/X/dG;)V

    .line 57326
    .local v0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/dM;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;->A01(Z)V

    .line 57327
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dM;->A02(Z)V

    .line 57328
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/NI;->A08(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dM;)Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dF;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass88 (com.facebook.ads.redexgen.X.88)
.class public final Lcom/facebook/ads/redexgen/X/88;
.super Lcom/facebook/ads/redexgen/X/NH;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 310
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rUhg5nWIULCK5t0gW05eAQLFFSPSWMvZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IWlot4Qxgt9kC5cL8sfJp7UuHzQVcIMi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pyGO9NZUXO3VfNbPYY8A9lbBjy3aVFuI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BR2eyutWjUUloqp0GJ1CKmWpDC9ci7iC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "R8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7OIMX1dy42ob61A4JIfUI17XWGQLX3ws"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f7SraaJMsc9s0A0ZVYKOMxYCK6pogew2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N778iUAZTctb3pJ5Cpi07oq2oMO9GnTO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/88;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/88;->A01()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    .line 23135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NH;-><init>()V

    .line 23136
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_c

    .line 23137
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/88;->A00:J

    .line 23138
    return-void

    .line 23139
    :cond_c
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/88;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/88;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/88;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_38

    sget-object v2, Lcom/facebook/ads/redexgen/X/88;->A02:[Ljava/lang/String;

    const-string v1, "gnOcZLWDvxdPQhFZXDuJbQjlKnJrGFNK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_32

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/88;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x47t
        -0x33t
        -0x1ct
        -0x74t
        -0x21t
        -0x2bt
        -0x1at
        -0x2ft
        -0x74t
        -0x27t
        -0x1ft
        -0x21t
        -0x20t
        -0x74t
        -0x32t
        -0x2ft
        -0x74t
        -0x24t
        -0x25t
        -0x21t
        -0x2bt
        -0x20t
        -0x2bt
        -0x1et
        -0x2ft
        -0x74t
        -0x26t
        -0x1ft
        -0x27t
        -0x32t
        -0x2ft
        -0x22t
        -0x73t
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/io/File;JI)Z
    .registers 8

    .line 23140
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/88;->A00:J

    cmp-long v0, p2, v1

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final bridge synthetic ALl(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23141
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NH;->ALl(Ljava/io/File;)V

    return-void
.end method
