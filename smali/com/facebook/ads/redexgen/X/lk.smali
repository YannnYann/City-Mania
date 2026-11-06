###### Class com.facebook.ads.redexgen.X.AbstractC2816lk (com.facebook.ads.redexgen.X.lk)
.class public abstract Lcom/facebook/ads/redexgen/X/lk;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2927
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a6IxlCkVmcf1QOD6ZYjDV7INHBfwC5pE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pjHGmgbtiOqji60ouNqSwKm8iDwdL2il"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jT1wBn6CKnjHaXeX1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "64rNhN6ZFhDWGxpIQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ze8vByysvbBiliYVuotBM6Di85tpEUzv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oRRmyqjSmqskFAvbDRZ10d57ZrKFDjEI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "44vbl6FfanMIMy7ytQNCDD1eXfOrnFTF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rkbwsxy0OcV7GrP7ELmdkRDeQR2uGuGh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lk;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lk;->A02()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length v0, v3

    if-ge p0, v0, :cond_37

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/lk;->A01:[Ljava/lang/String;

    const-string v1, "1M2Y98BwTvEPUGLlCwxj254fliWahs1n"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "azYACSqPfJkxfvivKERNz1YXvsYHtm8K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x44

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/lA;JJJJILjava/lang/Exception;)Lorg/json/JSONObject;
    .registers 20

    .line 101974
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 101975
    .local v1, "additionalData":Lorg/json/JSONObject;
    :try_start_5
    const/16 v2, 0x45

    const/16 v1, 0xa

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_8c

    :try_start_f
    invoke-virtual {v5, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101976
    const/16 v2, 0x15

    const/16 v1, 0x8

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_1c} :catch_8a

    long-to-double v1, p3

    const-wide v7, 0x408f400000000000L    # 1000.0

    sget-object v3, Lcom/facebook/ads/redexgen/X/lk;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x61

    if-eq v3, v0, :cond_84

    sget-object v4, Lcom/facebook/ads/redexgen/X/lk;->A01:[Ljava/lang/String;

    const-string v3, "jMg5lz9yrKYKrG7ow7Rg5ttUcJr1AiZd"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    const-string v3, "pmFVBxkrFRXwpMq5qFraASgBsRnTrBpW"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    div-double/2addr v1, v7

    :try_start_3d
    invoke-virtual {v5, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101977
    const/16 v2, 0x39

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4a} :catch_82

    :try_start_4a
    invoke-virtual {v5, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101978
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_57} :catch_80

    :try_start_57
    move-wide/from16 v1, p7

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101979
    const/16 v2, 0x22

    const/16 v1, 0x10

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_66} :catch_8e

    :try_start_66
    move/from16 v1, p9

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101980
    if-eqz p10, :cond_96

    .line 101981
    const/16 v2, 0x1d

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_96
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_7e} :catch_7e

    .line 101982
    :catch_7e
    move-exception v1

    goto :goto_8f

    :catch_80
    move-exception v1

    goto :goto_8f

    :catch_82
    move-exception v1

    goto :goto_8f

    :cond_84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_8a
    move-exception v1

    goto :goto_8f

    :catch_8c
    move-exception v1

    goto :goto_8f

    :catch_8e
    move-exception v1

    .line 101983
    .local v0, "e":Lorg/json/JSONException;
    :goto_8f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101984
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_96
    :goto_96
    return-object v5
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A00:[B

    return-void

    :array_a
    .array-data 1
        -0x2ft
        -0xct
        -0x14t
        -0x14t
        -0x12t
        -0xdt
        -0x14t
        -0x5bt
        -0x2dt
        -0x16t
        -0x7t
        -0x4t
        -0xct
        -0x9t
        -0x10t
        -0x5bt
        -0x36t
        -0x5t
        -0x16t
        -0xdt
        -0x7t
        -0x34t
        -0x23t
        -0x26t
        -0x37t
        -0x24t
        -0x2ft
        -0x29t
        -0x2at
        0x1ct
        0x29t
        0x29t
        0x26t
        0x29t
        -0x9t
        0x3t
        0x3t
        -0x1t
        -0x12t
        0x2t
        0x3t
        -0x10t
        0x3t
        0x4t
        0x2t
        -0x12t
        -0xet
        -0x2t
        -0xdt
        -0xct
        0x16t
        0xdt
        0x1ct
        0x1ft
        0x17t
        0x1at
        0x13t
        -0x26t
        -0x35t
        -0x1dt
        -0x2at
        -0x27t
        -0x35t
        -0x32t
        -0x37t
        -0x23t
        -0x2dt
        -0x1ct
        -0x31t
        0xft
        0x10t
        -0x3t
        0xet
        0x10t
        -0x5t
        0x10t
        0x5t
        0x9t
        0x1t
        -0x28t
        -0x2dt
        -0x31t
        -0x2et
        -0x3ct
        -0x39t
        -0x3et
        -0x2at
        -0x34t
        -0x23t
        -0x38t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/lA;JJJJILjava/lang/Exception;)V
    .registers 17

    .line 101985
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;)V

    .line 101986
    .local v0, "deLogData":Lcom/facebook/ads/redexgen/X/lg;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/lg;->A05(I)V

    .line 101987
    invoke-static/range {p0 .. p10}, Lcom/facebook/ads/redexgen/X/lk;->A01(Lcom/facebook/ads/redexgen/X/lA;JJJJILjava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101988
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/lg;->A07(Lorg/json/JSONObject;)V

    .line 101989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/lf;->A20:I

    .line 101990
    const/16 v2, 0x32

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/le;->AD0(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 101991
    return-void
.end method
