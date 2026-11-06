###### Class com.facebook.ads.redexgen.X.C2387eg (com.facebook.ads.redexgen.X.eg)
.class public final Lcom/facebook/ads/redexgen/X/eg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2419
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "88AoqknPZ4rnlocmRSd1iIvU160OI6Up"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Xa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c0t0ITAkOrWkNbi2AOUUle7x7Lv9c02n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B7XNNyfmW5R2wceLmJkXAkDES3fZG3Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MUV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NALjFYAH0tlSEiNw3RaQSfKZY5jyxbRm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XF7p93xq3OHri6co5HggQunfVTz3vEaG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n2FdIZz9zx79PfKUryB9rXi8CBHMM9xX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/eg;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eg;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/eg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eg;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 88307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/fT;)Lcom/facebook/ads/redexgen/X/ef;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/fT;",
            ")",
            "Lcom/facebook/ads/redexgen/X/ef;"
        }
    .end annotation

    .line 88308
    .local p5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p0, p5

    invoke-static/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/eg;->A01(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/fT;)Lcom/facebook/ads/redexgen/X/ef;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/fT;)Lcom/facebook/ads/redexgen/X/ef;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/facebook/ads/redexgen/X/fT;",
            ")",
            "Lcom/facebook/ads/redexgen/X/ef;"
        }
    .end annotation

    .line 88309
    .local p7, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object/from16 v13, p3

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 88310
    :cond_b
    return-object v9

    .line 88311
    :cond_c
    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 88312
    .local v12, "action":Ljava/lang/String;
    const/16 v2, 0x71

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88313
    .local v13, "videoURL":Ljava/lang/String;
    const/16 v2, 0x2d

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88314
    .local p0, "dataJson":Ljava/lang/String;
    move-object v10, p0

    move-object/from16 p0, p4

    if-eqz v5, :cond_97

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/eg;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_49

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/eg;->A01:[Ljava/lang/String;

    const-string v1, "ISDJ842CIGTTmPHzT0dMVnvZcLrwzpZ1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v4, :cond_97

    .line 88315
    :try_start_52
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88316
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 88317
    .local v2, "dataIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 88318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88319
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_6b} :catch_71

    :try_start_6b
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_6f} :catch_6f

    .line 88320
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "dataIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_6f
    move-exception v5

    goto :goto_72

    :catch_71
    move-exception v5

    .line 88321
    .local v0, "e":Lorg/json/JSONException;
    :goto_72
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/lf;->A23:I

    new-instance v4, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 88322
    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 88323
    sget-object v4, Lcom/facebook/ads/redexgen/X/eg;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88324
    :cond_97
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    move-object v11, p1

    invoke-static {v11, v0}, Lcom/facebook/ads/redexgen/X/em;->A00(Lcom/facebook/ads/redexgen/X/nG;Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/em;

    move-result-object p1

    .line 88325
    .local v0, "userReturnTracker":Lcom/facebook/ads/redexgen/X/em;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_148

    :cond_a7
    const/4 v0, -0x1

    :goto_a8
    move-object/from16 v12, p2

    move/from16 p2, p5

    packed-switch v0, :pswitch_data_156

    .line 88326
    new-instance v0, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 88327
    :sswitch_b5
    const/16 v2, 0x37

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x1

    goto :goto_a8

    :sswitch_c7
    const/16 v2, 0x52

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x0

    goto :goto_a8

    :sswitch_d8
    const/16 v2, 0x47

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x2

    goto :goto_a8

    .line 88328
    :pswitch_ea
    new-instance v9, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/MG;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v9

    .line 88329
    :pswitch_f0
    const/16 v2, 0x31

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88330
    .local v9, "onsite":Ljava/lang/String;
    const/16 v2, 0x6d

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 88331
    new-instance v9, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;Z)V

    return-object v9

    .line 88332
    :cond_112
    if-eqz p6, :cond_11a

    .line 88333
    new-instance v9, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/7v;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v9

    .line 88334
    :cond_11a
    new-instance v9, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/7u;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;Z)V

    return-object v9

    .line 88335
    .end local v9    # "onsite":Ljava/lang/String;
    :pswitch_120
    if-eqz v8, :cond_123

    .line 88336
    return-object v9

    .line 88337
    :cond_123
    if-eqz p6, :cond_13f

    .line 88338
    const/16 v2, 0x57

    const/16 v1, 0x16

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13f

    .line 88339
    new-instance v9, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/7v;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v9

    .line 88340
    :cond_13f
    new-instance v9, Lcom/facebook/ads/redexgen/X/7w;

    move-object/from16 p3, p7

    invoke-direct/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/7w;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;ZLcom/facebook/ads/redexgen/X/fT;)V

    return-object v9

    nop

    :sswitch_data_148
    .sparse-switch
        -0x56f35e6c -> :sswitch_d8
        0x68af8e1 -> :sswitch_c7
        0x5c27a0cf -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_120
        :pswitch_f0
        :pswitch_ea
    .end packed-switch
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/eg;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x7a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/eg;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x6ft
        0x54t
        0x5bt
        0x58t
        0x56t
        0x5ft
        0x1at
        0x4et
        0x55t
        0x1at
        0x4at
        0x5bt
        0x48t
        0x49t
        0x5ft
        0x1at
        0x50t
        0x49t
        0x55t
        0x54t
        0x1at
        0x5et
        0x5bt
        0x4et
        0x5bt
        0x1at
        0x53t
        0x54t
        0x1at
        0x7bt
        0x5et
        0x7bt
        0x59t
        0x4et
        0x53t
        0x55t
        0x54t
        0x7ct
        0x5bt
        0x59t
        0x4et
        0x55t
        0x48t
        0x43t
        0x14t
        0x13t
        0x16t
        0x3t
        0x16t
        0x52t
        0x53t
        0x4et
        0x54t
        0x49t
        0x58t
        0x41t
        0x5et
        0x4bt
        0x40t
        0x71t
        0x42t
        0x47t
        0x40t
        0x45t
        0x62t
        0x73t
        0x60t
        0x61t
        0x7bt
        0x7ct
        0x75t
        0x1bt
        0xat
        0x18t
        0x18t
        0x1ft
        0x3t
        0x19t
        0x4t
        0x1et
        0xct
        0x3t
        0x27t
        0x20t
        0x3bt
        0x26t
        0x31t
        0x28t
        0x2ft
        0x34t
        0x29t
        0x3et
        0x4t
        0x2et
        0x29t
        0x37t
        0x4t
        0x2ct
        0x3et
        0x39t
        0x4t
        0x3dt
        0x3at
        0x37t
        0x37t
        0x39t
        0x3at
        0x38t
        0x30t
        0x31t
        0x37t
        0x30t
        0x20t
        0x7bt
        0x64t
        0x69t
        0x68t
        0x62t
        0x52t
        0x78t
        0x7ft
        0x61t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;)Z
    .registers 4

    .line 88341
    const/16 v2, 0x52

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 88342
    const/16 v2, 0x37

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    .line 88343
    :goto_20
    return v0

    .line 88344
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

