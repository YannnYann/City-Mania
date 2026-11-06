###### Class com.facebook.ads.redexgen.X.AbstractC2753kh (com.facebook.ads.redexgen.X.kh)
.class public abstract Lcom/facebook/ads/redexgen/X/kh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kg;,
        Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;
    }
.end annotation


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2696
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "o8zuart55Bmx3Pw0EGryupigSLJoPiZx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bq35BXrVyo2MmN2pvK0AAoIbsBJXmHFn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ag4UQwTEuL9TJhKNxG6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PmxOul6ExA7xevKGmIJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bJjslG0QPgIDYXjJzGe0RXJuWF5PAt6I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GLZoSVJacutm5kJ9CSmVpuybEaBnhneX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dIwLXajRtHFv7I4e8IdUhcaSFtkhp8vw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TtnuuoV6cihzxwpt43jVepBLS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kh;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kh;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/kZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    .line 2697
    const/16 v2, 0xad

    const/16 v1, 0x34

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kh;->A00:Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;
    .registers 6

    .line 100228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_4b

    .line 100229
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/kh;->A01(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;

    move-result-object v4

    .line 100230
    .local v0, "info":Lcom/facebook/ads/redexgen/X/kZ;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/kZ;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kh;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/kh;->A02:[Ljava/lang/String;

    const-string v1, "uy9l7RLQ2P1HyKRuXc5qKTdvpqbxTZwF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_3a

    .line 100231
    :cond_36
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/kh;->A02(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;

    move-result-object v4

    .line 100232
    :cond_3a
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/kZ;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 100233
    :cond_46
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/kh;->A03(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;

    move-result-object v4

    .line 100234
    :cond_4a
    return-object v4

    .line 100235
    .end local v0    # "info":Lcom/facebook/ads/redexgen/X/kZ;
    :cond_4b
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;
    .registers 4

    .line 100236
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A05()Lcom/facebook/ads/redexgen/X/lF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lF;->A9a()Lcom/facebook/ads/redexgen/X/lE;

    move-result-object v0

    .line 100237
    .local v0, "adId":Lcom/facebook/ads/redexgen/X/lE;
    if-eqz v0, :cond_1a

    .line 100238
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lE;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lE;->ABF()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A03:Lcom/facebook/ads/redexgen/X/kY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kZ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/kZ;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/kY;)V

    .line 100239
    return-object v0

    .line 100240
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;
    .registers 10

    .line 100241
    sget-object v5, Lcom/facebook/ads/redexgen/X/kh;->A00:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v0, v3, v8

    .line 100242
    const/16 v2, 0x101

    const/16 v1, 0x1d

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/ki;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100243
    .local v0, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    if-nez v1, :cond_1c

    .line 100244
    return-object v6

    .line 100245
    :cond_1c
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v8

    .line 100246
    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100247
    .local v3, "connectionResult":Ljava/lang/Object;
    if-eqz v0, :cond_2e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 100248
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_2e
    return-object v6

    .line 100249
    :cond_2f
    new-array v5, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v8

    .line 100250
    const/16 v2, 0x41

    const/16 v1, 0x39

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe8

    const/16 v1, 0x14

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/ki;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100251
    .local v5, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-nez v1, :cond_50

    .line 100252
    return-object v6

    .line 100253
    :cond_50
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 100254
    .local v6, "advertisingInfo":Ljava/lang/Object;
    if-nez v7, :cond_5b

    .line 100255
    return-object v6

    .line 100256
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0xfc

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 100257
    .local v7, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0x11e

    const/16 v1, 0x18

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100258
    .local v8, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_86

    if-nez v1, :cond_87

    .line 100259
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/lA;
    .end local p1
    :cond_86
    return-object v6

    .line 100260
    :cond_87
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v7, v5, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100261
    .local p0, "id":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/Object;

    .line 100262
    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 100263
    .local p1, "limitAdTrackingEnabled":Ljava/lang/Boolean;
    if-eqz v2, :cond_ab

    .line 100264
    if-eqz v0, :cond_a9

    .line 100265
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a9

    :goto_a1
    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A07:Lcom/facebook/ads/redexgen/X/kY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kZ;

    invoke-direct {v0, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/kZ;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/kY;)V

    .line 100266
    return-object v0

    .line 100267
    :cond_a9
    const/4 v4, 0x0

    goto :goto_a1

    .line 100268
    :cond_ab
    return-object v6
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/lA;)Lcom/facebook/ads/redexgen/X/kZ;
    .registers 8

    .line 100269
    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/kg;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/kg;-><init>(Lcom/facebook/ads/redexgen/X/ke;)V

    .line 100270
    .local v0, "connection":Lcom/facebook/ads/redexgen/X/kg;
    const/16 v2, 0x7a

    const/16 v1, 0x33

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100271
    .local v2, "intent":Landroid/content/Intent;
    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100272
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v5, v0}, Lcom/facebook/ads/redexgen/X/lA;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 100273
    :try_start_28
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/kg;->A02()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 100274
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02()Ljava/lang/String;

    move-result-object v3

    .line 100275
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A03()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A08:Lcom/facebook/ads/redexgen/X/kY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kZ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/kZ;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/kY;)V
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_44

    .line 100276
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/lA;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100277
    return-object v0

    .line 100278
    .end local v3
    :catchall_44
    move-exception v4

    .line 100279
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_45
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v3

    const/16 v2, 0xe1

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A04(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/lf;->A1Q:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 100280
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    goto :goto_62
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_5d

    .line 100281
    :catchall_5d
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/lA;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100282
    throw v0

    .line 100283
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_62
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/lA;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100284
    :cond_65
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/kh;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .registers 4

    const/16 v0, 0x136

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/kh;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/kh;->A02:[Ljava/lang/String;

    const-string v1, "5c2qL4dH8BvO0Uzn9h0t1hzuT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "iopOujFX2mYmGwDZvEry"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_2c

    sput-object v3, Lcom/facebook/ads/redexgen/X/kh;->A01:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x70t
        0x52t
        0x5dt
        0x5dt
        0x5ct
        0x47t
        0x13t
        0x54t
        0x56t
        0x47t
        0x13t
        0x52t
        0x57t
        0x45t
        0x56t
        0x41t
        0x47t
        0x5at
        0x40t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x5at
        0x5dt
        0x55t
        0x5ct
        0x13t
        0x5ct
        0x5dt
        0x13t
        0x5et
        0x52t
        0x5at
        0x5dt
        0x13t
        0x47t
        0x5bt
        0x41t
        0x56t
        0x52t
        0x57t
        0x1dt
        0x5bt
        0x57t
        0x55t
        0x16t
        0x5ft
        0x57t
        0x57t
        0x5ft
        0x54t
        0x5dt
        0x16t
        0x59t
        0x56t
        0x5ct
        0x4at
        0x57t
        0x51t
        0x5ct
        0x16t
        0x5ft
        0x55t
        0x4bt
        0x52t
        0x5et
        0x5ct
        0x1ft
        0x56t
        0x5et
        0x5et
        0x56t
        0x5dt
        0x54t
        0x1ft
        0x50t
        0x5ft
        0x55t
        0x43t
        0x5et
        0x58t
        0x55t
        0x1ft
        0x56t
        0x5ct
        0x42t
        0x1ft
        0x50t
        0x55t
        0x42t
        0x1ft
        0x58t
        0x55t
        0x54t
        0x5ft
        0x45t
        0x58t
        0x57t
        0x58t
        0x54t
        0x43t
        0x1ft
        0x70t
        0x55t
        0x47t
        0x54t
        0x43t
        0x45t
        0x58t
        0x42t
        0x58t
        0x5ft
        0x56t
        0x78t
        0x55t
        0x72t
        0x5dt
        0x58t
        0x54t
        0x5ft
        0x45t
        0x6dt
        0x61t
        0x63t
        0x20t
        0x69t
        0x61t
        0x61t
        0x69t
        0x62t
        0x6bt
        0x20t
        0x6ft
        0x60t
        0x6at
        0x7ct
        0x61t
        0x67t
        0x6at
        0x20t
        0x69t
        0x63t
        0x7dt
        0x20t
        0x6ft
        0x6at
        0x7dt
        0x20t
        0x67t
        0x6at
        0x6bt
        0x60t
        0x7at
        0x67t
        0x68t
        0x67t
        0x6bt
        0x7ct
        0x20t
        0x7dt
        0x6bt
        0x7ct
        0x78t
        0x67t
        0x6dt
        0x6bt
        0x20t
        0x5dt
        0x5at
        0x4ft
        0x5ct
        0x5at
        0x12t
        0x1et
        0x1ct
        0x5ft
        0x16t
        0x1et
        0x1et
        0x16t
        0x1dt
        0x14t
        0x5ft
        0x10t
        0x1ft
        0x15t
        0x3t
        0x1et
        0x18t
        0x15t
        0x5ft
        0x16t
        0x1ct
        0x2t
        0x5ft
        0x12t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x5ft
        0x36t
        0x1et
        0x1et
        0x16t
        0x1dt
        0x14t
        0x21t
        0x1dt
        0x10t
        0x8t
        0x22t
        0x14t
        0x3t
        0x7t
        0x18t
        0x12t
        0x14t
        0x2t
        0x24t
        0x5t
        0x18t
        0x1dt
        0x43t
        0x41t
        0x4at
        0x41t
        0x56t
        0x4dt
        0x47t
        0x6at
        0x68t
        0x79t
        0x4ct
        0x69t
        0x7bt
        0x68t
        0x7ft
        0x79t
        0x64t
        0x7et
        0x64t
        0x63t
        0x6at
        0x44t
        0x69t
        0x44t
        0x63t
        0x6bt
        0x62t
        0x7bt
        0x79t
        0x68t
        0x55t
        0x78t
        0x21t
        0x3bt
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x18t
        0x24t
        0x29t
        0x31t
        0x1bt
        0x2dt
        0x3at
        0x3et
        0x21t
        0x2bt
        0x2dt
        0x3bt
        0x9t
        0x3et
        0x29t
        0x21t
        0x24t
        0x29t
        0x2at
        0x24t
        0x2dt
        0x2bt
        0x31t
        0xet
        0x2bt
        0x2ft
        0x2bt
        0x36t
        0x3t
        0x26t
        0x16t
        0x30t
        0x23t
        0x21t
        0x29t
        0x2bt
        0x2ct
        0x25t
        0x7t
        0x2ct
        0x23t
        0x20t
        0x2et
        0x27t
        0x26t
    .end array-data
.end method

###### Class com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo (com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo)
.class public final Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleAdInfo"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2695
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dlCQJjSx2v0yIAE7uR5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YVJONne7N3U8xm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eKTK4BSI8P33PVYq98zfXeBzSnXDY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oc9p6kWmaRe51UGQv0AehnzsYEIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vamZVSY5oxMc9Fm9XA4FwhL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 100188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100189
    iput-object p1, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    .line 100190
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_36

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x44

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x2at
        0x36t
        0x34t
        -0xbt
        0x2et
        0x36t
        0x36t
        0x2et
        0x33t
        0x2ct
        -0xbt
        0x28t
        0x35t
        0x2bt
        0x39t
        0x36t
        0x30t
        0x2bt
        -0xbt
        0x2et
        0x34t
        0x3at
        -0xbt
        0x28t
        0x2bt
        0x3at
        -0xbt
        0x30t
        0x2bt
        0x2ct
        0x35t
        0x3bt
        0x30t
        0x2dt
        0x30t
        0x2ct
        0x39t
        -0xbt
        0x30t
        0x35t
        0x3bt
        0x2ct
        0x39t
        0x35t
        0x28t
        0x33t
        -0xbt
        0x10t
        0x8t
        0x2bt
        0x3dt
        0x2ct
        0x39t
        0x3bt
        0x30t
        0x3at
        0x30t
        0x35t
        0x2et
        0x10t
        0x2bt
        0x1at
        0x2ct
        0x39t
        0x3dt
        0x30t
        0x2at
        0x2ct
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 100192
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 100193
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100194
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {v2, v1, v4, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100195
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 100196
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 100197
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 100198
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 100199
    if-eqz v0, :cond_2b

    :goto_2a
    return-object v0

    :cond_2b
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 100200
    .end local v2    # "id":Ljava/lang/String;
    :catchall_34
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 100201
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 100202
    throw v0
.end method

.method public final A03()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 100204
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 100205
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100206
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100207
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-interface {v2, v1, v5, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100208
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 100209
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 100210
    .local v2, "limitAdTracking":Z
    :goto_2a
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 100211
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 100212
    return v3

    .line 100213
    .end local v2    # "limitAdTracking":Z
    :catchall_31
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 100214
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 100215
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 100216
    iget-object v0, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    return-object v0
.end method
