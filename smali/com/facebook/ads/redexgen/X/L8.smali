###### Class com.facebook.ads.redexgen.X.L8 (com.facebook.ads.redexgen.X.L8)
.class public abstract Lcom/facebook/ads/redexgen/X/L8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L6;,
        Lcom/facebook/ads/redexgen/X/L7;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/L6;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 805
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mtj5AQZYnC8ZYCgNjgiGa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9O58BTwK8QpcbA3X6JRwP5oJLMZW7S"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iPIls1WSFCVGfJIo7lr2cSH8ysr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "REttTrJRchZ3AtecVlPOO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ltUsr5pNisVr9fJwLlHjI2fYwYY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SNC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "c8upypToN0Fp2Q0KPNP0YDydruE1Whq3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dJqAUyGQwlClrsBpC8sa4cubBo774T"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L8;->A0B()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L8;->A02:Ljava/util/ArrayList;

    .line 806
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L8;->A03:Ljava/util/regex/Pattern;

    .line 807
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .registers 8

    .line 51906
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    sparse-switch v0, :sswitch_data_c4

    :cond_a
    const/4 v0, -0x1

    :goto_b
    packed-switch v0, :pswitch_data_e2

    .line 51907
    return v6

    .line 51908
    :sswitch_f
    const/16 v2, 0x233

    const/16 v1, 0xd

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_b

    :sswitch_21
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_bd

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "Sf1cPlfJE5c2Q1J3x93mu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "2jpk7ugrLSfGS8LACHw9p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_b

    :sswitch_51
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :sswitch_63
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :sswitch_75
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :sswitch_87
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto/16 :goto_b

    :sswitch_9a
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto/16 :goto_b

    .line 51909
    :pswitch_ad
    const/16 v0, 0xe

    return v0

    .line 51910
    :pswitch_b0
    const/16 v0, 0x8

    return v0

    .line 51911
    :pswitch_b3
    const/4 v0, 0x7

    return v0

    .line 51912
    :pswitch_b5
    const/16 v0, 0x11

    return v0

    .line 51913
    :pswitch_b8
    const/16 v0, 0x12

    return v0

    .line 51914
    :pswitch_bb
    return v5

    .line 51915
    :pswitch_bc
    return v4

    .line 51916
    :cond_bd
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x7e929daa -> :sswitch_9a
        -0x41455b98 -> :sswitch_87
        0xb269698 -> :sswitch_75
        0xb269699 -> :sswitch_63
        0x59ae0c65 -> :sswitch_51
        0x59c2dc42 -> :sswitch_21
        0x5cc95062 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch
.end method