###### Class com.facebook.ads.redexgen.X.C14127t (com.facebook.ads.redexgen.X.7t)
.class public final Lcom/facebook/ads/redexgen/X/7t;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 302
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7t;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7t;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/em;",
            "Z)V"
        }
    .end annotation

    .line 22584
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/em;Z)V

    .line 22585
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Landroid/net/Uri;

    .line 22586
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:Ljava/util/Map;

    .line 22587
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7t;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7t;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x7at
        0x5dt
        0x55t
        0x50t
        0x59t
        0x58t
        0x1ct
        0x48t
        0x53t
        0x1ct
        0x53t
        0x4ct
        0x59t
        0x52t
        0x1ct
        0x50t
        0x55t
        0x52t
        0x57t
        0x1ct
        0x49t
        0x4et
        0x50t
        0x6t
        0x1ct
        0x2bt
        0x2et
        0x29t
        0x2ct
    .end array-data
.end method


# virtual methods
.method public final A0J()Lcom/facebook/ads/redexgen/X/ec;
    .registers 6

    .line 22588
    sget-object v4, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22589
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Z

    if-eqz v0, :cond_39

    .line 22590
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7t;->A0O()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v4

    .line 22591
    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A03:Lcom/facebook/ads/redexgen/X/ec;

    if-eq v4, v0, :cond_39

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:Ljava/util/Map;

    if-eqz v0, :cond_39

    .line 22592
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Landroid/net/Uri;

    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22593
    .local v1, "link":Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 22594
    :try_start_23
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 22595
    .local v2, "parsedLink":Landroid/net/Uri;
    if-eqz v3, :cond_39

    .line 22596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ti;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ti;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ti;->A03(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ti;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_39

    .line 22597
    .end local v1    # "link":Ljava/lang/String;
    .end local v2    # "parsedLink":Landroid/net/Uri;
    :catch_39
    :cond_39
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:Ljava/util/Map;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/MH;->A0L(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ec;)V

    .line 22598
    return-object v4
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/ec;
    .registers 8

    .line 22599
    sget-object v6, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22600
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    :try_start_2
    new-instance v5, Lcom/facebook/ads/redexgen/X/pK;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/pK;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Landroid/net/Uri;

    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7t;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 22601
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A03:Ljava/lang/String;

    .line 22602
    invoke-static {v5, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/pK;->A0D(Lcom/facebook/ads/redexgen/X/pK;Lcom/facebook/ads/redexgen/X/Hi;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_43
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_22

    .line 22603
    .local v1, "ex":Ljava/lang/Exception;
    :catch_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22604
    sget-object v6, Lcom/facebook/ads/redexgen/X/ec;->A03:Lcom/facebook/ads/redexgen/X/ec;

    .line 22605
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_43
    return-object v6
.end method

###### Class com.facebook.ads.redexgen.X.C14137u (com.facebook.ads.redexgen.X.7u)
.class public final Lcom/facebook/ads/redexgen/X/7u;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 303
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EO73VH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qgz5bq7vpM6wgaeZrwJ0N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K0RixItTLV229tIQ9volfY9Fr2yfBG4Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0XJd0xzB9RaoqzSBbOWrwbmO5Qd7B1Hm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cDFQfUnzrKwrnb1BC8KnyL9IHyRAK9fC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q7Q0M0vYffDRrtcuJmKxnq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hygqtGcON2Cep"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7u;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7u;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7u;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/em;",
            "Z)V"
        }
    .end annotation

    .line 22606
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/em;Z)V

    .line 22607
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7u;->A00:Landroid/net/Uri;

    .line 22608
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    .line 22609
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7u;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/16 v0, 0x2b

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/7u;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/7u;->A03:[Ljava/lang/String;

    const-string v1, "z2LBMWL3UZ6mgEOfq1wT6wdWGhdUBaxY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LNV6u0tAGiEAXpu6l5ZCQkq7c5KJBKxy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_2a

    sput-object v3, Lcom/facebook/ads/redexgen/X/7u;->A02:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        0xet
        0x29t
        0x31t
        0x34t
        0x2dt
        0x2ct
        -0x18t
        0x3ct
        0x37t
        -0x18t
        0x37t
        0x38t
        0x2dt
        0x36t
        -0x18t
        0x34t
        0x31t
        0x36t
        0x33t
        -0x18t
        0x3dt
        0x3at
        0x34t
        0x2t
        -0x18t
        -0xet
        -0x11t
        -0xct
        -0xft
        0x23t
        0x1ct
        0x17t
        0x24t
        0x13t
        0x20t
        0x21t
        0xft
        0x1at
        0xdt
        0x1at
        0x17t
        0x1ct
        0x19t
    .end array-data
.end method


# virtual methods
.method public final A0J()Lcom/facebook/ads/redexgen/X/ec;
    .registers 4

    .line 22610
    sget-object v2, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22611
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Z

    if-eqz v0, :cond_a

    .line 22612
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7u;->A0O()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v2

    .line 22613
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    .line 22614
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0j(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/ec;Ljava/util/Map;)Z

    move-result v0

    .line 22615
    .local v1, "clickFilteringEnabled":Z
    if-nez v0, :cond_19

    .line 22616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/MH;->A0L(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ec;)V

    .line 22617
    :cond_19
    return-object v2
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/ec;
    .registers 6

    .line 22618
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A00:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0M(Landroid/net/Uri;)Z

    move-result v0

    .line 22619
    .local v1, "redirectedToApp":Z
    if-eqz v0, :cond_2b

    .line 22620
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7u;->A00:Landroid/net/Uri;

    const/16 v2, 0x1d

    const/16 v1, 0xe

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22621
    .local v2, "deeplink":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    if-eqz v0, :cond_28

    .line 22622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ti;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ti;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ti;->A03(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ti;

    .line 22623
    :cond_28
    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A09:Lcom/facebook/ads/redexgen/X/ec;

    return-object v0

    .line 22624
    .end local v2    # "deeplink":Ljava/lang/String;
    :cond_2b
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7u;->A00:Landroid/net/Uri;

    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22625
    .local v2, "link":Ljava/lang/String;
    const/4 v4, 0x0

    .line 22626
    .local v3, "parsedLink":Landroid/net/Uri;
    :try_start_3b
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 22627
    new-instance v3, Lcom/facebook/ads/redexgen/X/pK;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/pK;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    .line 22628
    invoke-static {v3, v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/pK;->A06(Lcom/facebook/ads/redexgen/X/pK;Lcom/facebook/ads/redexgen/X/Hi;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v3

    .line 22629
    goto :goto_70
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4f} :catch_4f

    .line 22630
    .local v4, "ex":Ljava/lang/Exception;
    :catch_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22631
    sget-object v3, Lcom/facebook/ads/redexgen/X/ec;->A03:Lcom/facebook/ads/redexgen/X/ec;

    .line 22632
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_70
    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A03:Lcom/facebook/ads/redexgen/X/ec;

    if-eq v3, v0, :cond_8a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    if-eqz v0, :cond_8a

    if-eqz v4, :cond_8a

    .line 22633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7u;->A01:Ljava/util/Map;

    new-instance v2, Lcom/facebook/ads/redexgen/X/ti;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/ti;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ti;->A03(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ti;

    .line 22634
    :cond_8a
    return-object v3
.end method

###### Class com.facebook.ads.redexgen.X.C14157w (com.facebook.ads.redexgen.X.7w)
.class public final Lcom/facebook/ads/redexgen/X/7w;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Landroid/net/Uri;

.field public final A02:Lcom/facebook/ads/redexgen/X/fT;

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 305
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eZwrQOnpnpQE2xbRo0zNjy7tlobdqdqH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SFt7WwZUn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NjRPf9lXQVcUlHZaPZ2tHyzwDKEOZm5m"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vsw9aGbGyLBdbL44W3z8tEYPUFR7w9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bZApvv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GYK1wV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jBSwIULngy0dc0IzE6SbgF9ev3BAFzHy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9HFC3JFq8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7w;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7w;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/em;ZLcom/facebook/ads/redexgen/X/fT;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/em;",
            "Z",
            "Lcom/facebook/ads/redexgen/X/fT;",
            ")V"
        }
    .end annotation

    .line 22648
    .local p5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/em;Z)V

    .line 22649
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    .line 22650
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    .line 22651
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/fT;

    .line 22652
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ek;)Landroid/content/Intent;
    .registers 11

    .line 22653
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    .line 22654
    return-object v8

    .line 22655
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A03()Ljava/lang/String;

    move-result-object v4

    .line 22656
    .local v0, "appLinkUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/q9;->A04(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 22657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/7w;->A09(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 22658
    return-object v8

    .line 22659
    :cond_25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 22660
    const/16 v2, 0xfa

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/16 v2, 0xfe

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 22661
    :cond_4a
    const/16 v2, 0x3e

    const/16 v1, 0x1a

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 22662
    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 22663
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_67

    .line 22664
    return-object v8

    .line 22665
    :cond_67
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 22666
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 22667
    :cond_80
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7w;->A01(Lcom/facebook/ads/redexgen/X/ek;)Landroid/content/Intent;

    move-result-object v3

    .line 22668
    .local v3, "unresolvedAppIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 22669
    .local v4, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f2

    .line 22670
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const-string v1, "mdy3DwQER"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "z4eGZXaiq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_f2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 22671
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_94

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_94

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_94

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22672
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 22673
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22674
    :cond_f2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_114

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_114
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const-string v1, "8xekkGfEbM0UNtDVsVek4v0mq2iI8UOu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_12d

    .line 22675
    :cond_11d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/7w;->A09(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 22676
    return-object v8

    .line 22677
    :cond_126
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22678
    :cond_12d
    return-object v3
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ek;)Landroid/content/Intent;
    .registers 6

    .line 22679
    const/16 v2, 0x58

    const/16 v1, 0x1a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22680
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22681
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 22682
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 22683
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A05()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22684
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22685
    :cond_38
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 22686
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ek;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22687
    :cond_4d
    return-object v3
.end method

.method private final A02()Landroid/net/Uri;
    .registers 6

    .line 22688
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    const/16 v2, 0xdb

    const/16 v1, 0x9

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22689
    .local v0, "storeUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 22690
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 22691
    :cond_1b
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    const/16 v2, 0xd3

    const/16 v1, 0x8

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22692
    .local v1, "storeId":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    .line 22693
    const/16 v2, 0x7e

    const/16 v1, 0x16

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22694
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/ec;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p6;
        }
    .end annotation

    .line 22695
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:Ljava/lang/String;

    .line 22696
    new-instance v3, Lcom/facebook/ads/redexgen/X/pK;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/pK;-><init>()V

    .line 22697
    .local v1, "uriLauncher":Lcom/facebook/ads/redexgen/X/pK;
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A02()Landroid/net/Uri;

    move-result-object v5

    .line 22698
    .local v2, "marketUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    .line 22699
    invoke-static {v3, v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/pK;->A06(Lcom/facebook/ads/redexgen/X/pK;Lcom/facebook/ads/redexgen/X/Hi;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v1

    .line 22700
    .local v3, "outcome":Lcom/facebook/ads/redexgen/X/ec;
    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    if-eq v1, v0, :cond_25

    .line 22701
    if-eqz v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move-object v0, v4

    goto :goto_23

    :goto_1f
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:Ljava/lang/String;

    .line 22702
    :cond_25
    return-object v1
    :try_end_26
    .catch Lcom/facebook/ads/redexgen/X/p6; {:try_start_8 .. :try_end_26} :catch_26

    .line 22703
    .end local v2    # "marketUri":Landroid/net/Uri;
    .end local v3    # "outcome":Lcom/facebook/ads/redexgen/X/ec;
    .local v2, "ex":Lcom/facebook/ads/redexgen/X/p6;
    :catch_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v1, 0x1b

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22704
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    const/16 v2, 0xe4

    const/16 v1, 0x16

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22705
    .local v3, "fallbackUrl":Ljava/lang/String;
    if-eqz v6, :cond_90

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_74

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_74
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const-string v1, "UmbMkLHRt7mU5WI1cGYqu3JtAtwRZWLm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v5, :cond_90

    .line 22706
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 22707
    .local v4, "fallbackUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A03:Ljava/lang/String;

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/pK;->A0E(Lcom/facebook/ads/redexgen/X/pK;Lcom/facebook/ads/redexgen/X/Hi;Landroid/net/Uri;Ljava/lang/String;)V

    .line 22708
    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8e
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:Ljava/lang/String;

    .line 22709
    .end local v4    # "fallbackUri":Landroid/net/Uri;
    :cond_90
    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/7w;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_38

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x1b

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_32

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const-string v1, "uqLwDcTKX4SWJds2FMBMp5QNw2MnWtU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ek;",
            ">;"
        }
    .end annotation

    .line 22710
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    const/16 v2, 0x72

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22711
    .local v0, "appsiteDataString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v2, 0x35

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 22712
    .end local v1
    :cond_25
    const/4 v0, 0x0

    return-object v0

    .line 22713
    :cond_27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22714
    .local v1, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    :try_start_2c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22715
    .local v2, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x37

    const/4 v1, 0x7

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 22716
    .local v3, "appsiteDataArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_7f

    .line 22717
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7f

    .line 22718
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ek;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/ek;

    move-result-object v0

    .line 22719
    .local v5, "appSiteData":Lcom/facebook/ads/redexgen/X/ek;
    if-eqz v0, :cond_54

    .line 22720
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22721
    .end local v5    # "appSiteData":Lcom/facebook/ads/redexgen/X/ek;
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_41
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_57} :catch_57

    .line 22722
    :catch_57
    move-exception v7

    .line 22723
    .local v2, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    .line 22724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/lf;->A24:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 22725
    const/16 v2, 0xcc

    const/4 v1, 0x7

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 22726
    sget-object v3, Lcom/facebook/ads/redexgen/X/7w;->A06:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22727
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_7f
    return-object v6
.end method

.method private final A06()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 22728
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A05()Ljava/util/List;

    move-result-object v0

    .line 22729
    .local v0, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22730
    .local v1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v0, :cond_25

    .line 22731
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ek;

    .line 22732
    .local p0, "appSiteData":Lcom/facebook/ads/redexgen/X/ek;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/ek;)Landroid/content/Intent;

    move-result-object v0

    .line 22733
    .local p1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_f

    .line 22734
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 22735
    :cond_25
    return-object v2
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x116

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7w;->A04:[B

    return-void

    :array_a
    .array-data 1
        0x6at
        -0x69t
        -0x69t
        -0x6ct
        -0x69t
        0x45t
        -0x6bt
        -0x7at
        -0x69t
        -0x68t
        -0x72t
        -0x6dt
        -0x74t
        0x45t
        -0x7at
        -0x6bt
        -0x6bt
        -0x68t
        -0x72t
        -0x67t
        -0x76t
        -0x7ct
        -0x77t
        -0x7at
        -0x67t
        -0x7at
        -0x7ct
        -0x61t
        -0x59t
        -0x56t
        -0x5dt
        -0x5et
        0x5et
        -0x4et
        -0x53t
        0x5et
        -0x53t
        -0x52t
        -0x5dt
        -0x54t
        0x5et
        -0x55t
        -0x61t
        -0x50t
        -0x57t
        -0x5dt
        -0x4et
        0x5et
        -0x4dt
        -0x50t
        -0x56t
        0x78t
        0x5et
        -0x1dt
        -0x1bt
        -0x5t
        0x8t
        -0x2t
        0xct
        0x9t
        0x3t
        -0x2t
        -0x6ct
        -0x5ft
        -0x69t
        -0x5bt
        -0x5et
        -0x64t
        -0x69t
        0x61t
        -0x64t
        -0x5ft
        -0x59t
        -0x68t
        -0x5ft
        -0x59t
        0x61t
        -0x6ct
        -0x6at
        -0x59t
        -0x64t
        -0x5et
        -0x5ft
        0x61t
        0x77t
        0x7ct
        0x74t
        0x7ft
        -0x5et
        -0x51t
        -0x5bt
        -0x4dt
        -0x50t
        -0x56t
        -0x5bt
        0x6ft
        -0x56t
        -0x51t
        -0x4bt
        -0x5at
        -0x51t
        -0x4bt
        0x6ft
        -0x5et
        -0x5ct
        -0x4bt
        -0x56t
        -0x50t
        -0x51t
        0x6ft
        -0x69t
        -0x76t
        -0x7at
        -0x68t
        -0x8t
        0x7t
        0x7t
        0xat
        0x0t
        0xbt
        -0x4t
        -0xat
        -0x5t
        -0x8t
        0xbt
        -0x8t
        -0x3t
        -0xft
        0x2t
        -0x5t
        -0xbt
        0x4t
        -0x36t
        -0x41t
        -0x41t
        -0xct
        -0xbt
        0x4t
        -0xft
        -0x7t
        -0x4t
        0x3t
        -0x31t
        -0x7t
        -0xct
        -0x33t
        -0x4bt
        0x3t
        -0x1at
        -0x19t
        -0x24t
        -0x1bt
        -0x24t
        -0x25t
        -0x2at
        -0x25t
        -0x24t
        -0x24t
        -0x19t
        -0x1dt
        -0x20t
        -0x1bt
        -0x1et
        -0x6ct
        -0x6bt
        -0x76t
        -0x6dt
        -0x76t
        -0x77t
        -0x7ct
        -0x68t
        -0x67t
        -0x6ct
        -0x69t
        -0x76t
        -0x7ct
        -0x75t
        -0x7at
        -0x6ft
        -0x6ft
        -0x79t
        -0x7at
        -0x78t
        -0x70t
        -0x7ct
        -0x66t
        -0x69t
        -0x6ft
        -0x26t
        -0x25t
        -0x30t
        -0x27t
        -0x30t
        -0x31t
        -0x36t
        -0x22t
        -0x21t
        -0x26t
        -0x23t
        -0x30t
        -0x36t
        -0x20t
        -0x23t
        -0x29t
        -0x46t
        -0x55t
        -0x44t
        -0x43t
        -0x4dt
        -0x48t
        -0x4ft
        -0x33t
        -0x32t
        -0x37t
        -0x34t
        -0x41t
        -0x47t
        -0x3dt
        -0x42t
        -0xat
        -0x9t
        -0xet
        -0xbt
        -0x18t
        -0x1et
        -0x8t
        -0xbt
        -0x11t
        -0x60t
        -0x5ft
        -0x64t
        -0x61t
        -0x6et
        -0x74t
        -0x5et
        -0x61t
        -0x67t
        -0x74t
        -0x5ct
        -0x6et
        -0x71t
        -0x74t
        -0x6dt
        -0x72t
        -0x67t
        -0x67t
        -0x71t
        -0x72t
        -0x70t
        -0x68t
        -0x5at
        -0x69t
        -0x62t
        0x6ct
        -0x48t
        -0x57t
        -0x50t
        -0x4ct
        -0x4at
        -0x4dt
        -0x4ft
        -0x4ct
        -0x48t
        0x7et
        -0x3dt
        -0x44t
        -0x49t
        -0x3ct
        -0x4dt
        -0x40t
        -0x3ft
        -0x51t
        -0x46t
        -0x53t
        -0x46t
        -0x49t
        -0x44t
        -0x47t
    .end array-data
.end method

.method private A08()Z
    .registers 5

    .line 22736
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A06()Ljava/util/List;

    move-result-object v0

    .line 22737
    .local v0, "appLaunchIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 22738
    return v3

    .line 22739
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_c
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 22740
    .local v3, "appLaunchIntent":Landroid/content/Intent;
    :try_start_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/p8;->A0F(Lcom/facebook/ads/redexgen/X/Hi;Landroid/content/Intent;)Z

    move-result v0

    .line 22741
    .local p0, "result":Z
    if-eqz v0, :cond_c

    .line 22742
    const/4 v0, 0x1

    return v0

    .line 22743
    :cond_22
    return v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_c
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;)Z
    .registers 4

    .line 22744
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_29

    if-eqz p1, :cond_29

    .line 22745
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/mv;->A29(Landroid/content/Context;)Z

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2b

    sget-object p0, Lcom/facebook/ads/redexgen/X/7w;->A05:[Ljava/lang/String;

    const-string v1, "1LqNNd92i"

    const/4 v0, 0x7

    aput-object v1, p0, v0

    const-string v1, "QkgxMECyk"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    .line 22746
    :goto_28
    return v0

    .line 22747
    :cond_29
    const/4 v0, 0x0

    goto :goto_28

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0J()Lcom/facebook/ads/redexgen/X/ec;
    .registers 7

    .line 22748
    sget-object v5, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22749
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Z

    if-eqz v0, :cond_17

    .line 22750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7w;->A0O()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v5

    .line 22751
    :goto_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/MH;->A0L(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ec;)V

    .line 22752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/fT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/fT;->A06(Lcom/facebook/ads/redexgen/X/fT;Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 22753
    return-object v5

    .line 22754
    :cond_17
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbc

    const/16 v1, 0x10

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/ec;
    .registers 7

    .line 22755
    sget-object v5, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22756
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    const/16 v2, 0x94

    const/16 v1, 0xf

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 22757
    .local v1, "redirectionAction":Ljava/lang/String;
    const/4 v4, 0x0

    .line 22758
    .local v2, "destinationUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/MH;->A0M(Landroid/net/Uri;)Z

    move-result v1

    .line 22759
    .local v3, "redirectedToApp":Z
    if-nez v1, :cond_19

    .line 22760
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A08()Z

    move-result v1

    .line 22761
    :cond_19
    if-eqz v1, :cond_42

    .line 22762
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Landroid/net/Uri;

    const/16 v3, 0x108

    const/16 v2, 0xe

    const/16 v1, 0x33

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22763
    .end local v4
    :goto_2b
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ti;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ti;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ef;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/ti;->A03(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ti;

    .line 22765
    return-object v5

    .line 22766
    :cond_42
    :try_start_42
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A03()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v5

    .line 22767
    sget-object v1, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    if-eq v5, v1, :cond_57

    const/16 v3, 0xbc

    const/16 v2, 0x10

    const/16 v1, 0x50

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 22768
    :goto_54
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:Ljava/lang/String;

    goto :goto_2b

    .line 22769
    :cond_57
    const/16 v3, 0xa3

    const/16 v2, 0x19

    const/16 v1, 0xa

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7w;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_54
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_62} :catch_62

    .line 22770
    .local v4, "e":Ljava/lang/Exception;
    :catch_62
    sget-object v5, Lcom/facebook/ads/redexgen/X/ec;->A03:Lcom/facebook/ads/redexgen/X/ec;

    goto :goto_2b
.end method