.method public static A01(Ljava/lang/String;)I
    .registers 4

    .line 51917
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51918
    const/4 v0, -0x1

    return v0

    .line 51919
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51920
    const/4 v0, 0x1

    return v0

    .line 51921
    :cond_10
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 51922
    const/4 v0, 0x2

    return v0

    .line 51923
    :cond_18
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 51924
    const/4 v0, 0x3

    return v0

    .line 51925
    :cond_20
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 51926
    const/4 v0, 0x4

    return v0

    .line 51927
    :cond_28
    const/16 v2, 0x6c

    const/16 v1, 0xf

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 51928
    const/16 v2, 0xcb

    const/16 v1, 0x12

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 51929
    const/16 v2, 0x151

    const/16 v1, 0x14

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 51930
    :cond_58
    const/4 v0, 0x5

    return v0

    .line 51931
    :cond_5a
    const/16 v2, 0xb0

    const/16 v1, 0x1b

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 51932
    const/4 v0, 0x6

    return v0

    .line 51933
    :cond_6c
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A02(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static A02(Ljava/lang/String;)I
    .registers 3

    .line 51934
    sget-object v0, Lcom/facebook/ads/redexgen/X/L8;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51935
    .local v0, "customMimeTypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_1e

    .line 51936
    sget-object v0, Lcom/facebook/ads/redexgen/X/L8;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51937
    .local p0, "customMimeType":Lcom/facebook/ads/redexgen/X/L6;
    const/16 p0, 0x345

    const/16 v1, 0x8

    const/16 v0, 0x69

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51938
    .end local v1    # "i":I
    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 51939
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_116

    :cond_d
    const/4 v0, -0x1

    :goto_e
    packed-switch v0, :pswitch_data_13c

    .line 51940
    return v5

    .line 51941
    :sswitch_12
    const/16 v2, 0x233

    const/16 v1, 0xd

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    goto :goto_e

    :sswitch_25
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    goto :goto_e

    :sswitch_37
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :sswitch_49
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :sswitch_5b
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :sswitch_6d
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_e

    :sswitch_7f
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_e

    :sswitch_92
    const/16 v4, 0x240

    const/16 v3, 0xd

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10f

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "XfeyPSYT22wI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x2d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    goto/16 :goto_e

    :sswitch_be
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto/16 :goto_e

    .line 51942
    :pswitch_d1
    const/16 v0, 0xe

    return v0

    .line 51943
    :pswitch_d4
    return v9

    .line 51944
    :pswitch_d5
    return v8

    .line 51945
    :pswitch_d6
    const/16 v0, 0x11

    return v0

    .line 51946
    :pswitch_d9
    const/16 v0, 0x12

    return v0

    .line 51947
    :pswitch_dc
    return v7

    .line 51948
    :pswitch_dd
    return v6

    .line 51949
    :pswitch_de
    if-nez p1, :cond_e1

    .line 51950
    return v5

    .line 51951
    :cond_e1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L7;

    move-result-object v0

    .line 51952
    .local v0, "objectType":Lcom/facebook/ads/redexgen/X/L7;
    if-nez v0, :cond_e8

    .line 51953
    return v5

    .line 51954
    :cond_e8
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L7;->A00()I

    move-result v0

    return v0

    .line 51955
    .end local v0    # "objectType":Lcom/facebook/ads/redexgen/X/L7;
    :pswitch_ed
    const/16 v3, 0x9

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10e

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "eY3eBmxup9dOoHVo6QFsFhi4Q5X"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "hwZO4wrHydQX87I5KpB0i0PunCMWc7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_10e
    return v3

    .line 51956
    :cond_10f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_116
    .sparse-switch
        -0x7e929daa -> :sswitch_be
        -0x41455b98 -> :sswitch_92
        -0x3313c2e -> :sswitch_7f
        0xb269698 -> :sswitch_6d
        0xb269699 -> :sswitch_5b
        0x59ae0c65 -> :sswitch_49
        0x59b1e81e -> :sswitch_37
        0x59c2dc42 -> :sswitch_25
        0x5cc95062 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d1
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L7;
    .registers 5

    .line 51957
    sget-object v0, Lcom/facebook/ads/redexgen/X/L8;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 51958
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 p0, 0x0

    if-nez v0, :cond_e

    .line 51959
    return-object p0

    .line 51960
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51961
    .local v1, "objectTypeIndicationHex":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 51962
    .local v3, "audioObjectTypeIndicationDec":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51963
    .local p0, "audioObjectTypeIndication":I
    const/16 v0, 0x10

    :try_start_21
    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 51964
    .local p1, "objectTypeIndication":I
    if-eqz v3, :cond_2b

    .line 51965
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2b} :catch_31

    .line 51966
    :cond_2b
    new-instance v0, Lcom/facebook/ads/redexgen/X/L7;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/L7;-><init>(II)V

    return-object v0

    .line 51967
    .end local p1
    .local p1, "e":Ljava/lang/NumberFormatException;
    :catch_31
    return-object p0
.end method

.method public static A05(I)Ljava/lang/String;
    .registers 5

    .line 51968
    sparse-switch p0, :sswitch_data_12a

    .line 51969
    const/4 v0, 0x0

    return-object v0

    .line 51970
    :sswitch_5
    const/16 p0, 0x3dd

    const/16 v3, 0x13

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "5Qc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x4c

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51971
    :sswitch_2f
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51972
    :sswitch_3a
    const/16 v2, 0x220

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51973
    :sswitch_45
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51974
    :sswitch_50
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51975
    :sswitch_5b
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51976
    :sswitch_66
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51977
    :sswitch_71
    const/16 v2, 0x3c0

    const/16 v1, 0xa

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51978
    :sswitch_7c
    const/16 v2, 0x333

    const/16 v1, 0xa

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51979
    :sswitch_87
    const/16 v2, 0x3ab

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51980
    :sswitch_92
    const/16 p0, 0x1fc

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_ae

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ae
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "B0QBz88rqLzYWNygzkLMX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "9VWXOakvbi7XiKmY7mlUt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x40

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51981
    :sswitch_c1
    const/16 p0, 0x3b5

    const/16 v3, 0xb

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_ea

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "LCbKix87SzKcoSBSZWqCz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3ttbU07808CCVPTdtk2R4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x36

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ea
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "M3sQ8KyfmqZQHEmxjPGDN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "0hEddkjVzZCjW4rfvbBtt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0xc

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51982
    :sswitch_fd
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51983
    :sswitch_108
    const/16 v2, 0x394

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51984
    :sswitch_113
    const/16 v2, 0x379

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51985
    :sswitch_11e
    const/16 v2, 0x39e

    const/16 v1, 0xd

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_12a
    .sparse-switch
        0x20 -> :sswitch_11e
        0x21 -> :sswitch_113
        0x23 -> :sswitch_108
        0x40 -> :sswitch_fd
        0x60 -> :sswitch_c1
        0x61 -> :sswitch_c1
        0x62 -> :sswitch_c1
        0x63 -> :sswitch_c1
        0x64 -> :sswitch_c1
        0x65 -> :sswitch_c1
        0x66 -> :sswitch_fd
        0x67 -> :sswitch_fd
        0x68 -> :sswitch_fd
        0x69 -> :sswitch_92
        0x6a -> :sswitch_87
        0x6b -> :sswitch_92
        0x6c -> :sswitch_7c
        0xa3 -> :sswitch_71
        0xa5 -> :sswitch_66
        0xa6 -> :sswitch_5b
        0xa9 -> :sswitch_50
        0xaa -> :sswitch_45
        0xab -> :sswitch_45
        0xac -> :sswitch_50
        0xad -> :sswitch_3a
        0xae -> :sswitch_2f
        0xb1 -> :sswitch_5
    .end sparse-switch
.end method

.method public static A06(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/L8;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 51986
    if-nez p0, :cond_4

    .line 51987
    const/4 v0, 0x0

    return-object v0

    .line 51988
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51989
    const/16 v2, 0x2c5

    const/4 v1, 0x4

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v2, 0x2c9

    const/4 v1, 0x4

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 51990
    :cond_2a
    const/16 v2, 0x379

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51991
    :cond_35
    const/16 v2, 0x326

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const/16 v2, 0x32a

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 51992
    :cond_53
    const/16 v2, 0x394

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51993
    :cond_5e
    const/16 v2, 0x308

    const/4 v1, 0x4

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 51994
    const/16 v2, 0x304

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 51995
    const/16 v2, 0x310

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 51996
    const/16 v2, 0x30c

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 51997
    :cond_9a
    const/16 v2, 0x382

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_482

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "rduAa0bZmue7xqDnaI7CBLL9U2es2RHi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 51998
    :cond_be
    const/16 v2, 0x2c1

    const/4 v1, 0x4

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 51999
    const/16 v3, 0x36f

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f1

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "iJuSvnq5Q8fFbPpbjgmzF0ggsmKDlumj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f1
    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52000
    :cond_fa
    const/16 v2, 0x401

    const/4 v1, 0x3

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_118

    const/16 v2, 0x3fa

    const/4 v1, 0x4

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 52001
    :cond_118
    const/16 v2, 0x3dd

    const/16 v1, 0x13

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52002
    :cond_123
    const/16 v2, 0x3fe

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_140

    const/16 v2, 0x3f6

    const/4 v1, 0x4

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 52003
    :cond_140
    const/16 v2, 0x3ca

    const/16 v1, 0x13

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52004
    :cond_14b
    const/16 v2, 0x34d

    const/4 v1, 0x4

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1c3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "jgJyL6ueamly0URrrAo0y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VAqeIpotsqVQ3TK7XV68g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_1c6

    .line 52005
    :goto_173
    const/4 v4, 0x0

    .line 52006
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x351

    const/4 v1, 0x5

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 52007
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/L8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L7;

    move-result-object v0

    .line 52008
    .local v1, "objectType":Lcom/facebook/ads/redexgen/X/L7;
    if-eqz v0, :cond_18f

    .line 52009
    iget v0, v0, Lcom/facebook/ads/redexgen/X/L7;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(I)Ljava/lang/String;

    move-result-object v4

    .line 52010
    .end local v1    # "objectType":Lcom/facebook/ads/redexgen/X/L7;
    :cond_18f
    if-nez v4, :cond_1b9

    const/16 v3, 0x1ed

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1ba

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "l7tGEfnzmmllIHSGPPfQu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "WIV4TqNKdAQoUFWvKNwIa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v4

    :cond_1b9
    :goto_1b9
    return-object v4

    :cond_1ba
    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b9

    :cond_1c3
    if-eqz v4, :cond_1c6

    goto :goto_173

    .line 52011
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_1c6
    const/16 v2, 0x33d

    const/4 v1, 0x4

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_482

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "Og3Gw9hequS8vGBl4S8yb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xskopta6QO33EgTkdSwZM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_217

    .line 52012
    const/16 p0, 0x1d0

    const/16 v4, 0xa

    const/16 v3, 0x69

    sget-object v1, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_212

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "pVuuV34hmQL6nK5O10oIs4bY93WikDB2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_212
    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52013
    :cond_217
    const/16 v2, 0x341

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 52014
    const/16 v3, 0x1da

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_24a

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "W06z2xHNvcJuo8mpHHEEpqY21YYtV2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v1, 0xa

    const/16 v0, 0x31

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52015
    :cond_250
    const/16 v2, 0x2b

    const/4 v1, 0x4

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26e

    const/16 v2, 0x2e4

    const/4 v1, 0x4

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 52016
    :cond_26e
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52017
    :cond_279
    const/16 v2, 0x318

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_297

    const/16 v2, 0x2ec

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 52018
    :cond_297
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52019
    :cond_2a2
    const/16 v2, 0x314

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 52020
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52021
    :cond_2bc
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2da

    const/16 v2, 0x2e8

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 52022
    :cond_2da
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52023
    :cond_2e5
    const/16 v2, 0x2f0

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    .line 52024
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52025
    :cond_2ff
    const/16 v2, 0x2f4

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 52026
    const/16 v2, 0x25d

    const/16 v1, 0x1c

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52027
    :cond_319
    const/16 v2, 0x2f8

    const/4 v1, 0x4

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34b

    const/16 v2, 0x2fc

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_482

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "ZzQ5FlcoVEujuGTwVJIJwXLiZ7T"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_375

    .line 52028
    :cond_34b
    const/16 p0, 0x24d

    const/16 v4, 0x10

    const/16 v3, 0x62

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_36f

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "BKYZ1k7dxzd7aGCBjwQbt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52029
    :cond_375
    const/16 v2, 0x300

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 52030
    const/16 v2, 0x279

    const/16 v1, 0x1c

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52031
    :cond_38f
    const/16 v2, 0x356

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    .line 52032
    const/16 v2, 0x220

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52033
    :cond_3a9
    const/16 v2, 0x3f0

    const/4 v1, 0x6

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    .line 52034
    const/16 v2, 0x295

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52035
    :cond_3c3
    const/16 v2, 0x322

    const/4 v1, 0x4

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3dd

    .line 52036
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52037
    :cond_3dd
    const/16 v2, 0x35a

    const/4 v1, 0x4

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f7

    .line 52038
    const/16 v2, 0x8a

    const/16 v1, 0x14

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52039
    :cond_3f7
    const/16 v2, 0x404

    const/4 v1, 0x4

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43a

    .line 52040
    const/16 v3, 0x362

    sget-object v1, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_425

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "mPB1XR6AUS767usBTRbHStbC5kPY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x3

    const/16 v0, 0x13

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_425
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "5mZwtWm4YShUr67lcQDSFt4704s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VeyvGObawMeK3aS0g0WKjsEE6tCgX8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52041
    :cond_43a
    const/16 v2, 0x2d3

    const/4 v1, 0x6

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_454

    .line 52042
    const/16 v2, 0x46

    const/16 v1, 0x13

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52043
    :cond_454
    const/16 v2, 0x31c

    const/4 v1, 0x6

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_472

    const/16 v2, 0x2cd

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47d

    .line 52044
    :cond_472
    const/16 v2, 0x33

    const/16 v1, 0x13

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52045
    :cond_47d
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/L8;->A09(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_482
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 52046
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_86

    :cond_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_94

    .line 52047
    return-object p0

    .line 52048
    :sswitch_c
    const/16 v2, 0x1e4

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_1e
    const/16 v2, 0x2b6

    const/16 v1, 0xb

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_30
    const/16 v2, 0x2aa

    const/16 v1, 0xc

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    .line 52049
    :pswitch_42
    const/16 v2, 0x2a1

    const/16 v1, 0x9

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52050
    :pswitch_4c
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6e
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "gk4oipsXED0NFT32IYp6gjMWT0s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2XGwQ2qtdRBiFQDuMOl422X5BWjZVf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    .line 52051
    :pswitch_7b
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_86
    .sparse-switch
        -0x3c11ec0a -> :sswitch_30
        -0x22f81362 -> :sswitch_1e
        0xb26c537 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_4c
        :pswitch_42
    .end packed-switch
.end method

.method public static A09(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 52052
    sget-object v0, Lcom/facebook/ads/redexgen/X/L8;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52053
    .local v0, "customMimeTypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_1e

    .line 52054
    sget-object v0, Lcom/facebook/ads/redexgen/X/L8;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52055
    .local p0, "customMimeType":Lcom/facebook/ads/redexgen/X/L6;
    const/16 p0, 0x2d9

    const/16 v1, 0xb

    const/16 v0, 0x6c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52056
    .end local v1    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0A(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 52057
    const/4 v2, 0x0

    if-nez p0, :cond_4

    .line 52058
    return-object v2

    .line 52059
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 52060
    .local v1, "indexOfSlash":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 52061
    return-object v2

    .line 52062
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x408

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/L8;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x54t
        0x67t
        0x7at
        0x3et
        0x6bt
        0x56t
        0x24t
        0x22t
        0x51t
        0x6bt
        0x27t
        0x70t
        0x4bt
        0x27t
        0x50t
        0x3at
        0x27t
        0x33t
        0x57t
        0x71t
        0x38t
        0x77t
        0x23t
        0x22t
        0x35t
        0x30t
        0x56t
        0x24t
        0x22t
        0x51t
        0x3at
        0x27t
        0x33t
        0x57t
        0x71t
        0x3bt
        0x26t
        0x38t
        0x77t
        0x23t
        0x23t
        0x35t
        0x2et
        0x66t
        0x64t
        0x2at
        0x34t
        0x78t
        0x7at
        0x34t
        0x2dt
        0x28t
        0x39t
        0x39t
        0x25t
        0x20t
        0x2at
        0x28t
        0x3dt
        0x20t
        0x26t
        0x27t
        0x66t
        0x2at
        0x2ct
        0x28t
        0x64t
        0x7ft
        0x79t
        0x71t
        0x44t
        0x55t
        0x55t
        0x49t
        0x4ct
        0x46t
        0x44t
        0x51t
        0x4ct
        0x4at
        0x4bt
        0xat
        0x46t
        0x40t
        0x44t
        0x8t
        0x12t
        0x15t
        0x1dt
        0x1ct
        0xdt
        0xdt
        0x11t
        0x14t
        0x1et
        0x1ct
        0x9t
        0x14t
        0x12t
        0x13t
        0x52t
        0x19t
        0xbt
        0x1ft
        0xet
        0x8t
        0x1ft
        0xet
        0x1t
        0x10t
        0x10t
        0xct
        0x9t
        0x3t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        0x4ft
        0x9t
        0x4t
        0x53t
        0x2bt
        0x3at
        0x3at
        0x26t
        0x23t
        0x29t
        0x2bt
        0x3et
        0x23t
        0x25t
        0x24t
        0x65t
        0x3at
        0x2dt
        0x39t
        0x4dt
        0x5ct
        0x5ct
        0x40t
        0x45t
        0x4ft
        0x4dt
        0x58t
        0x45t
        0x43t
        0x42t
        0x3t
        0x58t
        0x58t
        0x41t
        0x40t
        0x7t
        0x54t
        0x41t
        0x40t
        0x1t
        0x10t
        0x10t
        0xct
        0x9t
        0x3t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        0x4ft
        0x16t
        0xft
        0x2t
        0x13t
        0x15t
        0x2t
        0x1et
        0xft
        0xft
        0x13t
        0x16t
        0x1ct
        0x1et
        0xbt
        0x16t
        0x10t
        0x11t
        0x50t
        0x7t
        0x52t
        0x1ct
        0x1et
        0x12t
        0x1at
        0xdt
        0x1et
        0x52t
        0x12t
        0x10t
        0xbt
        0x16t
        0x10t
        0x11t
        0x67t
        0x76t
        0x76t
        0x6at
        0x6ft
        0x65t
        0x67t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x29t
        0x7et
        0x2bt
        0x63t
        0x6bt
        0x75t
        0x61t
        0x57t
        0x46t
        0x46t
        0x5at
        0x5ft
        0x55t
        0x57t
        0x42t
        0x5ft
        0x59t
        0x58t
        0x19t
        0x4et
        0x1bt
        0x5ft
        0x5bt
        0x57t
        0x51t
        0x53t
        0x1bt
        0x43t
        0x44t
        0x5ft
        0x29t
        0x38t
        0x38t
        0x24t
        0x21t
        0x2bt
        0x29t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x67t
        0x30t
        0x65t
        0x25t
        0x38t
        0x7ct
        0x65t
        0x2bt
        0x2dt
        0x29t
        0x65t
        0x7et
        0x78t
        0x70t
        0x2ft
        0x3et
        0x3et
        0x22t
        0x27t
        0x2dt
        0x2ft
        0x3at
        0x27t
        0x21t
        0x20t
        0x61t
        0x36t
        0x63t
        0x23t
        0x3et
        0x7at
        0x63t
        0x38t
        0x3at
        0x3at
        0x6dt
        0x7ct
        0x7ct
        0x60t
        0x65t
        0x6ft
        0x6dt
        0x78t
        0x65t
        0x63t
        0x62t
        0x23t
        0x74t
        0x21t
        0x7dt
        0x79t
        0x65t
        0x6ft
        0x67t
        0x78t
        0x65t
        0x61t
        0x69t
        0x21t
        0x78t
        0x74t
        0x3ft
        0x6bt
        0x24t
        0x35t
        0x35t
        0x29t
        0x2ct
        0x26t
        0x24t
        0x31t
        0x2ct
        0x2at
        0x2bt
        0x6at
        0x3dt
        0x68t
        0x37t
        0x24t
        0x32t
        0x26t
        0x26t
        0x47t
        0x56t
        0x56t
        0x4at
        0x4ft
        0x45t
        0x47t
        0x52t
        0x4ft
        0x49t
        0x48t
        0x9t
        0x5et
        0xbt
        0x55t
        0x45t
        0x52t
        0x43t
        0x15t
        0x13t
        0x39t
        0x28t
        0x28t
        0x34t
        0x31t
        0x3bt
        0x39t
        0x2ct
        0x31t
        0x37t
        0x36t
        0x77t
        0x20t
        0x75t
        0x2bt
        0x2dt
        0x3at
        0x2at
        0x31t
        0x28t
        0x7ft
        0x6bt
        0x7at
        0x77t
        0x71t
        0x2t
        0x16t
        0x7t
        0xat
        0xct
        0x4ct
        0x2t
        0x0t
        0x50t
        0x14t
        0x0t
        0x11t
        0x1ct
        0x1at
        0x5at
        0x14t
        0x16t
        0x41t
        0x5t
        0x11t
        0x0t
        0xdt
        0xbt
        0x4bt
        0x1t
        0x5t
        0x7t
        0x57t
        0x48t
        0x5ct
        0x4dt
        0x40t
        0x46t
        0x6t
        0x4ct
        0x48t
        0x4at
        0x1at
        0x4t
        0x43t
        0x46t
        0x4at
        0x6t
        0x12t
        0x3t
        0xet
        0x8t
        0x48t
        0x1t
        0xbt
        0x6t
        0x4t
        0x1bt
        0xft
        0x1et
        0x13t
        0x15t
        0x55t
        0x1dt
        0x4dt
        0x4bt
        0x4bt
        0x57t
        0x1bt
        0x16t
        0x1bt
        0xdt
        0x7dt
        0x69t
        0x78t
        0x75t
        0x73t
        0x33t
        0x7bt
        0x2bt
        0x2dt
        0x2dt
        0x31t
        0x71t
        0x70t
        0x7dt
        0x6bt
        0x1ft
        0xbt
        0x1at
        0x17t
        0x11t
        0x51t
        0x13t
        0x16t
        0x1ft
        0x4ft
        0x47t
        0x53t
        0x42t
        0x4ft
        0x49t
        0x9t
        0x4bt
        0x4et
        0x4bt
        0x17t
        0x2dt
        0x39t
        0x28t
        0x25t
        0x23t
        0x63t
        0x21t
        0x3ct
        0x7ft
        0x6t
        0x12t
        0x3t
        0xet
        0x8t
        0x48t
        0xat
        0x17t
        0x53t
        0x6t
        0x4at
        0xbt
        0x6t
        0x13t
        0xat
        0x36t
        0x22t
        0x33t
        0x3et
        0x38t
        0x78t
        0x3at
        0x27t
        0x32t
        0x30t
        0x19t
        0xdt
        0x1ct
        0x11t
        0x17t
        0x57t
        0x15t
        0x8t
        0x1dt
        0x1ft
        0x55t
        0x34t
        0x49t
        0x65t
        0x71t
        0x60t
        0x6dt
        0x6bt
        0x2bt
        0x69t
        0x74t
        0x61t
        0x63t
        0x29t
        0x48t
        0x36t
        0x23t
        0x37t
        0x26t
        0x2bt
        0x2dt
        0x6dt
        0x2dt
        0x32t
        0x37t
        0x31t
        0x51t
        0x45t
        0x54t
        0x59t
        0x5ft
        0x1ft
        0x42t
        0x51t
        0x47t
        0xet
        0x1at
        0xbt
        0x6t
        0x0t
        0x40t
        0x1bt
        0x1dt
        0x1at
        0xat
        0x42t
        0x7t
        0xbt
        0x5bt
        0x4ft
        0x5et
        0x53t
        0x55t
        0x15t
        0x4ct
        0x54t
        0x5et
        0x14t
        0x5et
        0x4et
        0x49t
        0x14t
        0x0t
        0x11t
        0x1ct
        0x1at
        0x5at
        0x3t
        0x1bt
        0x11t
        0x5bt
        0x11t
        0x1t
        0x6t
        0x5bt
        0x1dt
        0x11t
        0x52t
        0x46t
        0x57t
        0x5at
        0x5ct
        0x1ct
        0x45t
        0x5dt
        0x57t
        0x1dt
        0x57t
        0x47t
        0x40t
        0x1dt
        0x5bt
        0x57t
        0x8t
        0x43t
        0x41t
        0x5ct
        0x55t
        0x5at
        0x5ft
        0x56t
        0xet
        0x5ft
        0x51t
        0x41t
        0x28t
        0x3ct
        0x2dt
        0x20t
        0x26t
        0x66t
        0x3ft
        0x27t
        0x2dt
        0x67t
        0x2dt
        0x3dt
        0x3at
        0x67t
        0x3ct
        0x21t
        0x2dt
        0x72t
        0x39t
        0x3bt
        0x26t
        0x2ft
        0x20t
        0x25t
        0x2ct
        0x74t
        0x39t
        0x7bt
        0x50t
        0x44t
        0x55t
        0x58t
        0x5et
        0x1et
        0x47t
        0x5et
        0x43t
        0x53t
        0x58t
        0x42t
        0x73t
        0x67t
        0x76t
        0x7bt
        0x7dt
        0x3dt
        0x65t
        0x73t
        0x64t
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x3bt
        0x6et
        0x25t
        0x2ft
        0x22t
        0x20t
        0x31t
        0x25t
        0x34t
        0x39t
        0x3ft
        0x7ft
        0x28t
        0x7dt
        0x27t
        0x31t
        0x26t
        0xft
        0x18t
        0x5et
        0x5ft
        0x31t
        0x26t
        0x33t
        0x61t
        0x31t
        0x26t
        0x33t
        0x63t
        0x25t
        0x23t
        0x27t
        0x70t
        0x76t
        0x7et
        0x53t
        0x55t
        0x51t
        0x7t
        0x0t
        0x8t
        0x18t
        0x14t
        0x1ft
        0x1et
        0x18t
        0x2bt
        0x9t
        0x1et
        0x1dt
        0x12t
        0x3t
        0x65t
        0x60t
        0x62t
        0x32t
        0x4ct
        0x49t
        0x4bt
        0x1ct
        0xet
        0xft
        0x9t
        0x59t
        0x51t
        0x41t
        0x46t
        0x56t
        0x46t
        0x56t
        0x51t
        0x47t
        0xat
        0x1at
        0x1dt
        0x6t
        0x11t
        0x1t
        0x6t
        0x19t
        0x6at
        0x7at
        0x7dt
        0x76t
        0x11t
        0x3t
        0x14t
        0x44t
        0x1ct
        0xet
        0x19t
        0xet
        0x2t
        0x10t
        0xet
        0x57t
        0x6bt
        0x79t
        0x67t
        0x6at
        0x1bt
        0x1dt
        0x55t
        0x4dt
        0x68t
        0x6et
        0x20t
        0x3et
        0x60t
        0x6ct
        0x64t
        0x33t
        0x35t
        0x3dt
        0x1t
        0xbt
        0x6t
        0x4t
        0x35t
        0x38t
        0x2bt
        0x6ct
        0x75t
        0x6bt
        0x7et
        0x2ct
        0x30t
        0x34t
        0x38t
        0x3et
        0x3ct
        0xat
        0xet
        0x2t
        0x4t
        0x6t
        0x4ct
        0x9t
        0x13t
        0x6t
        0x4t
        0x36t
        0x33t
        0x3at
        0x6at
        0x6dt
        0x68t
        0x6dt
        0x31t
        0x13t
        0x17t
        0x13t
        0x1bt
        0x2at
        0x7t
        0xet
        0x1bt
        0x75t
        0x68t
        0x2ct
        0x79t
        0x75t
        0x68t
        0x2ct
        0x79t
        0x36t
        0x70t
        0x6ft
        0x6at
        0x6ct
        0x59t
        0x5et
        0x5at
        0x5at
        0x70t
        0x61t
        0x7ct
        0x70t
        0x50t
        0x41t
        0x5ct
        0x50t
        0xbt
        0x52t
        0x50t
        0x50t
        0x6dt
        0x72t
        0x7ft
        0x7et
        0x74t
        0x70t
        0x6ft
        0x62t
        0x63t
        0x69t
        0x29t
        0x67t
        0x70t
        0x36t
        0x37t
        0x76t
        0x69t
        0x64t
        0x65t
        0x6ft
        0x2ft
        0x61t
        0x76t
        0x63t
        0x5dt
        0x42t
        0x4ft
        0x4et
        0x44t
        0x4t
        0x4ft
        0x44t
        0x47t
        0x49t
        0x52t
        0x6t
        0x5dt
        0x42t
        0x58t
        0x42t
        0x44t
        0x45t
        0x19t
        0x6t
        0xbt
        0xat
        0x0t
        0x40t
        0x7t
        0xat
        0x19t
        0xct
        0x4bt
        0x54t
        0x59t
        0x58t
        0x52t
        0x12t
        0x50t
        0x4dt
        0x9t
        0x4bt
        0x10t
        0x58t
        0x4et
        0x70t
        0x6ft
        0x62t
        0x63t
        0x69t
        0x29t
        0x6bt
        0x76t
        0x63t
        0x61t
        0x57t
        0x48t
        0x45t
        0x44t
        0x4et
        0xet
        0x4ct
        0x51t
        0x44t
        0x46t
        0x13t
        0x8t
        0x17t
        0x1at
        0x1bt
        0x11t
        0x51t
        0x9t
        0x8t
        0x1dt
        0x4ft
        0x2et
        0x31t
        0x3ct
        0x3dt
        0x37t
        0x77t
        0x20t
        0x75t
        0x2et
        0x36t
        0x3ct
        0x76t
        0x37t
        0x36t
        0x6at
        0x76t
        0x2et
        0x28t
        0x60t
        0x2dt
        0x32t
        0x3ft
        0x3et
        0x34t
        0x74t
        0x23t
        0x76t
        0x2dt
        0x35t
        0x3ft
        0x75t
        0x34t
        0x35t
        0x69t
        0x75t
        0x2dt
        0x2bt
        0x62t
        0x77t
        0x6et
        0x73t
        0x63t
        0x68t
        0x72t
        0x66t
        0x60t
        0x20t
        0x28t
        0x25t
        0x23t
        0x63t
        0x6at
        0x6ct
        0x6at
        0x22t
        0x46t
        0x40t
        0x9t
        0x59t
        0x58t
        0x5at
        0x5at
    .end array-data
.end method

.method public static A0C(Ljava/lang/String;)Z
    .registers 4

    .line 52063
    const/16 v2, 0x179

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0D(Ljava/lang/String;)Z
    .registers 4

    .line 52064
    const/16 v2, 0x32e

    const/4 v1, 0x5

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 52065
    const/16 v2, 0xdd

    const/16 v1, 0x17

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_23
    const/4 v0, 0x1

    .line 52066
    :goto_24
    return v0

    .line 52067
    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static A0E(Ljava/lang/String;)Z
    .registers 4

    .line 52068
    const/16 v2, 0x35e

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52069
    const/16 v2, 0x33

    const/16 v1, 0x13

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52070
    const/16 v2, 0x46

    const/16 v1, 0x13

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52071
    const/16 v2, 0xf4

    const/16 v1, 0x19

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52072
    const/16 v2, 0x165

    const/16 v1, 0x14

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52073
    const/16 v2, 0x8a

    const/16 v1, 0x14

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52074
    const/16 v2, 0x122

    const/16 v1, 0x1c

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52075
    const/16 v2, 0x10d

    const/16 v1, 0x15

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52076
    const/16 v2, 0x13e

    const/16 v1, 0x13

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52077
    const/16 v2, 0x9e

    const/16 v1, 0x12

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52078
    const/16 v2, 0x7b

    const/16 v1, 0xf

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 52079
    const/16 v2, 0x59

    const/16 v1, 0x13

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :cond_c3
    const/4 v0, 0x1

    .line 52080
    :goto_c4
    return v0

    .line 52081
    :cond_c5
    const/4 v0, 0x0

    goto :goto_c4
.end method

.method public static A0F(Ljava/lang/String;)Z
    .registers 4

    .line 52082
    const/16 v2, 0x36a

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L8;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0G(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 52083
    const/4 v7, 0x0

    if-nez p0, :cond_4

    .line 52084
    return v7

    .line 52085
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_13e

    :cond_c
    const/4 v0, -0x1

    :goto_d
    packed-switch v0, :pswitch_data_16c

    .line 52086
    return v7

    .line 52087
    :sswitch_11
    const/16 v2, 0x1c1

    const/16 v1, 0xf

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    goto :goto_d

    :sswitch_23
    const/16 v2, 0x1b2

    const/16 v1, 0xf

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_d

    :sswitch_35
    const/16 v5, 0x1fc

    const/16 v4, 0xa

    const/16 v3, 0x40

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_138

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "K2nJl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :sswitch_60
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    goto :goto_d

    :sswitch_72
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    goto :goto_d

    :sswitch_85
    const/16 v2, 0x22a

    const/16 v1, 0x9

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto/16 :goto_d

    :sswitch_98
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x7

    goto/16 :goto_d

    :sswitch_ab
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xa

    goto/16 :goto_d

    :sswitch_bf
    const/16 v2, 0x213

    const/16 v1, 0xd

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto/16 :goto_d

    :sswitch_d2
    const/16 v2, 0x206

    const/16 v1, 0xd

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_d

    :sswitch_e5
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    goto/16 :goto_d

    .line 52088
    :pswitch_f9
    if-nez p1, :cond_fc

    .line 52089
    return v7

    .line 52090
    :cond_fc
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L7;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_121

    .line 52091
    .local v1, "objectType":Lcom/facebook/ads/redexgen/X/L7;
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, "l88CwbmjDr1ABfYrfLQTO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "A5IuhjaHamDHKZWuKtxPl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_12b

    .line 52092
    :goto_120
    return v7

    .line 52093
    .local v1, "objectType":Lcom/facebook/ads/redexgen/X/L7;
    :cond_121
    sget-object v2, Lcom/facebook/ads/redexgen/X/L8;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_12b

    goto :goto_120

    .line 52094
    :cond_12b
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/L7;->A00()I

    move-result v1

    .line 52095
    .local v3, "encoding":I
    if-eqz v1, :cond_136

    const/16 v0, 0x10

    if-eq v1, v0, :cond_136

    const/4 v7, 0x1

    :cond_136
    return v7

    .line 52096
    .end local v1    # "objectType":Lcom/facebook/ads/redexgen/X/L7;
    .end local v3    # "encoding":I
    :pswitch_137
    return v6

    .line 52097
    :cond_138
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_13e
    .sparse-switch
        -0x7e929daa -> :sswitch_e5
        -0x19cc928c -> :sswitch_d2
        -0x19cc928b -> :sswitch_bf
        -0x3313c2e -> :sswitch_ab
        0xb269698 -> :sswitch_98
        0xb26d66f -> :sswitch_85
        0x59ae0c65 -> :sswitch_72
        0x59aeaa01 -> :sswitch_60
        0x59b1e81e -> :sswitch_35
        0x71710385 -> :sswitch_23
        0x717677f9 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_137
        :pswitch_f9
    .end packed-switch
.end method
