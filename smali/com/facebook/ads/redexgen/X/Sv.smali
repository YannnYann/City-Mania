###### Class com.facebook.ads.redexgen.X.C1924Sv (com.facebook.ads.redexgen.X.Sv)
.class public final Lcom/facebook/ads/redexgen/X/Sv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sp;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1251
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RzHtHQlp9n4Yq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "p8CNpS872ldVgXlWcqfv2QWVETdv17eW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V5aF1AJWL9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ks77GUXob4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HRKDNERx4si89RhZHXNQq8TgSXRynpYh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3Y9xJOWYHV7if"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gt8YEnjkmuFc9zNqd3YMVSmahY1sgvgv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sIt2D0JrmTtJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sv;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sp;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sv;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

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

    const/16 v0, 0xfe

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sv;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x9t
        0x3ct
        0x3ct
        0x2dt
        0x25t
        0x38t
        0x3ct
        0x2dt
        0x2ct
        0x68t
        0x3ct
        0x27t
        0x68t
        0x2bt
        0x3at
        0x2dt
        0x29t
        0x3ct
        0x2dt
        0x68t
        0x2ct
        0x2dt
        0x2bt
        0x27t
        0x2ct
        0x2dt
        0x3at
        0x68t
        0x2et
        0x27t
        0x3at
        0x68t
        0x3dt
        0x26t
        0x3bt
        0x3dt
        0x38t
        0x38t
        0x27t
        0x3at
        0x3ct
        0x2dt
        0x2ct
        0x68t
        0x2et
        0x27t
        0x3at
        0x25t
        0x29t
        0x3ct
        0x78t
        0x69t
        0x69t
        0x75t
        0x70t
        0x7at
        0x78t
        0x6dt
        0x70t
        0x76t
        0x77t
        0x36t
        0x7at
        0x7ct
        0x78t
        0x34t
        0x2ft
        0x29t
        0x21t
        0x74t
        0x65t
        0x65t
        0x79t
        0x7ct
        0x76t
        0x74t
        0x61t
        0x7ct
        0x7at
        0x7bt
        0x3at
        0x76t
        0x70t
        0x74t
        0x38t
        0x22t
        0x25t
        0x2dt
        0x26t
        0x37t
        0x37t
        0x2bt
        0x2et
        0x24t
        0x26t
        0x33t
        0x2et
        0x28t
        0x29t
        0x68t
        0x23t
        0x31t
        0x25t
        0x34t
        0x32t
        0x25t
        0x34t
        0x4t
        0x15t
        0x15t
        0x9t
        0xct
        0x6t
        0x4t
        0x11t
        0xct
        0xat
        0xbt
        0x4at
        0x15t
        0x2t
        0x16t
        0x5at
        0x4bt
        0x4bt
        0x57t
        0x52t
        0x58t
        0x5at
        0x4ft
        0x52t
        0x54t
        0x55t
        0x14t
        0x4ft
        0x4ft
        0x56t
        0x57t
        0x10t
        0x43t
        0x56t
        0x57t
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
        0x31t
        0x64t
        0x24t
        0x39t
        0x7dt
        0x64t
        0x2at
        0x2ct
        0x28t
        0x64t
        0x7ft
        0x79t
        0x71t
        0x56t
        0x47t
        0x47t
        0x5bt
        0x5et
        0x54t
        0x56t
        0x43t
        0x5et
        0x58t
        0x59t
        0x18t
        0x4ft
        0x1at
        0x5at
        0x47t
        0x3t
        0x1at
        0x41t
        0x43t
        0x43t
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
        0x39t
        0x3dt
        0x21t
        0x2bt
        0x23t
        0x3ct
        0x21t
        0x25t
        0x2dt
        0x65t
        0x3ct
        0x30t
        0x7bt
        0x2ft
        0x6t
        0x17t
        0x17t
        0xbt
        0xet
        0x4t
        0x6t
        0x13t
        0xet
        0x8t
        0x9t
        0x48t
        0x1ft
        0x4at
        0x14t
        0x12t
        0x5t
        0x15t
        0xet
        0x17t
        0x70t
        0x61t
        0x7ct
        0x70t
        0x2bt
        0x72t
        0x70t
        0x70t
        0x7at
        0x6bt
        0x76t
        0x7at
        0x21t
        0x76t
        0x23t
        0x7dt
        0x7dt
        0x6ft
    .end array-data
.end method


# virtual methods
.method public final A5t(Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/Ok;
    .registers 8

    .line 70649
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_156

    :cond_9
    const/4 v0, -0x1

    :goto_a
    packed-switch v0, :pswitch_data_184

    .line 70650
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70651
    :sswitch_1c
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_a

    :sswitch_2e
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_a

    :sswitch_40
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_a

    :sswitch_53
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_a

    :sswitch_65
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_a

    :sswitch_77
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :sswitch_89
    const/16 v2, 0xbc

    const/16 v1, 0x1c

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_a

    :sswitch_9c
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_a

    :sswitch_af
    const/16 v5, 0xa7

    const/16 v4, 0x15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_150

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const-string v1, "67zu9xHwNhmcBMqKb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x73

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_a

    :sswitch_db
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto/16 :goto_a

    :sswitch_ef
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto/16 :goto_a

    .line 70652
    :pswitch_102
    new-instance v0, Lcom/facebook/ads/redexgen/X/43;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/43;-><init>()V

    return-object v0

    .line 70653
    :pswitch_108
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/44;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/44;-><init>(Ljava/util/List;)V

    return-object v0

    .line 70654
    :pswitch_110
    iget v2, p1, Lcom/facebook/ads/redexgen/X/VC;->A03:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/47;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/47;-><init>(ILjava/util/List;)V

    return-object v0

    .line 70655
    :pswitch_119
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A03:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/48;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/48;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    .line 70656
    :pswitch_128
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;-><init>(Ljava/util/List;)V

    return-object v0

    .line 70657
    :pswitch_130
    new-instance v0, Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/41;-><init>()V

    return-object v0

    .line 70658
    :pswitch_136
    new-instance v0, Lcom/facebook/ads/redexgen/X/40;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/40;-><init>()V

    return-object v0

    .line 70659
    :pswitch_13c
    new-instance v0, Lcom/facebook/ads/redexgen/X/3y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3y;-><init>()V

    return-object v0

    .line 70660
    :pswitch_142
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/VC;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/42;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/42;-><init>(Ljava/util/List;)V

    return-object v0

    .line 70661
    :pswitch_14a
    new-instance v0, Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3x;-><init>()V

    return-object v0

    .line 70662
    :cond_150
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_156
    .sparse-switch
        -0x5091057c -> :sswitch_ef
        -0x4a6813e3 -> :sswitch_db
        -0x3d28a9ba -> :sswitch_af
        -0x3be2f26c -> :sswitch_9c
        0x2935f49f -> :sswitch_89
        0x310bebca -> :sswitch_77
        0x37713300 -> :sswitch_65
        0x5d578071 -> :sswitch_53
        0x5d578432 -> :sswitch_40
        0x63771bad -> :sswitch_2e
        0x64f8068a -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_142
        :pswitch_13c
        :pswitch_136
        :pswitch_130
        :pswitch_128
        :pswitch_119
        :pswitch_119
        :pswitch_110
        :pswitch_108
        :pswitch_102
    .end packed-switch
.end method

.method public final ALg(Lcom/facebook/ads/redexgen/X/VC;)Z
    .registers 9

    .line 70663
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 70664
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70665
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70666
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_a3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const-string v1, "Gnyhutr293vH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "26b8fiDZGhRGw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70667
    const/16 v5, 0xa7

    const/16 v4, 0x15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const-string v1, "wD19EscZ3Anh9t64unIfECEUU9J1awUj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "47akpO0sJfQt9W3qPQTcJ37OSB1CEhzE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x73

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70668
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70669
    const/16 v6, 0xbc

    const/16 v5, 0x1c

    const/16 v4, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a9

    :cond_a3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:[Ljava/lang/String;

    const-string v1, "ibTKBHkab6VU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "3pDH8sFnKWyBK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70670
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70671
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70672
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70673
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 70674
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_10e
    const/4 v0, 0x1

    .line 70675
    :goto_10f
    return v0

    .line 70676
    :cond_110
    const/4 v0, 0x0

    goto :goto_10f
.end method

###### Class com.facebook.ads.redexgen.X.C13123x (com.facebook.ads.redexgen.X.3x)
.class public final Lcom/facebook/ads/redexgen/X/3x;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A01:Lcom/facebook/ads/redexgen/X/cJ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 129
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "98ZB2p52BfDI9InG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sBB1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tybSS6tuSkVrXmoNozbfwWWtkiaETjnA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4TmFxpA75ClG7hN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "41cd45Lpa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CSPkkd2CcXilORAbTgbw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZfCDoC0hlCURmxdhfevGj1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MSucVwagIdDU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 7552
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 7553
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    .line 7554
    new-instance v0, Lcom/facebook/ads/redexgen/X/cJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cJ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    .line 7555
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Mk;)I
    .registers 6

    .line 7556
    const/4 v1, -0x1

    .line 7557
    .local v0, "foundEvent":I
    const/4 v4, 0x0

    .line 7558
    .local v1, "currentInputPosition":I
    :goto_2
    const/4 v0, -0x1

    if-ne v1, v0, :cond_35

    .line 7559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v4

    .line 7560
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0T()Ljava/lang/String;

    move-result-object v3

    .line 7561
    .local v2, "line":Ljava/lang/String;
    if-nez v3, :cond_11

    .line 7562
    const/4 v1, 0x0

    goto :goto_2

    .line 7563
    :cond_11
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 7564
    const/4 v1, 0x2

    goto :goto_2

    .line 7565
    :cond_22
    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7566
    const/4 v1, 0x1

    goto :goto_2

    .line 7567
    :cond_33
    const/4 v1, 0x3

    goto :goto_2

    .line 7568
    :cond_35
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Mk;->A0f(I)V

    .line 7569
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v3, 0x0

    :goto_9
    array-length p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    const-string v1, "e5xI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "uVRZajoyR3Xb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, p1, :cond_64

    aget-byte p1, p0, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_54

    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    const-string v1, "UO1P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "SlnsVpW3VNIC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_54
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A03:[Ljava/lang/String;

    const-string v1, "C0vMq6SbLyy0VcQkGRmCtlZRxub0dCvX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    add-int/lit8 v3, v3, 0x0

    goto :goto_9

    :cond_64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3x;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x73t
        0x6ct
        -0x41t
        -0x40t
        -0x3bt
        -0x48t
        -0x4ft
        0x6ct
        -0x52t
        -0x48t
        -0x45t
        -0x51t
        -0x49t
        0x6ct
        -0x3dt
        -0x53t
        -0x41t
        0x6ct
        -0x4et
        -0x45t
        -0x3ft
        -0x46t
        -0x50t
        0x6ct
        -0x53t
        -0x4et
        -0x40t
        -0x4ft
        -0x42t
        0x6ct
        -0x40t
        -0x4ct
        -0x4ft
        0x6ct
        -0x4et
        -0x4bt
        -0x42t
        -0x41t
        -0x40t
        0x6ct
        -0x51t
        -0x3ft
        -0x4ft
        0x7at
        0x69t
        0x6at
        0x6ft
        0x60t
        -0x7at
        -0x79t
        -0x74t
        0x7ft
        0x78t
        -0x7bt
        -0x6dt
        -0x70t
        -0x5ct
        -0x5et
        -0x5et
        0x72t
        -0x6dt
        -0x6ft
        -0x63t
        -0x6et
        -0x6dt
        -0x60t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Mk;)V
    .registers 2

    .line 7570
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 7571
    :cond_b
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 7573
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7574
    .local v0, "definedStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :try_start_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ca;->A04(Lcom/facebook/ads/redexgen/X/Mk;)V
    :try_end_f
    .catch Lcom/facebook/ads/redexgen/X/L9; {:try_start_a .. :try_end_f} :catch_70

    .line 7575
    :goto_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_f

    .line 7576
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7577
    .local v1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3x;->A00(Lcom/facebook/ads/redexgen/X/Mk;)I

    move-result v1

    .local v3, "event":I
    if-eqz v1, :cond_6a

    .line 7578
    const/4 v0, 0x1

    if-ne v1, v0, :cond_32

    .line 7579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3x;->A03(Lcom/facebook/ads/redexgen/X/Mk;)V

    goto :goto_21

    .line 7580
    :cond_32
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4c

    .line 7581
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 7582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0T()Ljava/lang/String;

    .line 7583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0F(Lcom/facebook/ads/redexgen/X/Mk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 7584
    :cond_4c
    const/4 v0, 0x3

    if-ne v1, v0, :cond_21

    .line 7585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/cZ;->A0A(Lcom/facebook/ads/redexgen/X/Mk;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/cR;

    move-result-object v0

    .line 7586
    .local v2, "cueInfo":Lcom/facebook/ads/redexgen/X/cR;
    if-eqz v0, :cond_21

    .line 7587
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 7588
    :cond_5b
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7589
    :cond_6a
    new-instance v0, Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Ljava/util/List;)V

    return-object v0

    .line 7590
    .end local v1    # "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    .end local v3    # "event":I
    :catch_70
    move-exception v1

    .line 7591
    .local v1, "e":Lcom/facebook/ads/redexgen/X/L9;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C13133y (com.facebook.ads.redexgen.X.3y)
.class public final Lcom/facebook/ads/redexgen/X/3y;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Mk;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 130
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bB4fX5LAMTv2rYFSZf5QpPO9cK3aM7U2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4rNogpiUeXzxD1XRjYnBUgq0bpiXGeso"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZZjdhlJY5PlDp7fwok9ve2Ik4GbTskO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jY68eWle734mFwRjbZBzuLEFRACXLxDE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mRAvLdoBWCjAldrwDnCVKI9QK2oAThr5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6volBaa2rN43J7VxTNDfeECqhrMfRzho"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mjIk3s9ZgepLEFBTZf2kDHtQWBPBKtqB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CXgr6PN5OiOE5PNPA1AaLgjy3tzHi00L"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3y;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 7592
    const/16 v2, 0x54

    const/16 v1, 0x10

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 7593
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    .line 7594
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Mk;I)Lcom/facebook/ads/redexgen/X/Th;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7595
    const/4 v3, 0x0

    .line 7596
    .local v0, "cueBuilder":Lcom/facebook/ads/redexgen/X/Ld;
    const/4 v7, 0x0

    .line 7597
    .local v1, "cueText":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    if-lez p1, :cond_92

    .line 7598
    const/16 v0, 0x8

    if-lt p1, v0, :cond_82

    .line 7599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v0

    .line 7600
    .local v2, "boxSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v6

    .line 7601
    .local v3, "boxType":I
    add-int/lit8 p1, p1, -0x8

    .line 7602
    add-int/lit8 v2, v0, -0x8

    .line 7603
    .local v4, "payloadLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v0

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/N1;->A0r([BII)Ljava/lang/String;

    move-result-object v5

    .line 7604
    .local v5, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Mk;->A0g(I)V

    .line 7605
    sub-int/2addr p1, v2

    .line 7606
    const v0, 0x73747467

    if-ne v6, v0, :cond_2e

    .line 7607
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/cZ;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v3

    goto :goto_2

    .line 7608
    :cond_2e
    const v4, 0x7061796c

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_44

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_44
    sget-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const-string v1, "YquTnVnq4Dti6RPquF2vG2WgObuH9hxq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_2

    .line 7609
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 7610
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_76

    sget-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const-string v1, "10dvpXEAewHmzGu21u7WoYUOoiuX3xy2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v6, v5}, Lcom/facebook/ads/redexgen/X/cZ;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v7

    goto :goto_2

    :cond_76
    sget-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const-string v1, "j8fjVcciPmm4fGWSGJhTDqoRISMd2XgS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v6, v5}, Lcom/facebook/ads/redexgen/X/cZ;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v7

    goto :goto_2

    .line 7611
    :cond_82
    const/16 v2, 0x30

    const/16 v1, 0x24

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7612
    :cond_92
    if-nez v7, :cond_9c

    .line 7613
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(III)Ljava/lang/String;

    move-result-object v7

    .line 7614
    :cond_9c
    if-eqz v3, :cond_a7

    .line 7615
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Ld;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ld;->A0H()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    .line 7616
    :goto_a6
    return-object v0

    .line 7617
    :cond_a7
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/cZ;->A09(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    goto :goto_a6
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3y;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x4ft
        -0x2at
        -0x35t
        -0x29t
        -0x2bt
        -0x28t
        -0x2ct
        -0x33t
        -0x24t
        -0x33t
        -0x78t
        -0x4bt
        -0x28t
        -0x64t
        -0x41t
        -0x33t
        -0x36t
        -0x22t
        -0x24t
        -0x24t
        -0x78t
        -0x44t
        -0x29t
        -0x28t
        -0x78t
        -0x4ct
        -0x33t
        -0x22t
        -0x33t
        -0x2ct
        -0x78t
        -0x36t
        -0x29t
        -0x20t
        -0x78t
        -0x30t
        -0x33t
        -0x37t
        -0x34t
        -0x33t
        -0x26t
        -0x78t
        -0x32t
        -0x29t
        -0x23t
        -0x2at
        -0x34t
        -0x6at
        -0x35t
        -0x10t
        -0x1bt
        -0xft
        -0x11t
        -0xet
        -0x12t
        -0x19t
        -0xat
        -0x19t
        -0x5et
        -0x8t
        -0xat
        -0xat
        -0x5et
        -0x1bt
        -0x9t
        -0x19t
        -0x5et
        -0x1ct
        -0xft
        -0x6t
        -0x5et
        -0x16t
        -0x19t
        -0x1dt
        -0x1at
        -0x19t
        -0xct
        -0x5et
        -0x18t
        -0xft
        -0x9t
        -0x10t
        -0x1at
        -0x50t
        -0x60t
        -0x3dt
        -0x79t
        -0x56t
        -0x48t
        -0x4bt
        -0x37t
        -0x39t
        -0x39t
        -0x69t
        -0x48t
        -0x4at
        -0x3et
        -0x49t
        -0x48t
        -0x3bt
    .end array-data
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 7619
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7620
    .local v0, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :goto_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v0

    if-lez v0, :cond_6c

    .line 7621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_5d

    .line 7622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v2

    .line 7623
    .local v1, "boxSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v1

    .line 7624
    .local v2, "boxType":I
    const v0, 0x76747463

    if-ne v1, v0, :cond_39

    .line 7625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    add-int/lit8 v0, v2, -0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(Lcom/facebook/ads/redexgen/X/Mk;I)Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 7626
    :cond_39
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    add-int/lit8 v3, v2, -0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_52

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_52
    sget-object v2, Lcom/facebook/ads/redexgen/X/3y;->A02:[Ljava/lang/String;

    const-string v1, "GKrRm3LJBxgEObb0KOgy3tLddm7uZ1k"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0g(I)V

    goto :goto_a

    .line 7627
    :cond_5d
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7628
    :cond_6c
    new-instance v0, Lcom/facebook/ads/redexgen/X/OT;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/OT;-><init>(Ljava/util/List;)V

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C13143z (com.facebook.ads.redexgen.X.3z)
.class public final Lcom/facebook/ads/redexgen/X/3z;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A05:Ljava/lang/String;

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 131
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "A91V7rz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J9aozvJ8VyEDCYwSCt97BCRBWvNVu7QB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PATIjWQFvghQxa4OepNHirgNSdB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ysRX8gFTOE8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DSIcDjqBkehWeHzN5VLQywS4nDt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yS6yPgT4BEJIBdI3kPN7vZiIQ7j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j7DDPRqJVrPGHjFDzmP0esf2yTjRxOal"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bjrvULLYDv4qD6tjKOHoEKDgD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3z;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3z;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 7629
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v2, 0x57

    const/16 v1, 0xb

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 7630
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    .line 7631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x3f59999a    # 0.85f

    const/16 v2, 0x7d

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_c7

    .line 7632
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x30

    if-eq v1, v0, :cond_3f

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x35

    if-ne v1, v0, :cond_c7

    .line 7633
    :cond_3f
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 7634
    .local v0, "initializationBytes":[B
    const/16 v0, 0x18

    aget-byte v0, v3, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 7635
    const/16 v0, 0x1a

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/16 v0, 0x1b

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/16 v0, 0x1c

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const/16 v0, 0x1d

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 7636
    array-length v1, v3

    const/16 v0, 0x2b

    sub-int/2addr v1, v0

    .line 7637
    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/N1;->A0r([BII)Ljava/lang/String;

    move-result-object v6

    .line 7638
    .local v5, "fontFamily":Ljava/lang/String;
    const/16 v2, 0x3d

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const/16 v2, 0x87

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v7

    :cond_8e
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/3z;->A05:Ljava/lang/String;

    .line 7639
    const/16 v0, 0x19

    aget-byte v0, v3, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 7640
    aget-byte v0, v3, v5

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9f

    const/4 v5, 0x1

    :cond_9f
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/3z;->A06:Z

    .line 7641
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A06:Z

    if-eqz v0, :cond_c4

    .line 7642
    const/16 v0, 0xa

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xb

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 7643
    .local v1, "requestedVerticalPlacement":I
    int-to-float v2, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 7644
    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(FFF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A00:F

    .line 7645
    .end local v1    # "requestedVerticalPlacement":I
    :goto_c3
    return-void

    .line 7646
    :cond_c4
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3z;->A00:F

    goto :goto_c3

    .line 7647
    :cond_c7
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 7648
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 7649
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/3z;->A05:Ljava/lang/String;

    .line 7650
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/3z;->A06:Z

    .line 7651
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3z;->A00:F

    .line 7652
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    goto :goto_c3
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 6

    sget-object v1, Lcom/facebook/ads/redexgen/X/3z;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_3b

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3z;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/3z;->A08:[Ljava/lang/String;

    const-string v1, "xvDr8n8z38q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JHLcdJULTaVyjeZwj8PdKiPY8In"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Mk;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7653
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1a

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3z;->A07(Z)V

    .line 7654
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v3

    .line 7655
    .local v0, "textLength":I
    if-nez v3, :cond_1c

    .line 7656
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7657
    :cond_1a
    const/4 v0, 0x0

    goto :goto_8

    .line 7658
    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v2

    .line 7659
    .local v1, "textStartPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0Z()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 7660
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v0

    sub-int/2addr v0, v2

    .line 7661
    .local v3, "bomSize":I
    sub-int/2addr v3, v0

    .line 7662
    if-eqz v1, :cond_31

    .line 7663
    :goto_2c
    invoke-virtual {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/Mk;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7664
    :cond_31
    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A05:Ljava/nio/charset/Charset;

    goto :goto_2c
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3z;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x4et
        -0x57t
        -0x39t
        -0x3at
        -0x57t
        -0x12t
        -0x9t
        -0x13t
        -0x57t
        -0x4ft
        -0x24t
        -0x2dt
        0x27t
        0x22t
        -0x2dt
        0x16t
        0x28t
        0x18t
        0x7t
        0x18t
        0x2bt
        0x27t
        -0x1ft
        0x1ft
        0x18t
        0x21t
        0x1at
        0x27t
        0x1bt
        -0x25t
        -0x24t
        -0x2dt
        -0x25t
        -0x3ct
        -0x37t
        -0x1at
        0x4t
        0xbt
        0xct
        0xft
        0x6t
        0xbt
        0x4t
        -0x43t
        0x10t
        0x11t
        0x16t
        0x9t
        -0x43t
        0x14t
        0x6t
        0x11t
        0x5t
        -0x43t
        0x10t
        0x11t
        -0x2t
        0xft
        0x11t
        -0x43t
        -0x3bt
        -0x48t
        -0x36t
        -0x29t
        -0x32t
        -0x35t
        -0x29t
        -0xbt
        -0x8t
        -0xft
        -0x1at
        -0x1ct
        -0x9t
        -0x14t
        -0xft
        -0x16t
        -0x5dt
        -0xat
        -0x9t
        -0x4t
        -0x11t
        -0x5dt
        -0x18t
        -0xft
        -0x19t
        -0x5dt
        -0x55t
        -0x16t
        0xet
        -0x37t
        -0x3t
        -0x26t
        -0x5t
        -0x7t
        0x5t
        -0x6t
        -0x5t
        0x8t
        -0x36t
        -0x1dt
        -0x26t
        -0x13t
        -0x1bt
        -0x26t
        -0x28t
        -0x17t
        -0x26t
        -0x27t
        -0x6bt
        -0x18t
        -0x16t
        -0x29t
        -0x17t
        -0x22t
        -0x17t
        -0x1ft
        -0x26t
        -0x6bt
        -0x25t
        -0x1ct
        -0x19t
        -0x1et
        -0x2at
        -0x17t
        -0x5dt
        -0x20t
        -0x32t
        -0x25t
        -0x20t
        -0x66t
        -0x20t
        -0x2et
        -0x21t
        -0x2at
        -0x2dt
        0x20t
        0x12t
        0x1ft
        0x16t
        0x13t
    .end array-data
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 9

    .line 7665
    if-eq p1, p2, :cond_13

    .line 7666
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v2, v0, 0x18

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr v2, v0

    .line 7667
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7668
    .end local v0    # "colorArgb":I
    :cond_13
    return-void
.end method

.method public static A04(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 13

    .line 7669
    if-eq p1, p2, :cond_39

    .line 7670
    or-int/lit8 v4, p5, 0x21

    .line 7671
    .local v0, "flags":I
    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    .line 7672
    .local v1, "isBold":Z
    :goto_b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    .line 7673
    .local v4, "isItalic":Z
    :goto_10
    if-eqz v6, :cond_45

    .line 7674
    if-eqz v2, :cond_3c

    .line 7675
    const/4 v1, 0x3

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7676
    :cond_1d
    :goto_1d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3a

    .line 7677
    .local v3, "isUnderlined":Z
    :goto_21
    if-eqz v5, :cond_2b

    .line 7678
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7679
    :cond_2b
    if-nez v5, :cond_39

    if-nez v6, :cond_39

    if-nez v2, :cond_39

    .line 7680
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7681
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v3    # "isUnderlined":Z
    .end local v4    # "isItalic":Z
    :cond_39
    return-void

    .line 7682
    :cond_3a
    const/4 v5, 0x0

    goto :goto_21

    .line 7683
    :cond_3c
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1d

    .line 7684
    :cond_45
    if-eqz v2, :cond_1d

    .line 7685
    const/4 v1, 0x2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1d

    .line 7686
    :cond_51
    const/4 v2, 0x0

    goto :goto_10

    .line 7687
    :cond_53
    const/4 v6, 0x0

    goto :goto_b
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .registers 7

    .line 7688
    const/16 v2, 0x7d

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_17

    .line 7689
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v0, 0xff0021

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7690
    :cond_17
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Mk;Landroid/text/SpannableStringBuilder;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7691
    move-object/from16 v3, p1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-lt v2, v0, :cond_b3

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3z;->A07(Z)V

    .line 7692
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v9

    .line 7693
    .local v0, "start":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v10

    .line 7694
    .local v1, "end":I
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0g(I)V

    .line 7695
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v7

    .line 7696
    .local v9, "fontFace":I
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Mk;->A0g(I)V

    .line 7697
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v13

    .line 7698
    .local v2, "colorRgba":I
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v2, 0x21

    const/4 v1, 0x2

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x57

    const/16 v1, 0xb

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-le v10, v3, :cond_7d

    .line 7699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x42

    const/16 v1, 0x15

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    const/16 v1, 0x17

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7700
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7701
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7702
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 7703
    :cond_7d
    if-lt v9, v10, :cond_b6

    .line 7704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    const/16 v1, 0x1a

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7705
    return-void

    .line 7706
    :cond_b3
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 7707
    :cond_b6
    move-object/from16 v3, p0

    iget v8, v3, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/3z;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3z;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e8

    .line 7708
    sget-object v2, Lcom/facebook/ads/redexgen/X/3z;->A08:[Ljava/lang/String;

    const-string v1, "6HBeEbjJg4s"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ivqURRoqLd6kXOwYsXbwUcn68bl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v14, v3, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    move-object v12, v6

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/3z;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 7709
    return-void

    :cond_e8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7710
    if-eqz p0, :cond_3

    .line 7711
    return-void

    .line 7712
    :cond_3
    const/16 p0, 0x62

    const/16 v1, 0x1b

    const/16 v0, 0x33

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    move/from16 v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 7714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3z;->A01(Lcom/facebook/ads/redexgen/X/Mk;)Ljava/lang/String;

    move-result-object v1

    .line 7715
    .local v0, "cueTextString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7716
    sget-object v0, Lcom/facebook/ads/redexgen/X/OU;->A01:Lcom/facebook/ads/redexgen/X/OU;

    return-object v0

    .line 7717
    :cond_16
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7718
    .local v1, "cueText":Landroid/text/SpannableStringBuilder;
    iget v9, p0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 7719
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 7720
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0xff0000

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3z;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 7721
    iget v9, p0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/4 v10, -0x1

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3z;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 7722
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3z;->A05:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v8, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/3z;->A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 7723
    iget v5, p0, Lcom/facebook/ads/redexgen/X/3z;->A00:F

    .line 7724
    .local v2, "verticalPlacement":F
    :goto_3e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_af

    .line 7725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v4

    .line 7726
    .local v3, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v7

    .line 7727
    .local v5, "atomSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0C()I

    move-result v6

    .line 7728
    .local v6, "atomType":I
    const v0, 0x7374796c

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ne v6, v0, :cond_7f

    .line 7729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v0

    if-lt v0, v2, :cond_7d

    :goto_69
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3z;->A07(Z)V

    .line 7730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v2

    .line 7731
    .local v7, "styleRecordCount":I
    const/4 v1, 0x0

    .local v8, "i":I
    :goto_73
    if-ge v1, v2, :cond_a6

    .line 7732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {p0, v0, v8}, Lcom/facebook/ads/redexgen/X/3z;->A06(Lcom/facebook/ads/redexgen/X/Mk;Landroid/text/SpannableStringBuilder;)V

    .line 7733
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 7734
    :cond_7d
    const/4 v1, 0x0

    goto :goto_69

    .line 7735
    :cond_7f
    const v0, 0x74626f78

    if-ne v6, v0, :cond_a6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A06:Z

    if-eqz v0, :cond_a6

    .line 7736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v0

    if-lt v0, v2, :cond_ad

    :goto_90
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3z;->A07(Z)V

    .line 7737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v0

    .line 7738
    .local v7, "requestedVerticalPlacement":I
    int-to-float v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 7739
    .end local v2    # "verticalPlacement":F
    .local v8, "verticalPlacement":F
    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(FFF)F

    move-result v5

    .line 7740
    .end local v8    # "verticalPlacement":F
    .restart local v2    # "verticalPlacement":F
    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3z;->A04:Lcom/facebook/ads/redexgen/X/Mk;

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mk;->A0f(I)V

    .line 7741
    .end local v3    # "position":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    goto :goto_3e

    .line 7742
    :cond_ad
    const/4 v1, 0x0

    goto :goto_90

    .line 7743
    :cond_af
    nop

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ld;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ld;-><init>()V

    .line 7744
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Ld;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    .line 7745
    invoke-virtual {v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Ld;->A07(FI)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    .line 7746
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ld;->A09(I)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    .line 7747
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ld;->A0H()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OU;-><init>(Lcom/facebook/ads/redexgen/X/Th;)V

    .line 7748
    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass40 (com.facebook.ads.redexgen.X.40)
.class public final Lcom/facebook/ads/redexgen/X/40;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/c6;,
        Lcom/facebook/ads/redexgen/X/c5;,
        Lcom/facebook/ads/redexgen/X/c7;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Lcom/facebook/ads/redexgen/X/c5;

.field public static final A06:Lcom/facebook/ads/redexgen/X/c6;

.field public static final A07:Ljava/util/regex/Pattern;

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;

.field public static final A0A:Ljava/util/regex/Pattern;

.field public static final A0B:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 132
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hb0oD6d2hGz8N6b0bBhwCbPu83tqp5OL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "glmYgAqOXq7mJQ5l29beRVWSoZZVHHDx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7uSJ0aqkklEjd7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CLDvcAkxp5ooPVD6wk7XI2a8SnWOM9DL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "K4mMehV56TmlTmPDWXJZOvVE5C1aV2k2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sySaB2b8nqwnFYuyJzJUaC0UEjiMFtOv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NK4puuocgnPQZZoAtQ43VdAFTEF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Atuoeav4R601XGSm72WoSp1KDOvFrnhl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/40;->A0C()V

    const/16 v2, 0x41b

    const/16 v1, 0x55

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A08:Ljava/util/regex/Pattern;

    .line 133
    const/16 v2, 0x3f6

    const/16 v1, 0x25

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A0A:Ljava/util/regex/Pattern;

    .line 134
    const/16 v2, 0x3c5

    const/16 v1, 0x1d

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A09:Ljava/util/regex/Pattern;

    .line 135
    const/16 v2, 0x3e2

    const/16 v1, 0x14

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A04:Ljava/util/regex/Pattern;

    .line 136
    const/16 v2, 0x47d

    const/16 v1, 0x1d

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A03:Ljava/util/regex/Pattern;

    .line 137
    const/16 v2, 0x49a

    const/16 v1, 0x1f

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A0B:Ljava/util/regex/Pattern;

    .line 138
    const/16 v2, 0x470

    const/16 v1, 0xd

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A07:Ljava/util/regex/Pattern;

    .line 139
    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/c6;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/c6;-><init>(FII)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A06:Lcom/facebook/ads/redexgen/X/c6;

    .line 140
    const/16 v2, 0x20

    const/16 v1, 0xf

    new-instance v0, Lcom/facebook/ads/redexgen/X/c5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/c5;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A05:Lcom/facebook/ads/redexgen/X/c5;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 7749
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 7750
    :try_start_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 7752
    return-void
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_1a} :catch_1a

    .line 7753
    :catch_1a
    move-exception v3

    .line 7754
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x6

    const/16 v1, 0x2d

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;)F
    .registers 8

    .line 7755
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 7756
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_38

    .line 7757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2ab

    const/16 v1, 0x19

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7758
    return v6

    .line 7759
    :cond_38
    const/4 v0, 0x1

    :try_start_39
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7760
    .local v1, "percentage":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 7761
    .local v4, "value":F
    const/high16 v0, -0x3d380000    # -100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7762
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7763
    .end local v4    # "value":F
    .local v2, "value":F
    return v0
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_54} :catch_54

    .line 7764
    .end local v1    # "percentage":Ljava/lang/String;
    .end local v2    # "value":F
    :catch_54
    move-exception v4

    .line 7765
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8f

    const/16 v1, 0x17

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7766
    return v6
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c6;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7767
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A08:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 7768
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v4, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_84

    .line 7769
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7770
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0xe10

    mul-long/2addr v0, v5

    long-to-double v5, v0

    .line 7771
    .local p0, "durationSeconds":D
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7772
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x3c

    mul-long/2addr v2, v0

    long-to-double v0, v2

    add-double/2addr v5, v0

    .line 7773
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7774
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v0, v2

    add-double/2addr v5, v0

    .line 7775
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 7776
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_82

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_52
    add-double/2addr v5, v0

    .line 7777
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 7778
    .local v6, "frames":Ljava/lang/String;
    if-eqz v0, :cond_80

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float v1, v9

    iget v0, p1, Lcom/facebook/ads/redexgen/X/c6;->A00:F

    div-float/2addr v1, v0

    float-to-double v0, v1

    :goto_62
    add-double/2addr v5, v0

    .line 7779
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 7780
    .local p4, "subframes":Ljava/lang/String;
    if-eqz v0, :cond_77

    .line 7781
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/c6;->A01:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/c6;->A00:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    .line 7782
    :cond_77
    add-double/2addr v5, v2

    .line 7783
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v5

    double-to-long v0, v2

    return-wide v0

    .line 7784
    :cond_80
    move-wide v0, v2

    goto :goto_62

    .line 7785
    :cond_82
    move-wide v0, v2

    goto :goto_52

    .line 7786
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local p0    # "durationSeconds":D
    .end local p4
    :cond_84
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A0A:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 7787
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 7788
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7789
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 7790
    .local v4, "offsetSeconds":D
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7791
    .local p1, "unit":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_19c

    :cond_af
    const/4 v4, -0x1

    :goto_b0
    packed-switch v4, :pswitch_data_1b6

    .line 7792
    :goto_b3
    :pswitch_b3
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v7

    double-to-long v0, v2

    return-wide v0

    .line 7793
    :pswitch_bb
    iget v0, p1, Lcom/facebook/ads/redexgen/X/c6;->A02:I

    int-to-double v0, v0

    div-double/2addr v7, v0

    goto :goto_b3

    .line 7794
    :pswitch_c0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/c6;->A00:F

    float-to-double v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_174

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "R599Ypd0gXL5S9jfhCJlXlJyfZ11Rwcz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "djHX7kon8t8CWr2R8WJ39DQ5W3xp2TYq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    div-double/2addr v7, v3

    .line 7795
    goto :goto_b3

    .line 7796
    :pswitch_dd
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v0

    .line 7797
    goto :goto_b3

    .line 7798
    :pswitch_e4
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v7, v0

    .line 7799
    goto :goto_b3

    .line 7800
    :pswitch_e8
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v7, v0

    .line 7801
    goto :goto_b3

    .line 7802
    :sswitch_ef
    const/16 v2, 0x619

    const/4 v1, 0x2

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v4, 0x3

    goto :goto_b0

    :sswitch_100
    const/16 v2, 0x68f

    const/4 v1, 0x1

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_b0

    :sswitch_110
    const/16 v2, 0x668

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v4, 0x2

    goto :goto_b0

    :sswitch_120
    const/16 v2, 0x610

    const/4 v1, 0x1

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v4, 0x1

    goto :goto_b0

    :sswitch_131
    const/16 v6, 0x5bb

    const/4 v5, 0x1

    const/16 v4, 0x59

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_150

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    :goto_14d
    const/4 v4, 0x0

    goto/16 :goto_b0

    :cond_150
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "NTv5CnEcOEKuo27YoCL7GX9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_14d

    :sswitch_162
    const/16 v2, 0x551

    const/4 v1, 0x1

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v4, 0x4

    goto/16 :goto_b0

    :cond_174
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7803
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local p1    # "unit":Ljava/lang/String;
    :cond_17a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c4

    const/16 v1, 0x1b

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_19c
    .sparse-switch
        0x66 -> :sswitch_162
        0x68 -> :sswitch_131
        0x6d -> :sswitch_120
        0x73 -> :sswitch_110
        0x74 -> :sswitch_100
        0xda6 -> :sswitch_ef
    .end sparse-switch

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e4
        :pswitch_b3
        :pswitch_dd
        :pswitch_c0
        :pswitch_bb
    .end packed-switch
.end method

.method public static A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 6

    .line 7804
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c2

    :cond_b
    const/4 v0, -0x1

    :goto_c
    packed-switch v0, :pswitch_data_d8

    .line 7805
    const/4 v0, 0x0

    return-object v0

    .line 7806
    :sswitch_11
    const/16 p0, 0x672

    const/4 v4, 0x5

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_bc

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "6gmBXNTGuagtp6WCINJSftdlatAIaECF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4H14LcbbOY6HeCYDHrJtzxvFGV8p744E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x61

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :sswitch_42
    const/16 v2, 0x653

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_c

    :sswitch_53
    const/16 p0, 0x601

    const/4 v4, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7c

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "CVIc3QguhGqEPOGNGglLIbu2Eb4dnTDp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XH772ff1W8zGhv9EekUO43pkaqm4vXCm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x4c

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_7a
    const/4 v0, 0x0

    goto :goto_c

    :cond_7c
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "siSD1kKGcAhttp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7a

    :sswitch_8f
    const/16 v2, 0x548

    const/4 v1, 0x3

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto/16 :goto_c

    :sswitch_a1
    const/16 v2, 0x513

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto/16 :goto_c

    .line 7807
    :pswitch_b3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 7808
    :pswitch_b6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 7809
    :pswitch_b9
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 7810
    :cond_bc
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_c2
    .sparse-switch
        -0x514d33ab -> :sswitch_a1
        0x188db -> :sswitch_8f
        0x32a007 -> :sswitch_53
        0x677c21c -> :sswitch_42
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b9
        :pswitch_b6
        :pswitch_b6
        :pswitch_b3
    .end packed-switch
.end method

.method public static A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c5;)Lcom/facebook/ads/redexgen/X/c5;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7811
    const/16 v2, 0x5c0

    const/16 v1, 0x23

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x505

    const/16 v1, 0xe

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7812
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v5, :cond_1a

    .line 7813
    return-object p1

    .line 7814
    :cond_1a
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 7815
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/16 v2, 0xa6

    const/16 v1, 0x24

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_4f

    .line 7816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7817
    return-object p1

    .line 7818
    :cond_4f
    const/4 v0, 0x1

    :try_start_50
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 7819
    .local v2, "columns":I
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 7820
    .local v5, "rows":I
    if-eqz p0, :cond_77

    if-eqz v7, :cond_77

    .line 7821
    new-instance v0, Lcom/facebook/ads/redexgen/X/c5;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/c5;-><init>(II)V

    return-object v0

    .line 7822
    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22d

    const/16 v1, 0x18

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/c5;
    .end local p2
    throw v0
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_a8} :catch_a8

    .line 7823
    .end local v2    # "columns":I
    .end local v5    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/c5;
    .restart local p2
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7824
    return-object p1
.end method

.method public static A04(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/c6;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7825
    const/16 v8, 0x1e

    .line 7826
    .local v0, "frameRate":I
    const/16 v2, 0x577

    const/16 v1, 0x9

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5c0

    const/16 v1, 0x23

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7827
    .local v1, "frameRateString":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 7828
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 7829
    :cond_1f
    const/high16 v7, 0x3f800000    # 1.0f

    .line 7830
    .local v3, "frameRateMultiplier":F
    const/16 v2, 0x580

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7831
    .local v4, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_52

    .line 7832
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7833
    .local v5, "parts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_ab

    .line 7834
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v7, v0

    .line 7835
    .local v6, "numerator":F
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 7836
    .local v7, "denominator":F
    div-float/2addr v7, v0

    .line 7837
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_52
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A06:Lcom/facebook/ads/redexgen/X/c6;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/c6;->A01:I

    .line 7838
    .local v5, "subFrameRate":I
    const/16 v2, 0x683

    const/16 v1, 0xc

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7839
    .local v6, "subFrameRateString":Ljava/lang/String;
    if-eqz v0, :cond_6a

    .line 7840
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 7841
    :cond_6a
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A06:Lcom/facebook/ads/redexgen/X/c6;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/c6;->A02:I

    .line 7842
    .local v7, "tickRate":I
    const/16 v10, 0x6d9

    const/16 v4, 0x8

    const/16 v3, 0x62

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a5

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "jzWgjzuVw4Iopxi9lkEbJ1qF2pPcyd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v10, v4, v3}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7843
    .local v2, "tickRateString":Ljava/lang/String;
    if-eqz v0, :cond_9d

    .line 7844
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 7845
    :cond_9d
    int-to-float v1, v8

    mul-float/2addr v1, v7

    new-instance v0, Lcom/facebook/ads/redexgen/X/c6;

    invoke-direct {v0, v1, v6, v5}, Lcom/facebook/ads/redexgen/X/c6;-><init>(FII)V

    return-object v0

    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7846
    .end local v6    # "subFrameRateString":Ljava/lang/String;
    .end local v7    # "tickRate":I
    :cond_ab
    const/16 v2, 0x593    # 2.0E-42f

    const/16 v1, 0x28

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A05(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/c7;
    .registers 8

    .line 7847
    const/16 v2, 0x54b

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7848
    .local v0, "ttsExtent":Ljava/lang/String;
    const/4 p0, 0x0

    if-nez v5, :cond_11

    .line 7849
    return-object p0

    .line 7850
    :cond_11
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 7851
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_46

    .line 7852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe9

    const/16 v1, 0x1f

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7853
    return-object p0

    .line 7854
    :cond_46
    const/4 v0, 0x1

    :try_start_47
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7855
    .local v3, "width":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7856
    .local v5, "height":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/c7;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/c7;-><init>(II)V

    return-object v0
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_6a} :catch_6a

    .line 7857
    .end local v3    # "width":I
    .end local v5    # "height":I
    .local v3, "e":Ljava/lang/NumberFormatException;
    :catch_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xca

    const/16 v1, 0x1f

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7858
    return-object p0
.end method

.method public static A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c8;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/c6;)Lcom/facebook/ads/redexgen/X/c8;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/facebook/ads/redexgen/X/c8;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/c6;",
            ")",
            "Lcom/facebook/ads/redexgen/X/c8;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 7859
    .local p5, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 7860
    .local v1, "duration":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 7861
    .local v3, "startTime":J
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 7862
    .local v5, "endTime":J
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v19

    .line 7863
    .local v7, "regionId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 7864
    .local v8, "imageId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 7865
    .local v9, "styleIds":[Ljava/lang/String;
    move-object/from16 v8, p0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 7866
    .local v13, "attributeCount":I
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/40;->A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v17

    .line 7867
    .local v14, "style":Lcom/facebook/ads/redexgen/X/cF;
    const/4 v7, 0x0

    .end local v1    # "duration":J
    .end local v7    # "regionId":Ljava/lang/String;
    .end local v8    # "imageId":Ljava/lang/String;
    .end local v9    # "styleIds":[Ljava/lang/String;
    .local v10, "i":I
    .local v15, "duration":J
    .local v17, "regionId":Ljava/lang/String;
    .local v18, "imageId":Ljava/lang/String;
    .local v19, "styleIds":[Ljava/lang/String;
    :goto_27
    if-ge v7, v10, :cond_119

    .line 7868
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 7869
    .local v1, "attr":Ljava/lang/String;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 7870
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v9, 0x1

    sparse-switch v0, :sswitch_data_156

    :cond_39
    const/4 v0, -0x1

    :goto_3a
    move-object/from16 v1, p3

    packed-switch v0, :pswitch_data_170

    .line 7871
    .end local v1    # "attr":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3f
    :goto_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 7872
    :pswitch_42
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 7873
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .end local v18    # "imageId":Ljava/lang/String;
    .local v7, "imageId":Ljava/lang/String;
    goto :goto_3f

    .line 7874
    :pswitch_55
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 7875
    move-object/from16 v19, v5

    .end local v17    # "regionId":Ljava/lang/String;
    .local v7, "regionId":Ljava/lang/String;
    goto :goto_3f

    .line 7876
    .end local v7    # "regionId":Ljava/lang/String;
    .restart local v17    # "regionId":Ljava/lang/String;
    :pswitch_60
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/40;->A0G(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7877
    .local v7, "ids":[Ljava/lang/String;
    array-length v0, v1

    if-lez v0, :cond_3f

    .line 7878
    move-object/from16 v18, v1

    .end local v19    # "styleIds":[Ljava/lang/String;
    .local v8, "styleIds":[Ljava/lang/String;
    goto :goto_3f

    .line 7879
    .end local v7    # "ids":[Ljava/lang/String;
    .restart local v15    # "duration":J
    :pswitch_6a
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/40;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c6;)J

    move-result-wide v15

    .line 7880
    goto :goto_3f

    .line 7881
    :pswitch_6f
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/40;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c6;)J

    move-result-wide v13

    .line 7882
    goto :goto_3f

    .line 7883
    :sswitch_74
    const/16 v2, 0x4d0

    const/16 v1, 0xf

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x5

    goto :goto_3a

    :sswitch_86
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x3

    goto :goto_3a

    :sswitch_97
    const/16 v2, 0x4f6

    const/4 v1, 0x5

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    goto :goto_3a

    :sswitch_a8
    const/16 v4, 0x548

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    const/4 v1, 0x3

    aget-object v2, v2, v1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_e6

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "T6LlqUEW3MXc0H"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x5a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto/16 :goto_3a

    .line 7884
    .end local v7
    .end local v8    # "styleIds":[Ljava/lang/String;
    .restart local v19    # "styleIds":[Ljava/lang/String;
    :pswitch_d5
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/40;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c6;)J

    move-result-wide v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_ec

    :cond_e6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7885
    .end local v15    # "duration":J
    .local v7, "duration":J
    :cond_ec
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "idu7VILTlStWH4B"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    goto/16 :goto_3f

    .line 7886
    :sswitch_f5
    const/16 v2, 0x543

    const/4 v1, 0x3

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x2

    goto/16 :goto_3a

    :sswitch_107
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    goto/16 :goto_3a

    .line 7887
    .end local v10    # "i":I
    :cond_119
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, p1

    if-eqz v2, :cond_136

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/c8;->A02:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_136

    .line 7888
    cmp-long v0, v13, v4

    if-eqz v0, :cond_12f

    .line 7889
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/c8;->A02:J

    add-long/2addr v13, v0

    .line 7890
    :cond_12f
    cmp-long v0, v15, v4

    if-eqz v0, :cond_136

    .line 7891
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/c8;->A02:J

    add-long/2addr v15, v0

    .line 7892
    .end local v3    # "startTime":J
    .local v20, "startTime":J
    :cond_136
    cmp-long v0, v15, v4

    if-nez v0, :cond_140

    .line 7893
    cmp-long v0, v11, v4

    if-eqz v0, :cond_14b

    .line 7894
    add-long v15, v13, v11

    .line 7895
    .end local v5    # "endTime":J
    .local p1, "endTime":J
    :cond_140
    :goto_140
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 7896
    move-object/from16 p0, v2

    invoke-static/range {v12 .. v21}, Lcom/facebook/ads/redexgen/X/c8;->A02(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/cF;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    return-object v0

    .line 7897
    :cond_14b
    if-eqz v2, :cond_140

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/c8;->A01:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_140

    .line 7898
    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/c8;->A01:J

    goto :goto_140

    :sswitch_data_156
    .sparse-switch
        -0x37b7d90c -> :sswitch_107
        0x18601 -> :sswitch_f5
        0x188db -> :sswitch_a8
        0x59478a9 -> :sswitch_97
        0x68b1db1 -> :sswitch_86
        0x4d0b70cd -> :sswitch_74
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6a
        :pswitch_d5
        :pswitch_60
        :pswitch_55
        :pswitch_42
    .end packed-switch
.end method

.method public static A07(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c5;Lcom/facebook/ads/redexgen/X/c7;)Lcom/facebook/ads/redexgen/X/c9;
    .registers 26

    .line 7899
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 7900
    .local v14, "regionId":Ljava/lang/String;
    const/4 v12, 0x0

    if-nez v16, :cond_13

    .line 7901
    return-object v12

    .line 7902
    :cond_13
    const/16 v2, 0x644

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7903
    .local v15, "regionOrigin":Ljava/lang/String;
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_331

    .line 7904
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 7905
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 7906
    .local v6, "originPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const/16 v3, 0x12f

    const/16 v2, 0x27

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x156

    const/16 v2, 0x29

    const/16 v0, 0x12

    invoke-static {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v2

    const/high16 v15, 0x42c80000    # 100.0f

    const/4 v6, 0x2

    const/4 v13, 0x1

    move-object/from16 v11, p2

    if-eqz v10, :cond_8a

    .line 7907
    :try_start_57
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v15

    .line 7908
    .local v0, "position":F
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_ce
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_75} :catch_75

    .line 7909
    .end local v0    # "position":F
    .end local v7
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7910
    return-object v12

    .line 7911
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_8a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_312

    .line 7912
    if-nez v11, :cond_a7

    .line 7913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7914
    return-object v12

    .line 7915
    :cond_a7
    :try_start_a7
    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7916
    .local v0, "width":I
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7917
    .local v12, "height":I
    int-to-float v5, v4

    iget v0, v11, Lcom/facebook/ads/redexgen/X/c7;->A01:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 7918
    .local v3, "position":F
    int-to-float v4, v1

    iget v0, v11, Lcom/facebook/ads/redexgen/X/c7;->A00:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 7919
    .end local v0    # "width":I
    .end local v12    # "height":I
    .restart local v7
    goto :goto_cf

    .line 7920
    :goto_ce
    div-float/2addr v4, v15
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_cf} :catch_2fc

    .line 7921
    .local v7, "line":F
    .end local v3    # "position":F
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .local v17, "position":F
    :goto_cf
    const/16 v3, 0x54b

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7922
    .local v13, "regionExtent":Ljava/lang/String;
    if-eqz v1, :cond_2ed

    .line 7923
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 7924
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 7925
    .local v5, "extentPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    const/16 v10, 0x108

    const/16 v1, 0x27

    const/16 v0, 0x4a

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_12e

    .line 7926
    :try_start_fa
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v15

    .line 7927
    .local v0, "width":F
    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_173
    :try_end_118
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_118} :catch_118

    .line 7928
    .end local v0    # "width":F
    .end local v4
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7929
    const/4 v0, 0x0

    return-object v0

    .line 7930
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_12e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 7931
    if-nez v11, :cond_14c

    .line 7932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7933
    const/4 v0, 0x0

    return-object v0

    .line 7934
    :cond_14c
    :try_start_14c
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7935
    .local v0, "extentWidth":I
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7936
    .local v8, "extentHeight":I
    int-to-float v2, v2

    iget v0, v11, Lcom/facebook/ads/redexgen/X/c7;->A01:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 7937
    .local v9, "width":F
    int-to-float v3, v1

    iget v0, v11, Lcom/facebook/ads/redexgen/X/c7;->A00:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 7938
    .end local v0    # "extentWidth":I
    .end local v8    # "extentHeight":I
    .restart local v4
    goto :goto_174

    .line 7939
    :goto_173
    div-float/2addr v3, v15
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_14c .. :try_end_174} :catch_2b7

    .line 7940
    .local v4, "height":F
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "height":F
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "width":F
    .local v0, "width":F
    .local v16, "height":F
    :goto_174
    const/16 v20, 0x0

    .line 7941
    .local v3, "lineAnchor":I
    const/16 v8, 0x534

    const/16 v1, 0xc

    const/16 v0, 0x77

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7942
    .local v18, "displayAlign":Ljava/lang/String;
    if-eqz v0, :cond_195

    .line 7943
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_340

    :cond_191
    const/4 v0, -0x1

    :goto_192
    packed-switch v0, :pswitch_data_34a

    .line 7944
    .end local v3    # "lineAnchor":I
    .end local v7    # "line":F
    .local v19, "lineAnchor":I
    .local v20, "line":F
    :cond_195
    :goto_195
    move-object/from16 v0, p1

    iget v0, v0, Lcom/facebook/ads/redexgen/X/c5;->A01:I

    int-to-float v0, v0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p1, p1, v0

    .line 7945
    .local v21, "regionTextHeight":F
    const/high16 p2, -0x80000000

    .line 7946
    .local v3, "verticalType":I
    const/16 v8, 0x6ec

    const/16 v1, 0xb

    const/16 v0, 0x4e

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7947
    .local v22, "writingDirection":Ljava/lang/String;
    if-eqz v0, :cond_1bf

    .line 7948
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_352

    :cond_1bb
    const/4 v6, -0x1

    :goto_1bc
    packed-switch v6, :pswitch_data_360

    .line 7949
    .end local v3    # "verticalType":I
    .local p0, "verticalType":I
    :cond_1bf
    :goto_1bf
    new-instance v15, Lcom/facebook/ads/redexgen/X/c9;

    const/16 v19, 0x0

    const/16 p0, 0x1

    .end local v13    # "regionExtent":Ljava/lang/String;
    .local p2, "regionExtent":Ljava/lang/String;
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v18, v4

    move/from16 v17, v5

    invoke-direct/range {v15 .. v25}, Lcom/facebook/ads/redexgen/X/c9;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v15

    .line 7950
    :pswitch_1d1
    const/16 p2, 0x1

    .line 7951
    goto :goto_1bf

    .line 7952
    :pswitch_1d4
    const/16 p2, 0x2

    .line 7953
    goto :goto_1bf

    .line 7954
    :sswitch_1d7
    const/16 v11, 0x696

    const/4 v10, 0x4

    const/16 v9, 0x44

    sget-object v7, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v7, v0

    const/4 v0, 0x3

    aget-object v7, v7, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2b1

    sget-object v7, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "3Z8MmW2eflwqRpQs"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    invoke-static {v11, v10, v9}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    goto :goto_1bc

    :sswitch_202
    const/16 v6, 0x692

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    const/4 v6, 0x1

    goto :goto_1bc

    :sswitch_213
    const/16 v6, 0x690

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    const/4 v6, 0x0

    goto :goto_1bc

    .line 7955
    :pswitch_224
    const/16 v20, 0x2

    .line 7956
    add-float/2addr v4, v3

    .line 7957
    goto/16 :goto_195

    .line 7958
    :pswitch_229
    const/16 v20, 0x1

    .line 7959
    const/high16 v9, 0x40000000    # 2.0f

    sget-object v8, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v8, v0

    const/4 v0, 0x5

    aget-object v8, v8, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_247

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_247
    sget-object v8, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "u0zN4xc1SWrgJTBeWYLLYp0Ak8xeh4QN"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const-string v1, "g6R0MiGrpRFJsyd2obMmZCiM3c3IGf6H"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    div-float v0, v3, v9

    add-float/2addr v4, v0

    .line 7960
    goto/16 :goto_195

    .line 7961
    :sswitch_258
    const/16 v8, 0x4b9

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    const/4 v0, 0x1

    goto/16 :goto_192

    :sswitch_26a
    const/16 v10, 0x513

    sget-object v8, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v8, v0

    const/4 v0, 0x5

    aget-object v8, v8, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_297

    sget-object v8, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "JWZe38OI3bFI4d"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    :goto_294
    const/4 v0, 0x0

    goto/16 :goto_192

    :cond_297
    sget-object v8, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "yFPajzz8OaAa62J7c8wtT4v6Vf8O3ZX0"

    const/4 v0, 0x7

    aput-object v1, v8, v0

    const-string v1, "QncUD5w4HYT7zaF8GzOBD2KMc7Yar5Cn"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    goto :goto_294

    :cond_2b1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7962
    .end local v0    # "width":F
    .end local v16    # "height":F
    .end local v18    # "displayAlign":Ljava/lang/String;
    .end local v19    # "lineAnchor":I
    .end local v20    # "line":F
    .end local v21    # "regionTextHeight":F
    .end local v22    # "writingDirection":Ljava/lang/String;
    .end local p0    # "verticalType":I
    .end local p2    # "regionExtent":Ljava/lang/String;
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "line":F
    .restart local v13    # "regionExtent":Ljava/lang/String;
    .end local v13    # "regionExtent":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "regionExtent":Ljava/lang/String;
    :catch_2b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7963
    const/4 v0, 0x0

    return-object v0

    .line 7964
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "regionExtent":Ljava/lang/String;
    .restart local v13    # "regionExtent":Ljava/lang/String;
    :cond_2cd
    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17f

    const/16 v1, 0x29

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7965
    return-object v4

    .line 7966
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    :cond_2ed
    const/4 v3, 0x0

    const/16 v2, 0x1d1

    const/16 v1, 0x21

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7967
    return-object v3

    .line 7968
    .end local v7    # "line":F
    .end local v13    # "regionExtent":Ljava/lang/String;
    .end local v17    # "position":F
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7969
    const/4 v0, 0x0

    return-object v0

    .line 7970
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a8

    const/16 v1, 0x29

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7971
    return-object v12

    .line 7972
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :cond_331
    const/16 v2, 0x1f2

    const/16 v1, 0x21

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 7973
    return-object v12

    nop

    :sswitch_data_340
    .sparse-switch
        -0x514d33ab -> :sswitch_26a
        0x58705dc -> :sswitch_258
    .end sparse-switch

    :pswitch_data_34a
    .packed-switch 0x0
        :pswitch_229
        :pswitch_224
    .end packed-switch

    :sswitch_data_352
    .sparse-switch
        0xe6e -> :sswitch_213
        0x363874 -> :sswitch_202
        0x363928 -> :sswitch_1d7
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_1d4
        :pswitch_1d4
        :pswitch_1d1
    .end packed-switch
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;
    .registers 1

    .line 7974
    if-nez p0, :cond_7

    new-instance p0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cF;-><init>()V

    :cond_7
    return-object p0
.end method

.method public static A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;
    .registers 17

    .line 7975
    move-object/from16 v7, p1

    move-object v5, p0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 7976
    .local v0, "attributeCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v3, v4, :cond_553

    .line 7977
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 7978
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 p1, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 p0, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_554

    :cond_21
    const/4 v13, -0x1

    :goto_22
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    packed-switch v13, :pswitch_data_592

    .line 7979
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 7980
    :pswitch_32
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/40;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0F(F)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7981
    goto :goto_2f

    .line 7982
    :pswitch_3f
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/c4;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/c4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0N(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7983
    goto :goto_2f

    .line 7984
    :pswitch_4c
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_40f

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "CZsdGhmgxqBZPVpB9LJcZtG4rRKO3AiG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kbdpPZ2pYoMp6OhI08JAMLioyAn4KZsG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5b4

    :cond_77
    const/4 v10, -0x1

    :goto_78
    packed-switch v10, :pswitch_data_5c6

    goto :goto_2f

    :sswitch_7c
    const/16 v2, 0x605

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v10, 0x0

    goto :goto_78

    :sswitch_8e
    const/16 v2, 0x628

    const/16 v1, 0xd

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v10, 0x1

    goto :goto_78

    :sswitch_a0
    const/16 v2, 0x6e3

    const/16 v1, 0x9

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v10, 0x2

    goto :goto_78

    :sswitch_b2
    const/16 v13, 0x639

    const/16 v11, 0xb

    const/16 v9, 0x12

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_541

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "M4wPk2Q3RDc7leQWVpJJrKZ1lZWKLnMT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KQUEu4hziCCKE9r5yjJCR7jx83AoqKVe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v13, v11, v9}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_78

    .line 7985
    :pswitch_e3
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/cF;->A0V(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    goto/16 :goto_2f

    .line 7986
    :pswitch_ed
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0V(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7987
    goto/16 :goto_2f

    .line 7988
    :pswitch_f7
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/cF;->A0T(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7989
    goto/16 :goto_2f

    .line 7990
    :pswitch_101
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0T(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7991
    goto/16 :goto_2f

    .line 7992
    :pswitch_10b
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5d2

    :cond_116
    const/16 p1, -0x1

    :goto_118
    packed-switch p1, :pswitch_data_5ec

    goto/16 :goto_2f

    :sswitch_11d
    const/16 v2, 0x69a

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    const/16 p1, 0x3

    goto :goto_118

    :sswitch_12f
    const/16 v2, 0x4df

    const/4 v1, 0x4

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    const/16 p1, 0x1

    goto :goto_118

    :sswitch_141
    const/16 v13, 0x6b2

    const/16 v9, 0xd

    const/16 v2, 0x28

    sget-object v14, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v14, v0

    const/4 v0, 0x0

    aget-object v14, v14, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_16f

    sget-object v14, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "3kdJiXgV2Xqvz2"

    const/4 v0, 0x6

    aput-object v1, v14, v0

    invoke-static {v13, v9, v2}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    :goto_16c
    const/16 p1, 0x4

    goto :goto_118

    :cond_16f
    sget-object v14, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "dd9qNAy4fFkpm8EHxVJosHdZdo4HwM7A"

    const/4 v0, 0x4

    aput-object v1, v14, v0

    const-string v1, "woe0jGCEvtYkhcybJGJNk7ekpUpVZfxh"

    const/4 v0, 0x5

    aput-object v1, v14, v0

    invoke-static {v13, v9, v2}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    goto :goto_16c

    :sswitch_186
    const/16 v2, 0x52b

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1a5

    if-eqz v9, :cond_116

    goto/16 :goto_118

    :cond_1a5
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "qlSzk1yGFNId1GvWfcJkvs6lnv0OyfcJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "RZ2grigk5CJ9qUgSBgJ02tvsslg8isgW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v9, :cond_116

    goto/16 :goto_118

    :sswitch_1b5
    const/16 v2, 0x51e

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    const/16 p1, 0x0

    goto/16 :goto_118

    :sswitch_1c9
    const/16 v2, 0x4e3

    const/16 v1, 0xd

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    const/16 p1, 0x2

    goto/16 :goto_118

    .line 7993
    :pswitch_1dd
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/cF;->A0K(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7994
    goto/16 :goto_2f

    .line 7995
    :pswitch_1e7
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/cF;->A0K(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7996
    goto/16 :goto_2f

    .line 7997
    :pswitch_1f1
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/cF;->A0K(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 7998
    goto/16 :goto_2f

    .line 7999
    :pswitch_1fb
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0K(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8000
    goto/16 :goto_2f

    .line 8001
    :pswitch_205
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5fc

    :cond_210
    :goto_210
    packed-switch p0, :pswitch_data_606

    goto/16 :goto_2f

    :sswitch_215
    const/16 v2, 0x635

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    const/4 p0, 0x0

    goto :goto_210

    :sswitch_226
    const/16 v2, 0x4be

    const/4 v1, 0x3

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    const/4 p0, 0x1

    goto :goto_210

    .line 8002
    :pswitch_237
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_261

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "BOSjahKK48gQQcfgpMpPnkM75c2oqyWr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "RJQUC2iDAFQsVPsdRqkFGdNDS9A7W8oZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0U(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8003
    goto/16 :goto_2f

    :cond_261
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "q6yXS3j6sQ6ZFzRTzwJaAxRAbIc8WPz8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WuLyOMHvNwjlaMb0daJACEPAN22egagf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0U(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    goto/16 :goto_2f

    .line 8004
    :pswitch_273
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/cF;->A0U(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8005
    goto/16 :goto_2f

    .line 8006
    :pswitch_27d
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/40;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0L(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8007
    goto/16 :goto_2f

    .line 8008
    :pswitch_28b
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_547

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "wnCEK2584vYzcW6z3Sz2kR6B988o5Ws1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6TeAn7fy0J7f9uyCtSaXnOhSOdBG8Thw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/40;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0M(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8009
    goto/16 :goto_2f

    .line 8010
    :pswitch_2b9
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v6

    const/16 v2, 0x5f5

    const/4 v1, 0x6

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0S(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8011
    goto/16 :goto_2f

    .line 8012
    :pswitch_2d0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v6

    const/16 v2, 0x4ff

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0R(Z)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8013
    goto/16 :goto_2f

    .line 8014
    :pswitch_2e7
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/cF;->A0P(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8015
    goto/16 :goto_2f

    .line 8016
    :pswitch_2f1
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8017
    :try_start_2f5
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Lw;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0H(I)Lcom/facebook/ads/redexgen/X/cF;

    goto/16 :goto_2f
    :try_end_2fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f5 .. :try_end_2fe} :catch_2fe

    .line 8018
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :catch_2fe
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x54

    const/16 v2, 0x1c

    const/16 v0, 0x2b

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8019
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_2f

    .line 8020
    :pswitch_31e
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8021
    :try_start_322
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Lw;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0G(I)Lcom/facebook/ads/redexgen/X/cF;

    goto/16 :goto_2f
    :try_end_32b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_322 .. :try_end_32b} :catch_32b

    .line 8022
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_32b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x33

    const/16 v2, 0x21

    const/16 v0, 0x68

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8023
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_2f

    .line 8024
    :pswitch_34b
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8025
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/cF;->A0Q(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    goto/16 :goto_2f

    .line 8026
    :pswitch_368
    :try_start_368
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8027
    invoke-static {v9, v7}, Lcom/facebook/ads/redexgen/X/40;->A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cF;)V

    goto/16 :goto_2f
    :try_end_371
    .catch Lcom/facebook/ads/redexgen/X/Oj; {:try_start_368 .. :try_end_371} :catch_371

    .line 8028
    .local v3, "e":Lcom/facebook/ads/redexgen/X/Oj;
    :catch_371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x70

    const/16 v2, 0x1f

    const/16 v0, 0x69

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8029
    .end local v3    # "e":Lcom/facebook/ads/redexgen/X/Oj;
    goto/16 :goto_2f

    .line 8030
    :sswitch_391
    const/16 v2, 0x61b

    const/16 v1, 0xd

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0x8

    goto/16 :goto_22

    :sswitch_3a5
    const/16 v2, 0x4c1

    const/16 v1, 0xf

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x1

    goto/16 :goto_22

    :sswitch_3b7
    const/16 v2, 0x65c

    const/16 v1, 0xc

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0xb

    goto/16 :goto_22

    :sswitch_3cb
    const/16 v2, 0x6cd

    const/16 v1, 0xc

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_40f

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "WS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0xd

    goto/16 :goto_22

    .line 8031
    :pswitch_3fa
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_415

    :cond_40f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_415
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "xylMtH9UFMcdtu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sparse-switch v10, :sswitch_data_60e

    :cond_41f
    :goto_41f
    packed-switch p0, :pswitch_data_618

    goto/16 :goto_2f

    :sswitch_424
    const/16 v2, 0x4b9

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41f

    const/4 p0, 0x1

    goto :goto_41f

    :sswitch_435
    const/16 v2, 0x4f0

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41f

    const/4 p0, 0x0

    goto :goto_41f

    .line 8032
    :pswitch_446
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/cF;->A0J(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8033
    goto/16 :goto_2f

    .line 8034
    :pswitch_450
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/40;->A08(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_54d

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "xAtWOcqXNA55fxZceqNy7AuybJij05mB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "LrqwBjzBoTDomI0PQDMphUVyMsIfzuHC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0J(I)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v7

    .line 8035
    goto/16 :goto_2f

    .line 8036
    :sswitch_472
    const/16 v2, 0x55c

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x4

    goto/16 :goto_22

    :sswitch_484
    const/16 v2, 0x6a7

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0x9

    goto/16 :goto_22

    :sswitch_498
    const/16 v2, 0x669

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0xe

    goto/16 :goto_22

    :sswitch_4ab
    const/16 v2, 0x519

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x2

    goto/16 :goto_22

    :sswitch_4bc
    const/16 v2, 0x658

    const/4 v1, 0x4

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0xa

    goto/16 :goto_22

    :sswitch_4cf
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x0

    goto/16 :goto_22

    :sswitch_4e1
    const/16 v2, 0x56d

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x5

    goto/16 :goto_22

    :sswitch_4f4
    const/16 v2, 0x6bf

    const/16 v1, 0xe

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v13, 0xc

    goto/16 :goto_22

    :sswitch_508
    const/16 v2, 0x69e

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x7

    goto/16 :goto_22

    :sswitch_51b
    const/16 v2, 0x552

    const/16 v1, 0xa

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x3

    goto/16 :goto_22

    :sswitch_52e
    const/16 v2, 0x564

    const/16 v1, 0x9

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x6

    goto/16 :goto_22

    :cond_541
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_547
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_54d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8037
    .end local v1    # "i":I
    :cond_553
    return-object v7

    :sswitch_data_554
    .sparse-switch
        -0x5c71855e -> :sswitch_52e
        -0x48ff636d -> :sswitch_51b
        -0x3f826a28 -> :sswitch_508
        -0x3468fa43 -> :sswitch_4f4
        -0x2bc67c59 -> :sswitch_4e1
        0xd1b -> :sswitch_4cf
        0x3595da -> :sswitch_4bc
        0x5a72f63 -> :sswitch_4ab
        0x6855ce1 -> :sswitch_498
        0x6909352 -> :sswitch_484
        0x15caa0f0 -> :sswitch_472
        0x36e741c9 -> :sswitch_3cb
        0x42841923 -> :sswitch_3b7
        0x4cb7f6d5 -> :sswitch_3a5
        0x6899f5a4 -> :sswitch_391
    .end sparse-switch

    :pswitch_data_592
    .packed-switch 0x0
        :pswitch_34b
        :pswitch_31e
        :pswitch_2f1
        :pswitch_2e7
        :pswitch_368
        :pswitch_2d0
        :pswitch_2b9
        :pswitch_28b
        :pswitch_27d
        :pswitch_205
        :pswitch_10b
        :pswitch_3fa
        :pswitch_4c
        :pswitch_3f
        :pswitch_32
    .end packed-switch

    :sswitch_data_5b4
    .sparse-switch
        -0x57195dd5 -> :sswitch_b2
        -0x3d363934 -> :sswitch_a0
        0x36723ff0 -> :sswitch_8e
        0x641ec051 -> :sswitch_7c
    .end sparse-switch

    :pswitch_data_5c6
    .packed-switch 0x0
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
    .end packed-switch

    :sswitch_data_5d2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1c9
        -0x187eb37f -> :sswitch_1b5
        -0xeee99f9 -> :sswitch_186
        -0x81c562c -> :sswitch_141
        0x2e06d1 -> :sswitch_12f
        0x36452d -> :sswitch_11d
    .end sparse-switch

    :pswitch_data_5ec
    .packed-switch 0x0
        :pswitch_1fb
        :pswitch_1f1
        :pswitch_1f1
        :pswitch_1e7
        :pswitch_1e7
        :pswitch_1dd
    .end packed-switch

    :sswitch_data_5fc
    .sparse-switch
        0x179a1 -> :sswitch_226
        0x33af38 -> :sswitch_215
    .end sparse-switch

    :pswitch_data_606
    .packed-switch 0x0
        :pswitch_273
        :pswitch_237
    .end packed-switch

    :sswitch_data_60e
    .sparse-switch
        -0x5305c081 -> :sswitch_435
        0x58705dc -> :sswitch_424
    .end sparse-switch

    :pswitch_data_618
    .packed-switch 0x0
        :pswitch_450
        :pswitch_446
    .end packed-switch
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length v0, v3

    if-ge p0, v0, :cond_3d

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_37

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "fPT8rcnhViZ1J9hO02JFMOKk4uxCCk4U"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TNsloISjZ5is3j5VOUXKMUppGEk5U08h"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x5

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/c5;Lcom/facebook/ads/redexgen/X/c7;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/cF;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/c5;",
            "Lcom/facebook/ads/redexgen/X/c7;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/cF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 8038
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p6, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p7, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8039
    const/16 v3, 0x677

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "D6d435JLCZi7HSPm6dJ87GWhzG5FXdUn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "MyhmfLgGrzGntDosjXJxy2iQ3Nyu1mX4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/N7;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 8040
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8041
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cF;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/40;->A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    move-result-object v4

    .line 8042
    .local v1, "style":Lcom/facebook/ads/redexgen/X/cF;
    if-eqz v1, :cond_5d

    .line 8043
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/40;->A0G(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v2, :cond_5d

    aget-object v0, v3, v1

    .line 8044
    .local p0, "id":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0O(Lcom/facebook/ads/redexgen/X/cF;)Lcom/facebook/ads/redexgen/X/cF;

    .line 8045
    .end local p0    # "id":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 8046
    :cond_5d
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/cF;->A0X()Ljava/lang/String;

    move-result-object v0

    .line 8047
    .local v2, "styleId":Ljava/lang/String;
    if-eqz v0, :cond_81

    .line 8048
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 8049
    :cond_67
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 8050
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/40;->A07(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c5;Lcom/facebook/ads/redexgen/X/c7;)Lcom/facebook/ads/redexgen/X/c9;

    move-result-object v1

    .line 8051
    .local v0, "ttmlRegion":Lcom/facebook/ads/redexgen/X/c9;
    if-eqz v1, :cond_81

    .line 8052
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/c9;->A09:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8053
    :cond_81
    :goto_81
    const/16 v2, 0x5bc

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8054
    return-object p1

    .line 8055
    .end local v0    # "ttmlRegion":Lcom/facebook/ads/redexgen/X/c9;
    :cond_91
    const/16 v2, 0x611

    const/16 v1, 0x8

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 8056
    invoke-static {p0, p5}, Lcom/facebook/ads/redexgen/X/40;->A0E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_81
.end method

.method public static A0C()V
    .registers 1

    const/16 v0, 0x6f7

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x5et
        0x36t
        0x4bt
        0x2dt
        0x34t
        0x6ct
        -0x59t
        -0x2dt
        -0x27t
        -0x30t
        -0x38t
        -0x2et
        -0x75t
        -0x28t
        -0x7ct
        -0x39t
        -0x2at
        -0x37t
        -0x3bt
        -0x28t
        -0x37t
        -0x7ct
        -0x44t
        -0x2ft
        -0x30t
        -0x4ct
        -0x27t
        -0x30t
        -0x30t
        -0x4ct
        -0x3bt
        -0x2at
        -0x29t
        -0x37t
        -0x2at
        -0x56t
        -0x3bt
        -0x39t
        -0x28t
        -0x2dt
        -0x2at
        -0x23t
        -0x7ct
        -0x33t
        -0x2et
        -0x29t
        -0x28t
        -0x3bt
        -0x2et
        -0x39t
        -0x37t
        -0x4dt
        -0x32t
        -0x2at
        -0x27t
        -0x2et
        -0x2ft
        -0x73t
        -0x23t
        -0x32t
        -0x21t
        -0x20t
        -0x2at
        -0x25t
        -0x2ct
        -0x73t
        -0x31t
        -0x32t
        -0x30t
        -0x28t
        -0x2ct
        -0x21t
        -0x24t
        -0x1et
        -0x25t
        -0x2ft
        -0x73t
        -0x1dt
        -0x32t
        -0x27t
        -0x1et
        -0x2et
        -0x59t
        -0x73t
        0x76t
        -0x6ft
        -0x67t
        -0x64t
        -0x6bt
        -0x6ct
        0x50t
        -0x60t
        -0x6ft
        -0x5et
        -0x5dt
        -0x67t
        -0x62t
        -0x69t
        0x50t
        -0x6dt
        -0x61t
        -0x64t
        -0x61t
        -0x5et
        0x50t
        -0x5at
        -0x6ft
        -0x64t
        -0x5bt
        -0x6bt
        0x6at
        0x50t
        -0x4ct
        -0x31t
        -0x29t
        -0x26t
        -0x2dt
        -0x2et
        -0x72t
        -0x22t
        -0x31t
        -0x20t
        -0x1ft
        -0x29t
        -0x24t
        -0x2bt
        -0x72t
        -0x2ct
        -0x23t
        -0x24t
        -0x1et
        -0x3ft
        -0x29t
        -0x18t
        -0x2dt
        -0x72t
        -0x1ct
        -0x31t
        -0x26t
        -0x1dt
        -0x2dt
        -0x58t
        -0x72t
        -0x50t
        -0x35t
        -0x2dt
        -0x2at
        -0x31t
        -0x32t
        -0x76t
        -0x22t
        -0x27t
        -0x76t
        -0x26t
        -0x35t
        -0x24t
        -0x23t
        -0x31t
        -0x76t
        -0x23t
        -0x2et
        -0x31t
        -0x35t
        -0x24t
        -0x5ct
        -0x76t
        0x75t
        -0x6dt
        -0x66t
        -0x65t
        -0x62t
        -0x6bt
        -0x66t
        -0x6dt
        0x4ct
        -0x67t
        -0x73t
        -0x68t
        -0x6et
        -0x65t
        -0x62t
        -0x67t
        -0x6ft
        -0x70t
        0x4ct
        -0x71t
        -0x6ft
        -0x68t
        -0x68t
        0x4ct
        -0x62t
        -0x6ft
        -0x61t
        -0x65t
        -0x68t
        -0x5ft
        -0x60t
        -0x6bt
        -0x65t
        -0x66t
        0x66t
        0x4ct
        -0x57t
        -0x39t
        -0x32t
        -0x31t
        -0x2et
        -0x37t
        -0x32t
        -0x39t
        -0x80t
        -0x33t
        -0x3ft
        -0x34t
        -0x3at
        -0x31t
        -0x2et
        -0x33t
        -0x3bt
        -0x3ct
        -0x80t
        -0x2ct
        -0x2ct
        -0x2dt
        -0x80t
        -0x3bt
        -0x28t
        -0x2ct
        -0x3bt
        -0x32t
        -0x2ct
        -0x66t
        -0x80t
        -0x61t
        -0x43t
        -0x3ct
        -0x3bt
        -0x38t
        -0x41t
        -0x3ct
        -0x43t
        0x76t
        -0x3ct
        -0x3bt
        -0x3ct
        -0x7dt
        -0x3at
        -0x41t
        -0x32t
        -0x45t
        -0x3et
        0x76t
        -0x36t
        -0x36t
        -0x37t
        0x76t
        -0x45t
        -0x32t
        -0x36t
        -0x45t
        -0x3ct
        -0x36t
        -0x70t
        0x76t
        -0x68t
        -0x4at
        -0x43t
        -0x42t
        -0x3ft
        -0x48t
        -0x43t
        -0x4at
        0x6ft
        -0x3ft
        -0x4ct
        -0x4at
        -0x48t
        -0x42t
        -0x43t
        0x6ft
        -0x3at
        -0x48t
        -0x3dt
        -0x49t
        0x6ft
        -0x44t
        -0x50t
        -0x45t
        -0x4bt
        -0x42t
        -0x3ft
        -0x44t
        -0x4ct
        -0x4dt
        0x6ft
        -0x4ct
        -0x39t
        -0x3dt
        -0x4ct
        -0x43t
        -0x3dt
        -0x77t
        0x6ft
        0x76t
        -0x6ct
        -0x65t
        -0x64t
        -0x61t
        -0x6at
        -0x65t
        -0x6ct
        0x4dt
        -0x61t
        -0x6et
        -0x6ct
        -0x6at
        -0x64t
        -0x65t
        0x4dt
        -0x5ct
        -0x6at
        -0x5ft
        -0x6bt
        0x4dt
        -0x66t
        -0x72t
        -0x67t
        -0x6dt
        -0x64t
        -0x61t
        -0x66t
        -0x6et
        -0x6ft
        0x4dt
        -0x64t
        -0x61t
        -0x6at
        -0x6ct
        -0x6at
        -0x65t
        0x67t
        0x4dt
        0x60t
        0x7et
        -0x7bt
        -0x7at
        -0x77t
        -0x80t
        -0x7bt
        0x7et
        0x37t
        -0x77t
        0x7ct
        0x7et
        -0x80t
        -0x7at
        -0x7bt
        0x37t
        -0x72t
        -0x80t
        -0x75t
        0x7ft
        0x37t
        -0x7ct
        -0x80t
        -0x76t
        -0x76t
        -0x80t
        -0x7bt
        0x7et
        0x37t
        -0x75t
        -0x75t
        -0x76t
        0x51t
        0x7ct
        -0x71t
        -0x75t
        0x7ct
        -0x7bt
        -0x75t
        0x51t
        0x37t
        -0x73t
        -0x55t
        -0x4et
        -0x4dt
        -0x4at
        -0x53t
        -0x4et
        -0x55t
        0x64t
        -0x4at
        -0x57t
        -0x55t
        -0x53t
        -0x4dt
        -0x4et
        0x64t
        -0x45t
        -0x53t
        -0x48t
        -0x54t
        0x64t
        -0x47t
        -0x4et
        -0x49t
        -0x47t
        -0x4ct
        -0x4ct
        -0x4dt
        -0x4at
        -0x48t
        -0x57t
        -0x58t
        0x64t
        -0x57t
        -0x44t
        -0x48t
        -0x57t
        -0x4et
        -0x48t
        0x7et
        0x64t
        0x60t
        0x7et
        -0x7bt
        -0x7at
        -0x77t
        -0x80t
        -0x7bt
        0x7et
        0x37t
        -0x77t
        0x7ct
        0x7et
        -0x80t
        -0x7at
        -0x7bt
        0x37t
        -0x72t
        -0x80t
        -0x75t
        0x7ft
        0x37t
        -0x74t
        -0x7bt
        -0x76t
        -0x74t
        -0x79t
        -0x79t
        -0x7at
        -0x77t
        -0x75t
        0x7ct
        0x7bt
        0x37t
        -0x7at
        -0x77t
        -0x80t
        0x7et
        -0x80t
        -0x7bt
        0x51t
        0x37t
        0x5dt
        0x7bt
        -0x7et
        -0x7dt
        -0x7at
        0x7dt
        -0x7et
        0x7bt
        0x34t
        -0x7at
        0x79t
        0x7bt
        0x7dt
        -0x7dt
        -0x7et
        0x34t
        -0x75t
        0x7dt
        -0x78t
        0x7ct
        -0x7dt
        -0x77t
        -0x78t
        0x34t
        0x75t
        -0x7et
        0x34t
        0x79t
        -0x74t
        -0x78t
        0x79t
        -0x7et
        -0x78t
        -0x3ft
        -0x21t
        -0x1at
        -0x19t
        -0x16t
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x16t
        -0x23t
        -0x21t
        -0x1ft
        -0x19t
        -0x1at
        -0x68t
        -0x11t
        -0x1ft
        -0x14t
        -0x20t
        -0x19t
        -0x13t
        -0x14t
        -0x68t
        -0x27t
        -0x1at
        -0x68t
        -0x19t
        -0x16t
        -0x1ft
        -0x21t
        -0x1ft
        -0x1at
        -0x78t
        -0x5at
        -0x53t
        -0x52t
        -0x4ft
        -0x58t
        -0x53t
        -0x5at
        0x5ft
        -0x4ct
        -0x53t
        -0x4et
        -0x4ct
        -0x51t
        -0x51t
        -0x52t
        -0x4ft
        -0x4dt
        -0x5ct
        -0x5dt
        0x5ft
        -0x4dt
        -0x60t
        -0x5at
        0x79t
        0x5ft
        0x76t
        -0x65t
        -0x5dt
        -0x72t
        -0x67t
        -0x6at
        -0x6ft
        0x4dt
        -0x70t
        -0x6et
        -0x67t
        -0x67t
        0x4dt
        -0x61t
        -0x6et
        -0x60t
        -0x64t
        -0x67t
        -0x5et
        -0x5ft
        -0x6at
        -0x64t
        -0x65t
        0x4dt
        0x4et
        0x73t
        0x7bt
        0x66t
        0x71t
        0x6et
        0x69t
        0x25t
        0x6at
        0x7dt
        0x75t
        0x77t
        0x6at
        0x78t
        0x78t
        0x6et
        0x74t
        0x73t
        0x25t
        0x6bt
        0x74t
        0x77t
        0x25t
        0x6bt
        0x74t
        0x73t
        0x79t
        0x58t
        0x6et
        0x7ft
        0x6at
        0x3ft
        0x25t
        0x2ct
        -0x68t
        -0x43t
        -0x3bt
        -0x50t
        -0x45t
        -0x48t
        -0x4dt
        0x6ft
        -0x43t
        -0x3ct
        -0x44t
        -0x4ft
        -0x4ct
        -0x3ft
        0x6ft
        -0x42t
        -0x4bt
        0x6ft
        -0x4ct
        -0x43t
        -0x3dt
        -0x3ft
        -0x48t
        -0x4ct
        -0x3et
        0x6ft
        -0x4bt
        -0x42t
        -0x3ft
        0x6ft
        -0x4bt
        -0x42t
        -0x43t
        -0x3dt
        -0x5et
        -0x48t
        -0x37t
        -0x4ct
        -0x77t
        0x6ft
        -0x45t
        -0x20t
        -0x18t
        -0x2dt
        -0x22t
        -0x25t
        -0x2at
        -0x6et
        -0x19t
        -0x20t
        -0x25t
        -0x1at
        -0x6et
        -0x28t
        -0x1ft
        -0x1ct
        -0x6et
        -0x28t
        -0x1ft
        -0x20t
        -0x1at
        -0x3bt
        -0x25t
        -0x14t
        -0x29t
        -0x54t
        -0x6et
        -0x67t
        -0x53t
        -0x2et
        -0x26t
        -0x3bt
        -0x30t
        -0x33t
        -0x38t
        -0x7ct
        -0x26t
        -0x3bt
        -0x30t
        -0x27t
        -0x37t
        -0x7ct
        -0x36t
        -0x2dt
        -0x2at
        -0x7ct
        -0x29t
        -0x34t
        -0x37t
        -0x3bt
        -0x2at
        -0x62t
        -0x7ct
        -0x4ft
        -0x3bt
        -0x30t
        -0x36t
        -0x2dt
        -0x2at
        -0x2ft
        -0x37t
        -0x38t
        -0x7ct
        -0x28t
        -0x33t
        -0x2ft
        -0x37t
        -0x7ct
        -0x37t
        -0x24t
        -0x2ct
        -0x2at
        -0x37t
        -0x29t
        -0x29t
        -0x33t
        -0x2dt
        -0x2et
        -0x62t
        -0x7ct
        -0x4ct
        -0x24t
        -0x2dt
        -0x25t
        -0x30t
        -0x29t
        -0x2dt
        -0x34t
        -0x79t
        -0x23t
        -0x38t
        -0x2dt
        -0x24t
        -0x34t
        -0x26t
        -0x79t
        -0x30t
        -0x2bt
        -0x79t
        -0x33t
        -0x2at
        -0x2bt
        -0x25t
        -0x46t
        -0x30t
        -0x1ft
        -0x34t
        -0x79t
        -0x38t
        -0x25t
        -0x25t
        -0x27t
        -0x30t
        -0x37t
        -0x24t
        -0x25t
        -0x34t
        -0x6bt
        -0x79t
        -0x49t
        -0x30t
        -0x36t
        -0x2et
        -0x30t
        -0x2bt
        -0x32t
        -0x79t
        -0x25t
        -0x31t
        -0x34t
        -0x79t
        -0x26t
        -0x34t
        -0x36t
        -0x2at
        -0x2bt
        -0x35t
        -0x79t
        -0x23t
        -0x38t
        -0x2dt
        -0x24t
        -0x34t
        -0x79t
        -0x33t
        -0x2at
        -0x27t
        -0x79t
        -0x23t
        -0x34t
        -0x27t
        -0x25t
        -0x30t
        -0x36t
        -0x38t
        -0x2dt
        -0x79t
        -0x33t
        -0x2at
        -0x2bt
        -0x25t
        -0x79t
        -0x26t
        -0x30t
        -0x1ft
        -0x34t
        -0x79t
        -0x38t
        -0x2bt
        -0x35t
        -0x79t
        -0x30t
        -0x32t
        -0x2bt
        -0x2at
        -0x27t
        -0x30t
        -0x2bt
        -0x32t
        -0x79t
        -0x25t
        -0x31t
        -0x34t
        -0x79t
        -0x33t
        -0x30t
        -0x27t
        -0x26t
        -0x25t
        -0x6bt
        0x70t
        -0x6ft
        0x42t
        0x76t
        0x76t
        0x6ft
        0x6et
        0x42t
        -0x6bt
        -0x69t
        -0x7ct
        -0x6at
        -0x75t
        -0x6at
        -0x72t
        -0x79t
        -0x6bt
        0x42t
        -0x78t
        -0x6ft
        -0x69t
        -0x70t
        -0x7at
        -0x4bt
        -0x29t
        -0x2et
        -0x2et
        -0x2ct
        -0x39t
        -0x2bt
        -0x2bt
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x2et
        -0x3dt
        -0x2ct
        -0x2bt
        -0x39t
        -0x2ct
        -0x7et
        -0x39t
        -0x2ct
        -0x2ct
        -0x2ft
        -0x2ct
        -0x55t
        -0x35t
        -0x3ct
        -0x3dt
        -0x65t
        -0x44t
        -0x46t
        -0x3at
        -0x45t
        -0x44t
        -0x37t
        0x68t
        -0x7ft
        0x74t
        0x75t
        0x7ft
        0x78t
        0x33t
        -0x79t
        -0x7et
        0x33t
        0x77t
        0x78t
        0x76t
        -0x7et
        0x77t
        0x78t
        0x33t
        -0x7at
        -0x7et
        -0x78t
        -0x7bt
        0x76t
        0x78t
        0x6et
        -0x79t
        0x7et
        -0x6ft
        -0x77t
        0x7et
        0x7ct
        -0x73t
        0x7et
        0x7dt
        0x39t
        0x7et
        -0x75t
        -0x75t
        -0x78t
        -0x75t
        0x39t
        -0x70t
        -0x7ft
        0x7et
        -0x79t
        0x39t
        -0x75t
        0x7et
        0x7at
        0x7dt
        -0x7et
        -0x79t
        -0x80t
        0x39t
        -0x7et
        -0x79t
        -0x77t
        -0x72t
        -0x73t
        0x47t
        -0x2dt
        -0x16t
        -0x5et
        -0x28t
        -0x5et
        -0x5et
        -0x2bt
        -0x56t
        -0x59t
        -0x4dt
        -0x29t
        -0x5ct
        -0x58t
        -0x5dt
        -0x47t
        -0x2bt
        -0x56t
        -0x59t
        -0x4dt
        -0x29t
        -0x5bt
        -0x5dt
        -0x5et
        -0x16t
        -0xet
        -0xat
        -0x21t
        -0x19t
        -0xat
        -0x61t
        -0x5dt
        -0x62t
        -0x36t
        -0x6ct
        -0x39t
        -0x67t
        -0x69t
        -0x37t
        -0x55t
        -0x38t
        -0x30t
        -0x69t
        -0x38t
        -0x66t
        -0x55t
        -0x38t
        -0x30t
        -0x6at
        -0x55t
        -0x6bt
        -0x6ft
        -0x70t
        -0x49t
        -0x7ft
        -0x4ct
        -0x77t
        -0x7at
        -0x6et
        -0x4at
        -0x7ct
        -0x7ft
        -0x68t
        -0x6dt
        -0x4bt
        -0x79t
        -0x4ct
        -0x77t
        -0x7at
        -0x6et
        -0x4at
        -0x7ct
        -0x7et
        -0x68t
        -0x7et
        -0x7ft
        -0x3ft
        -0x2bt
        -0x3at
        -0x2bt
        -0x34t
        -0x2bt
        -0x3at
        -0x34t
        -0x2bt
        -0x41t
        -0x2bt
        -0x33t
        -0x7et
        0x7dt
        -0x52t
        0x78t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x7bt
        0x79t
        -0x76t
        0x78t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x79t
        -0x76t
        0x78t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x79t
        0x78t
        -0x71t
        -0x76t
        0x78t
        -0x54t
        0x7et
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x7bt
        0x79t
        -0x34t
        -0x76t
        0x78t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x79t
        0x78t
        -0x71t
        -0x76t
        -0x54t
        0x7et
        0x78t
        -0x55t
        -0x80t
        0x7dt
        -0x77t
        -0x53t
        0x7bt
        0x79t
        0x79t
        -0x71t
        0x79t
        -0x71t
        0x74t
        -0x27t
        -0x5dt
        -0x29t
        -0x21t
        -0x5at
        -0x5ct
        -0x65t
        -0x5dt
        -0x29t
        -0x21t
        -0x5at
        -0x5ct
        -0x61t
        0x6dt
        0x37t
        0x6bt
        0x73t
        0x3at
        0x6bt
        0x3dt
        0x4et
        0x6bt
        0x73t
        0x39t
        0x4et
        0x38t
        0x34t
        0x2ft
        0x37t
        0x6bt
        0x73t
        0x3at
        0x6bt
        0x3dt
        0x4et
        0x6bt
        0x73t
        0x39t
        0x4et
        0x38t
        0x34t
        0x33t
        -0x65t
        0x65t
        -0x67t
        -0x5ft
        0x68t
        -0x67t
        0x6bt
        0x7ct
        -0x67t
        -0x5ft
        0x67t
        0x7ct
        0x66t
        -0x53t
        -0x4bt
        0x5dt
        0x65t
        -0x67t
        -0x5ft
        0x68t
        -0x67t
        0x6bt
        0x7ct
        -0x67t
        -0x5ft
        0x67t
        0x7ct
        0x66t
        -0x53t
        -0x4bt
        0x61t
        0x72t
        0x77t
        -0x7bt
        0x76t
        -0x7dt
        -0x27t
        -0x1ct
        -0x1ct
        0x69t
        0x68t
        0x6at
        0x72t
        0x6et
        0x79t
        0x76t
        0x7ct
        0x75t
        0x6bt
        0x4at
        0x76t
        0x73t
        0x76t
        0x79t
        -0x54t
        -0x55t
        -0x53t
        -0x4bt
        -0x4ft
        -0x44t
        -0x47t
        -0x41t
        -0x48t
        -0x52t
        -0x6dt
        -0x49t
        -0x55t
        -0x4ft
        -0x51t
        -0x78t
        -0x79t
        -0x67t
        -0x75t
        -0x5ft
        -0x60t
        -0x4et
        -0x5ct
        -0x7et
        -0x52t
        -0x53t
        -0x4dt
        -0x60t
        -0x58t
        -0x53t
        -0x5ct
        -0x4ft
        -0x35t
        -0x32t
        -0x31t
        -0x28t
        -0x25t
        -0x32t
        0x76t
        0x79t
        0x7bt
        0x7dt
        -0x7et
        0x6ct
        0x79t
        0x6et
        -0x7dt
        -0x57t
        -0x4at
        -0x4dt
        -0x55t
        -0x31t
        -0x21t
        -0x5et
        -0x5ct
        -0x55t
        -0x55t
        -0x6ft
        -0x5ct
        -0x4et
        -0x52t
        -0x55t
        -0x4ct
        -0x4dt
        -0x58t
        -0x52t
        -0x53t
        -0x2ft
        -0x2dt
        -0x24t
        -0x1et
        -0x2dt
        -0x20t
        0x6at
        0x76t
        0x73t
        0x76t
        0x79t
        -0x6ft
        -0x63t
        -0x64t
        -0x5et
        -0x71t
        -0x69t
        -0x64t
        -0x6dt
        -0x60t
        -0x7bt
        -0x7et
        -0x6bt
        -0x7et
        -0x64t
        -0x63t
        -0x5ct
        -0x5ft
        -0x5bt
        -0x5ft
        -0x54t
        -0x63t
        -0x56t
        -0x20t
        -0x1bt
        -0x11t
        -0x14t
        -0x18t
        -0x23t
        -0xbt
        -0x43t
        -0x18t
        -0x1bt
        -0x1dt
        -0x16t
        -0x78t
        -0x73t
        -0x66t
        -0x29t
        -0x18t
        -0x1bt
        -0x31t
        -0x29t
        -0x3ct
        -0x33t
        -0x3dt
        -0x34t
        -0x21t
        -0x25t
        -0x34t
        -0x2bt
        -0x25t
        -0x71t
        -0x49t
        -0x40t
        -0x41t
        -0x3bt
        -0x69t
        -0x4et
        -0x42t
        -0x46t
        -0x43t
        -0x36t
        0x6ct
        0x75t
        0x74t
        0x7at
        0x59t
        0x6ft
        -0x80t
        0x6bt
        -0x2dt
        -0x24t
        -0x25t
        -0x1ft
        -0x40t
        -0x1ft
        -0x1at
        -0x27t
        -0x2et
        -0x79t
        -0x70t
        -0x71t
        -0x6bt
        0x78t
        -0x7at
        -0x76t
        -0x78t
        -0x77t
        -0x6bt
        0x79t
        -0x7bt
        0x74t
        -0x80t
        0x78t
        0x65t
        0x74t
        -0x79t
        0x78t
        -0x44t
        -0x38t
        -0x49t
        -0x3dt
        -0x45t
        -0x58t
        -0x49t
        -0x36t
        -0x45t
        -0x5dt
        -0x35t
        -0x3et
        -0x36t
        -0x41t
        -0x3at
        -0x3et
        -0x41t
        -0x45t
        -0x38t
        0x6ft
        0x7bt
        0x6at
        0x76t
        0x6et
        0x5bt
        0x6at
        0x7dt
        0x6et
        0x56t
        0x7et
        0x75t
        0x7dt
        0x72t
        0x79t
        0x75t
        0x72t
        0x6et
        0x7bt
        0x29t
        0x6dt
        0x78t
        0x6et
        0x7ct
        0x77t
        0x30t
        0x7dt
        0x29t
        0x71t
        0x6at
        0x7ft
        0x6et
        0x29t
        0x3bt
        0x29t
        0x79t
        0x6at
        0x7bt
        0x7dt
        0x7ct
        -0x3at
        -0x70t
        -0x73t
        -0x77t
        -0x74t
        0x74t
        -0x80t
        -0x80t
        0x7ct
        0x46t
        0x3bt
        0x3bt
        -0x7dt
        -0x7dt
        -0x7dt
        0x3at
        -0x7dt
        0x3ft
        0x3at
        0x7bt
        0x7et
        0x73t
        0x3bt
        0x7at
        0x7ft
        0x3bt
        -0x80t
        -0x80t
        0x79t
        0x78t
        0x2ft
        0x7ct
        0x6dt
        0x7et
        0x6dt
        0x79t
        0x71t
        -0x80t
        0x71t
        0x7et
        0x7ft
        0x7at
        -0x63t
        -0x5ft
        -0x6bt
        -0x65t
        -0x67t
        0x7bt
        -0x80t
        0x78t
        -0x7ft
        -0x7ct
        0x7ft
        0x73t
        -0x7at
        0x7bt
        -0x7ft
        -0x80t
        -0x46t
        -0x3bt
        -0x4et
        -0x43t
        -0x46t
        -0x4ct
        0x71t
        0x66t
        0x7et
        0x74t
        0x7at
        0x79t
        -0x43t
        -0x4at
        -0x49t
        -0x3bt
        -0x78t
        -0x7bt
        -0x76t
        -0x7ft
        -0x70t
        -0x7ct
        -0x72t
        -0x75t
        -0x6ft
        -0x7dt
        -0x7ct
        -0x35t
        -0x16t
        -0x1et
        -0xft
        -0x22t
        -0x1ft
        -0x22t
        -0xft
        -0x22t
        -0x75t
        -0x6ft
        -0x40t
        -0x38t
        -0x41t
        -0x39t
        -0x44t
        -0x5bt
        -0x3et
        -0x36t
        -0x6ct
        -0x41t
        -0x44t
        -0x46t
        -0x3ft
        -0x58t
        -0x57t
        -0x5at
        -0x5dt
        -0x58t
        -0x61t
        -0x52t
        -0x5et
        -0x54t
        -0x57t
        -0x51t
        -0x5ft
        -0x5et
        -0x18t
        -0x17t
        -0x18t
        -0x21t
        -0x7bt
        -0x7at
        -0x74t
        -0x7bt
        0x7bt
        0x7ct
        -0x77t
        -0x7dt
        -0x80t
        -0x7bt
        0x7ct
        0x7bt
        0x7et
        0x75t
        0x73t
        0x75t
        0x7at
        -0x19t
        -0x20t
        -0x18t
        -0x1ft
        -0x2ct
        -0x2at
        -0x28t
        -0x22t
        -0x23t
        -0x7et
        0x79t
        0x77t
        0x78t
        -0x7ct
        -0x58t
        -0x55t
        -0x68t
        -0x51t
        -0x5dt
        -0x5at
        -0x6dt
        -0x56t
        -0x7ft
        -0x60t
        -0x5ct
        -0x66t
        -0x5bt
        -0x66t
        -0x60t
        -0x61t
        0x7bt
        -0x9t
        -0x14t
        -0x17t
        -0x1bt
        -0xat
        -0x31t
        -0x34t
        -0x43t
        -0x36t
        -0x27t
        -0x26t
        -0x39t
        -0x28t
        -0x26t
        -0x24t
        -0x23t
        -0x1et
        -0x2bt
        -0x32t
        -0x41t
        -0x40t
        -0x3bt
        -0x48t
        -0x4bt
        -0x46t
        -0x4dt
        -0x31t
        -0x2ft
        -0x42t
        -0x5et
        -0x32t
        -0x43t
        -0x37t
        -0x3ft
        -0x52t
        -0x43t
        -0x30t
        -0x3ft
        -0x72t
        -0x1bt
        -0x2dt
        -0x55t
        -0x67t
        -0x5dt
        -0x57t
        -0x43t
        -0x55t
        -0x45t
        -0x4bt
        -0x45t
        -0x54t
        -0x41t
        -0x45t
        -0x78t
        0x79t
        -0x74t
        -0x78t
        0x55t
        -0x80t
        0x7dt
        0x7bt
        -0x7et
        -0x23t
        -0x32t
        -0x1ft
        -0x23t
        -0x54t
        -0x28t
        -0x2at
        -0x35t
        -0x2et
        -0x29t
        -0x32t
        -0x5ft
        -0x6et
        -0x5bt
        -0x5ft
        0x70t
        -0x64t
        -0x65t
        -0x5ft
        -0x72t
        -0x6at
        -0x65t
        -0x6et
        -0x61t
        -0x51t
        -0x60t
        -0x4dt
        -0x51t
        0x7ft
        -0x60t
        -0x62t
        -0x56t
        -0x53t
        -0x64t
        -0x51t
        -0x5ct
        -0x56t
        -0x57t
        -0x7ct
        0x75t
        -0x78t
        -0x7ct
        0x55t
        0x7dt
        -0x80t
        0x78t
        0x71t
        -0x7dt
        0x79t
        -0x7dt
        -0x25t
        -0x30t
        -0x36t
        -0x2et
        -0x47t
        -0x38t
        -0x25t
        -0x34t
        0x7et
        0x7et
        -0x74t
        -0x7bt
        0x7bt
        0x7ct
        -0x77t
        -0x7dt
        -0x80t
        -0x7bt
        0x7ct
        -0x36t
        -0x3bt
        -0x44t
        -0x39t
        -0x44t
        -0x3ft
        -0x46t
        -0x60t
        -0x3et
        -0x49t
        -0x48t
    .end array-data
.end method

.method public static A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cF;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8057
    const/16 v2, 0x3c2

    const/4 v1, 0x3

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8058
    .local v0, "expressions":[Ljava/lang/String;
    array-length v0, v4

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_b8

    .line 8059
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 8060
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_18
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_f9

    .line 8061
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 8062
    .local v6, "unit":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_14c

    :cond_37
    const/4 v0, -0x1

    :goto_38
    packed-switch v0, :pswitch_data_15a

    .line 8063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28f

    const/16 v1, 0x1c

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8064
    :sswitch_60
    const/16 v2, 0x64b

    const/4 v1, 0x2

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_38

    :sswitch_71
    const/16 p0, 0x546

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8d
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "RlD46m9KSK1h59RifBJB1jlKaNKUNJzd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "DSPeHPzuy17st5ZAPEJZcggBUTc6ttvu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/16 v0, 0x65

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :sswitch_a8
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    goto :goto_38

    .line 8065
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_b8
    array-length v0, v4

    if-ne v0, v6, :cond_11d

    .line 8066
    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A09:Ljava/util/regex/Pattern;

    aget-object v0, v4, v5

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 8067
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2df

    const/16 v1, 0x6e

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 8068
    :pswitch_dc
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/cF;->A0I(I)Lcom/facebook/ads/redexgen/X/cF;

    .line 8069
    goto :goto_e7

    .line 8070
    :pswitch_e0
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/cF;->A0I(I)Lcom/facebook/ads/redexgen/X/cF;

    .line 8071
    goto :goto_e7

    .line 8072
    :pswitch_e4
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/cF;->A0I(I)Lcom/facebook/ads/redexgen/X/cF;

    .line 8073
    :goto_e7
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/cF;->A0E(F)Lcom/facebook/ads/redexgen/X/cF;

    .line 8074
    .end local v6    # "unit":Ljava/lang/String;
    return-void

    .line 8075
    :cond_f9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x245

    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8076
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_11d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x267

    const/16 v1, 0x28

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_14c
    .sparse-switch
        0x25 -> :sswitch_a8
        0xca8 -> :sswitch_71
        0xe08 -> :sswitch_60
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
    .end packed-switch
.end method

.method public static A0E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 8077
    .local p0, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8078
    const/16 v2, 0x5e5

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 8079
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8080
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 8081
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 8082
    .local v1, "encodedBitmapData":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8083
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "encodedBitmapData":Ljava/lang/String;
    :cond_28
    const/16 v2, 0x611

    const/16 v1, 0x8

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N7;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8084
    return-void
.end method

.method public static A0F(Ljava/lang/String;)Z
    .registers 5

    .line 8085
    const/16 v2, 0x6e1

    const/4 v1, 0x2

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8086
    const/16 v2, 0x5bc

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8087
    const/16 v3, 0x4fb

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_104

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "Cv64ERjVkUVbwpzLoBr1CF1SSWLfWToL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "c3vv5KiYNpc5XhFXmyASfZBUNARB9fIc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/4 v0, 0x5

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8088
    const/16 v2, 0x540

    const/4 v1, 0x3

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8089
    const/16 v2, 0x64a

    const/4 v1, 0x1

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8090
    const/16 v2, 0x66e

    const/4 v1, 0x4

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8091
    const/16 v2, 0x503

    const/4 v1, 0x2

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8092
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8093
    const/16 v2, 0x67c

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8094
    const/16 v2, 0x5fb

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8095
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8096
    const/16 v2, 0x611

    const/16 v1, 0x8

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8097
    const/16 v2, 0x5e5

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8098
    const/16 v2, 0x527

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 8099
    const/16 v2, 0x5ea

    const/16 v1, 0xb

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    :cond_100
    const/4 v0, 0x1

    .line 8100
    :goto_101
    return v0

    .line 8101
    :cond_102
    const/4 v0, 0x0

    goto :goto_101

    :cond_104
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 8102
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 8103
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const/16 v2, 0x3c2

    const/4 v1, 0x3

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8104
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    :try_start_a
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/40;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 8105
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 8106
    .local v9, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 8107
    .local v10, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8108
    .local v11, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/c9;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8109
    const/4 v1, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 8110
    .local v14, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8111
    const/4 v5, 0x0

    .line 8112
    .local v0, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/OV;
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 8113
    .local v15, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlNode;>;"
    const/4 v12, 0x0

    .line 8114
    .local v3, "unsupportedNodeDepth":I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 8115
    .local v4, "eventType":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/40;->A06:Lcom/facebook/ads/redexgen/X/c6;

    .line 8116
    .local v5, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    sget-object v15, Lcom/facebook/ads/redexgen/X/40;->A05:Lcom/facebook/ads/redexgen/X/c5;
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_44} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_44} :catch_1b3

    .line 8117
    .local v6, "cellResolution":Lcom/facebook/ads/redexgen/X/c5;
    const/16 v16, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_59

    .line 8118
    :cond_53
    :goto_53
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8119
    :cond_59
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "bxsv4xJM5aE9pnNtKSkPazfSSp5rVnYF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "rIrnESQOXJ3AbfzO40bGiSve5aw9iib2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 8120
    .end local v0    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/OV;
    .end local v3    # "unsupportedNodeDepth":I
    .end local v4    # "eventType":I
    .local v7, "ttsExtent":Lcom/facebook/ads/redexgen/X/c7;
    .local v8, "eventType":I
    .local v16, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/OV;
    .local v17, "unsupportedNodeDepth":I
    :goto_65
    const/4 v0, 0x1

    if-eq v10, v0, :cond_1a0

    .line 8121
    :try_start_68
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/c8;
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_6e} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_1b3

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8d

    .line 8122
    .local v4, "parent":Lcom/facebook/ads/redexgen/X/c8;
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "4k9FAwSJxbkjGu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v11, 0x1

    if-nez v12, :cond_142

    goto :goto_9c

    .local v4, "parent":Lcom/facebook/ads/redexgen/X/c8;
    :cond_8d
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "M1POo8Uu97M2nsvff7JlLaEeoiXGFxRn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WAhO3f0i7Gz2RzbdWaJh3dH3Ad31LURd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v11, 0x2

    if-nez v12, :cond_142

    .line 8123
    :goto_9c
    :try_start_9c
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_a0} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a0} :catch_1b3

    .line 8124
    .local p0, "name":Ljava/lang/String;
    const/16 v2, 0x6e1

    const/4 v1, 0x2

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    if-ne v10, v11, :cond_10b

    .line 8125
    .end local p0    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_aa
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 8126
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/40;->A04(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v3

    .line 8127
    sget-object v0, Lcom/facebook/ads/redexgen/X/40;->A05:Lcom/facebook/ads/redexgen/X/c5;

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/40;->A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c5;)Lcom/facebook/ads/redexgen/X/c5;

    move-result-object v15

    .line 8128
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/40;->A05(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/c7;
    :try_end_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_bd} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_1b3

    move-result-object v16

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "1ZGm7YUCkaYScxmoQAMNyYCLrVLgyAJ1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4pr2z9VPFXXzi3syhegggi8UN1FRCKvW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 8129
    .end local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .end local v6    # "cellResolution":Lcom/facebook/ads/redexgen/X/c5;
    .local v7, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .local v18, "cellResolution":Lcom/facebook/ads/redexgen/X/c5;
    .local p0, "ttsExtent":Lcom/facebook/ads/redexgen/X/c7;
    :cond_d6
    :try_start_d6
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/40;->A0F(Ljava/lang/String;)Z

    move-result v10
    :try_end_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d6 .. :try_end_da} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_da} :catch_1b3

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    if-nez v10, :cond_163

    .line 8130
    :try_start_e6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x213

    const/16 v2, 0x1a

    const/16 v0, 0x3a

    invoke-static {v8, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 8131
    add-int/lit8 v12, v12, 0x1

    goto :goto_179

    .line 8132
    .end local v1
    .end local v12
    .end local v13
    .end local v18    # "cellResolution":Lcom/facebook/ads/redexgen/X/c5;
    .end local p1    # null:[B
    .restart local v4    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .restart local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .local v6, "cellResolution":Lcom/facebook/ads/redexgen/X/c5;
    .local v7, "ttsExtent":Lcom/facebook/ads/redexgen/X/c7;
    .restart local v8    # "eventType":I
    .local p0, "name":Ljava/lang/String;
    .end local v4    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .end local v8    # "eventType":I
    .end local p0    # "name":Ljava/lang/String;
    .restart local v1
    .restart local v13
    .restart local p1    # null:[B
    :cond_10b
    const/4 v0, 0x4

    if-ne v10, v0, :cond_120

    .line 8133
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/c8;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A0F(Lcom/facebook/ads/redexgen/X/c8;)V

    goto :goto_179

    .line 8134
    :cond_120
    const/4 v0, 0x3

    if-ne v10, v0, :cond_179

    .line 8135
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 8136
    new-instance v5, Lcom/facebook/ads/redexgen/X/OV;

    .line 8137
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {v5, v0, v14, v7, v6}, Lcom/facebook/ads/redexgen/X/OV;-><init>(Lcom/facebook/ads/redexgen/X/c8;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 8138
    :cond_13e
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_179
    :try_end_142
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_142} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_142} :catch_1b3

    .line 8139
    .end local v1
    .end local v13
    .restart local v4    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .restart local v8    # "eventType":I
    :cond_142
    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_151

    goto/16 :goto_53

    .end local v4    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .end local v8    # "eventType":I
    .restart local v1
    .restart local v13
    :cond_151
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A02:[Ljava/lang/String;

    const-string v1, "HklMzQs2tDzjJB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v10, v11, :cond_15d

    .line 8140
    add-int/lit8 v12, v12, 0x1

    goto :goto_179

    .line 8141
    :cond_15d
    const/4 v0, 0x3

    if-ne v10, v0, :cond_179

    .line 8142
    add-int/lit8 v12, v12, -0x1

    goto :goto_179

    .line 8143
    :cond_163
    :try_start_163
    const/16 v10, 0x5bc

    const/4 v2, 0x4

    const/16 v0, 0x23

    invoke-static {v10, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 8144
    .end local v3    # "name":Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .end local v4
    .local v6, "parent":Lcom/facebook/ads/redexgen/X/c8;
    .end local v6    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .local v1, "parent":Lcom/facebook/ads/redexgen/X/c8;
    .end local v7    # "ttsExtent":Lcom/facebook/ads/redexgen/X/c7;
    .local v12, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .end local v8
    .local v13, "eventType":I
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    invoke-static/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/40;->A0B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/c5;Lcom/facebook/ads/redexgen/X/c7;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 8145
    :cond_179
    :goto_179
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8146
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 8147
    .end local v1    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .end local v13    # "eventType":I
    .restart local v8    # "eventType":I
    goto/16 :goto_65
    :try_end_182
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_182} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_182} :catch_1b3

    .line 8148
    .end local v3
    .end local v4
    .end local v7
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lcom/facebook/ads/redexgen/X/c8;
    .restart local v12    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .restart local v13    # "eventType":I
    .restart local p1    # "name":Ljava/lang/String;
    :cond_182
    :try_start_182
    invoke-static {v13, v8, v7, v3}, Lcom/facebook/ads/redexgen/X/40;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/c8;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/c6;)Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    .line 8149
    .local v0, "node":Lcom/facebook/ads/redexgen/X/c8;
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 8150
    if-eqz v8, :cond_179

    .line 8151
    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/c8;->A0F(Lcom/facebook/ads/redexgen/X/c8;)V

    goto :goto_179
    :try_end_18f
    .catch Lcom/facebook/ads/redexgen/X/Oj; {:try_start_182 .. :try_end_18f} :catch_18f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_182 .. :try_end_18f} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18f} :catch_1b3

    .line 8152
    .restart local p1    # "name":Ljava/lang/String;
    :catch_18f
    move-exception v9

    .line 8153
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Oj;
    :try_start_190
    const/16 v8, 0x364

    const/16 v2, 0x18

    const/16 v0, 0x5d

    invoke-static {v8, v2, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v9}, Lcom/facebook/ads/redexgen/X/MV;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8154
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Oj;
    add-int/lit8 v12, v12, 0x1

    .line 8155
    goto :goto_179

    .line 8156
    .end local v8
    .restart local v13    # "eventType":I
    :cond_1a0
    if-eqz v5, :cond_1a3

    .line 8157
    return-object v5

    .line 8158
    :cond_1a3
    const/16 v2, 0x34d

    const/16 v1, 0x17

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;)V

    .end local p3    # null:Z
    .end local p4
    .end local p5
    throw v1
    :try_end_1b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_190 .. :try_end_1b3} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1b3} :catch_1b3

    .line 8159
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/c6;
    .end local v6
    .end local v7
    .end local v9    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .end local v10    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .end local v11    # "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "eventType":I
    .end local v14    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v15    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlNode;>;"
    .end local v16    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/OV;
    .end local v17    # "unsupportedNodeDepth":I
    .restart local p3    # null:Z
    .restart local p4
    .restart local p5
    :catch_1b3
    move-exception v3

    .line 8160
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x39e

    const/16 v1, 0x24

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8161
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1c4
    move-exception v3

    .line 8162
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const/16 v2, 0x387

    const/16 v1, 0x17

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass41 (com.facebook.ads.redexgen.X.41)
.class public final Lcom/facebook/ads/redexgen/X/41;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;

.field public final A01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 141
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rGnU9VVIW2n7enlmWkgO6WwWfxVNPMro"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AmOcmxqwhpCh6xEGUpvINLkKtwmei3z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cjC52AUw8dkJcplgCOKzQA5n2lLL6sO7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XYDqNuct2LMXp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aViH2oO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HI9ukGzBsCo5fpD332RsUgXOiUmkoSGa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xoLhuLshRx5w8a4oP1KWI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FRrK8xJBHk6JWDujspMlt7IiWLdRl0AS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/41;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/41;->A06()V

    const/16 v2, 0x50

    const/16 v1, 0x55

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/41;->A05:Ljava/util/regex/Pattern;

    .line 142
    const/16 v2, 0xa5

    const/16 v1, 0x9

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/41;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 8163
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 8164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    .line 8165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Ljava/util/ArrayList;

    .line 8166
    return-void
.end method

.method public static A00(I)F
    .registers 1

    .line 8167
    packed-switch p0, :pswitch_data_14

    .line 8168
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 8169
    :pswitch_9
    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 8170
    :pswitch_d
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 8171
    :pswitch_10
    const p0, 0x3da3d70a    # 0.08f

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public static A01(Ljava/util/regex/Matcher;I)J
    .registers 11

    .line 8172
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 8173
    .local v0, "hours":Ljava/lang/String;
    const-wide/16 v7, 0x3c

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_5b

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v7

    mul-long/2addr v3, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/41;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5e

    sget-object v2, Lcom/facebook/ads/redexgen/X/41;->A03:[Ljava/lang/String;

    const-string v1, "fmVNceR9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    mul-long/2addr v3, v5

    .line 8174
    .local v5, "timestampMs":J
    :goto_27
    add-int/lit8 v0, p1, 0x2

    .line 8175
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v7

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    .line 8176
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    .line 8177
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 8178
    .local v1, "millis":Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 8179
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 8180
    :cond_59
    mul-long/2addr v5, v3

    return-wide v5

    .line 8181
    :cond_5b
    const-wide/16 v3, 0x0

    goto :goto_27

    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Landroid/text/Spanned;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Th;
    .registers 19

    .line 8182
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ld;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ld;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ld;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v13

    .line 8183
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/Ld;
    move-object/from16 v14, p2

    if-nez v14, :cond_14

    .line 8184
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Ld;->A0H()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    return-object v0

    .line 8185
    :cond_14
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v2, 0xeb

    const/4 v1, 0x6

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0xe5

    const/4 v1, 0x6

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0xdf

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0xd9

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0xd3

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0xcd

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xc7

    const/4 v1, 0x6

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xc1

    const/4 v1, 0x6

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xbb

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    sparse-switch v15, :sswitch_data_14e

    :cond_6f
    const/4 v0, -0x1

    :goto_70
    packed-switch v0, :pswitch_data_174

    .line 8186
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/Ld;->A0A(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8187
    :goto_76
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_184

    :cond_7d
    const/4 v0, -0x1

    :goto_7e
    packed-switch v0, :pswitch_data_1aa

    .line 8188
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/Ld;->A09(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8189
    :goto_84
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Ld;->A01()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/41;->A00(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(F)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v2

    .line 8190
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/41;->A00(I)F

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ld;->A07(FI)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    .line 8191
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ld;->A0H()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    .line 8192
    return-object v0

    .line 8193
    :pswitch_a1
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/Ld;->A09(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8194
    goto :goto_84

    .line 8195
    :pswitch_a5
    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/Ld;->A09(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8196
    goto :goto_84

    .line 8197
    :sswitch_a9
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x5

    goto :goto_7e

    :sswitch_b1
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x4

    goto :goto_7e

    :sswitch_b9
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x3

    goto :goto_7e

    :sswitch_c1
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/16 v0, 0x8

    goto :goto_7e

    :sswitch_ca
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x7

    goto :goto_7e

    :sswitch_d2
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x6

    goto :goto_7e

    :sswitch_da
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x2

    goto :goto_7e

    :sswitch_e2
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :sswitch_ea
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    goto :goto_7e

    .line 8198
    :pswitch_f2
    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/Ld;->A0A(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8199
    goto :goto_76

    .line 8200
    :pswitch_f6
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/Ld;->A0A(I)Lcom/facebook/ads/redexgen/X/Ld;

    .line 8201
    goto/16 :goto_76

    .line 8202
    :sswitch_fb
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x5

    goto/16 :goto_70

    :sswitch_104
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/16 v0, 0x8

    goto/16 :goto_70

    :sswitch_10e
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x2

    goto/16 :goto_70

    :sswitch_117
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x4

    goto/16 :goto_70

    :sswitch_120
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x7

    goto/16 :goto_70

    :sswitch_129
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    goto/16 :goto_70

    :sswitch_132
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x3

    goto/16 :goto_70

    :sswitch_13b
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x6

    goto/16 :goto_70

    :sswitch_144
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    goto/16 :goto_70

    nop

    :sswitch_data_14e
    .sparse-switch
        -0x28ddbde6 -> :sswitch_144
        -0x28ddbdc7 -> :sswitch_13b
        -0x28ddbda8 -> :sswitch_132
        -0x28ddbd89 -> :sswitch_129
        -0x28ddbd6a -> :sswitch_120
        -0x28ddbd4b -> :sswitch_117
        -0x28ddbd2c -> :sswitch_10e
        -0x28ddbd0d -> :sswitch_104
        -0x28ddbcee -> :sswitch_fb
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f2
        :pswitch_f2
        :pswitch_f2
    .end packed-switch

    :sswitch_data_184
    .sparse-switch
        -0x28ddbde6 -> :sswitch_ea
        -0x28ddbdc7 -> :sswitch_e2
        -0x28ddbda8 -> :sswitch_da
        -0x28ddbd89 -> :sswitch_d2
        -0x28ddbd6a -> :sswitch_ca
        -0x28ddbd4b -> :sswitch_c1
        -0x28ddbd2c -> :sswitch_b9
        -0x28ddbd0d -> :sswitch_b1
        -0x28ddbcee -> :sswitch_a9
    .end sparse-switch

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/41;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8203
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8204
    const/4 v8, 0x0

    .line 8205
    .local v0, "removedCharacterCount":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8206
    .local v1, "processedLine":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/facebook/ads/redexgen/X/41;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 8207
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_10
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 8208
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 8209
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8210
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v8

    .line 8211
    .local v4, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 8212
    .local v5, "tagLength":I
    add-int v3, v5, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8213
    add-int/2addr v8, v4

    .line 8214
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "tagLength":I
    goto :goto_10

    .line 8215
    :cond_35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Mk;)Ljava/nio/charset/Charset;
    .registers 3

    .line 8216
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0Z()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 8217
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A05:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0xf1

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/41;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x6dt
        -0x47t
        -0x37t
        -0x6bt
        -0x42t
        -0x2at
        -0x2ct
        -0x25t
        -0x25t
        -0x2ct
        -0x27t
        -0x2et
        -0x75t
        -0x2ct
        -0x27t
        -0x1ft
        -0x34t
        -0x29t
        -0x2ct
        -0x31t
        -0x75t
        -0x2ct
        -0x27t
        -0x31t
        -0x30t
        -0x1dt
        -0x5bt
        -0x75t
        -0x37t
        -0x1ft
        -0x21t
        -0x1at
        -0x1at
        -0x21t
        -0x1ct
        -0x23t
        -0x6at
        -0x21t
        -0x1ct
        -0x14t
        -0x29t
        -0x1et
        -0x21t
        -0x26t
        -0x6at
        -0x16t
        -0x21t
        -0x1dt
        -0x21t
        -0x1ct
        -0x23t
        -0x50t
        -0x6at
        -0x35t
        -0x13t
        -0x26t
        -0x16t
        -0x1ft
        -0x18t
        -0x44t
        -0x23t
        -0x25t
        -0x19t
        -0x24t
        -0x23t
        -0x16t
        -0x4bt
        -0x32t
        -0x3bt
        -0x28t
        -0x30t
        -0x3bt
        -0x3dt
        -0x2ct
        -0x3bt
        -0x3ct
        -0x80t
        -0x3bt
        -0x32t
        -0x3ct
        -0x13t
        0x4t
        -0x45t
        -0x47t
        -0x47t
        -0x30t
        -0x35t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x35t
        -0x46t
        -0x30t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x35t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x47t
        -0x30t
        -0x35t
        -0x43t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x46t
        -0x30t
        -0x46t
        -0x13t
        0x4t
        -0x45t
        -0x42t
        -0x42t
        -0x31t
        -0x13t
        0x4t
        -0x45t
        -0x47t
        -0x47t
        -0x30t
        -0x35t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x35t
        -0x46t
        -0x30t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x35t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x47t
        -0x30t
        -0x35t
        -0x43t
        -0x47t
        -0x13t
        -0xbt
        -0x44t
        -0x46t
        -0x46t
        -0x30t
        -0x46t
        -0x13t
        0x4t
        -0x45t
        0x0t
        0x1ft
        0x0t
        0x0t
        -0x2et
        -0x32t
        -0x1dt
        0x0t
        0x21t
        -0x68t
        -0x49t
        -0x68t
        -0x68t
        -0x63t
        -0x56t
        -0x69t
        0x6dt
        0x69t
        0x75t
        -0x67t
        -0x68t
        -0x47t
        -0x20t
        -0x3ft
        -0x3at
        -0x2dt
        -0x6at
        -0x1et
        0x13t
        -0xct
        -0x7t
        0x6t
        -0x36t
        0x15t
        0x20t
        0x1t
        0x6t
        0x13t
        -0x28t
        0x22t
        -0xbt
        -0x2at
        -0x25t
        -0x18t
        -0x52t
        -0x9t
        -0xbt
        -0x2at
        -0x25t
        -0x18t
        -0x51t
        -0x9t
        -0xet
        -0x2dt
        -0x28t
        -0x1bt
        -0x53t
        -0xct
        -0x16t
        -0x35t
        -0x30t
        -0x23t
        -0x5at
        -0x14t
        0x9t
        -0x16t
        -0x11t
        -0x4t
        -0x3at
        0xbt
        -0x13t
        -0x32t
        -0x2dt
        -0x20t
        -0x55t
        -0x11t
    .end array-data
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 16

    .line 8218
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8219
    .local v1, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MW;-><init>()V

    .line 8220
    .local v2, "cueTimesUs":Lcom/facebook/ads/redexgen/X/MW;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Mk;-><init>([BI)V

    .line 8221
    .local v3, "subripData":Lcom/facebook/ads/redexgen/X/Mk;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/41;->A05(Lcom/facebook/ads/redexgen/X/Mk;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 8222
    .local v4, "charset":Ljava/nio/charset/Charset;
    :goto_1d
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mk;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .local v6, "currentLine":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v9, :cond_60

    .line 8223
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1d

    .line 8224
    :cond_2b
    :try_start_2b
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_4d
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 8225
    .end local v5
    .local v5, "e":Ljava/lang/NumberFormatException;
    :catch_2f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x31

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8226
    goto :goto_1d

    .line 8227
    :goto_4d
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mk;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 8228
    if-nez v9, :cond_72

    .line 8229
    const/16 v2, 0x42

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8230
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_60
    new-array v0, v8, [Lcom/facebook/ads/redexgen/X/Th;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/ads/redexgen/X/Th;

    .line 8231
    .local v0, "cuesArray":[Lcom/facebook/ads/redexgen/X/Th;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/MW;->A05()[J

    move-result-object v1

    .line 8232
    .local v5, "cueTimesUsArray":[J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Od;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Od;-><init>([Lcom/facebook/ads/redexgen/X/Th;[J)V

    return-object v0

    .line 8233
    :cond_72
    sget-object v0, Lcom/facebook/ads/redexgen/X/41;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 8234
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 8235
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/41;->A01(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->A04(J)V

    .line 8236
    const/4 v0, 0x6

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/41;->A01(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->A04(J)V

    .line 8237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8239
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mk;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 8240
    :goto_9c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 8241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b7

    .line 8242
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8243
    :cond_b7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Ljava/util/ArrayList;

    invoke-direct {p0, v9, v0}, Lcom/facebook/ads/redexgen/X/41;->A04(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8244
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mk;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9c

    .line 8245
    :cond_c7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 8246
    .local v7, "text":Landroid/text/Spanned;
    const/4 v10, 0x0

    .line 8247
    .local v8, "alignmentTag":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_f3

    .line 8248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8249
    .local v10, "tag":Ljava/lang/String;
    const/16 v7, 0xae

    const/16 v1, 0xd

    const/4 v0, 0x2

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 8250
    move-object v10, v8

    .line 8251
    .end local v9    # "i":I
    :cond_f3
    invoke-direct {p0, v11, v10}, Lcom/facebook/ads/redexgen/X/41;->A02(Landroid/text/Spanned;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8252
    sget-object v0, Lcom/facebook/ads/redexgen/X/Th;->A0J:Lcom/facebook/ads/redexgen/X/Th;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8253
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "text":Landroid/text/Spanned;
    .end local v8    # "alignmentTag":Ljava/lang/String;
    goto/16 :goto_1d

    .line 8254
    .end local v10    # "tag":Ljava/lang/String;
    :cond_101
    add-int/lit8 v9, v9, 0x1

    goto :goto_d3

    .line 8255
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x1c

    const/16 v1, 0x19

    const/16 v0, 0x3c

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8256
    goto/16 :goto_1d
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass43 (com.facebook.ads.redexgen.X.43)
.class public final Lcom/facebook/ads/redexgen/X/43;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/br;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/zip/Inflater;

.field public final A01:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A03:Lcom/facebook/ads/redexgen/X/br;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 145
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3AJEQxRXPp4Rm0ZyH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wy8ZQWuOIz4K7qTVtXaRXiEJG5Llo6sV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S46AIoOCh192Q5pb2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Sg35VX5z7QDjswjLDybvza84gF0rozVw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kJIi5xXsdUwMILg3N0Df7YANmgAdjt5d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rp0Yl03ANXOJNy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7QoQUdrMrD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DdBZLl5GiXUPpPfKi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/43;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/43;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 8446
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 8447
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A01:Lcom/facebook/ads/redexgen/X/Mk;

    .line 8448
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    .line 8449
    new-instance v0, Lcom/facebook/ads/redexgen/X/br;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/br;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A03:Lcom/facebook/ads/redexgen/X/br;

    .line 8450
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/Th;
    .registers 7

    .line 8451
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v2

    .line 8452
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v1

    .line 8453
    .local v1, "sectionType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v0

    .line 8454
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v4

    add-int/2addr v4, v0

    .line 8455
    .local v3, "nextSectionPosition":I
    if-le v4, v2, :cond_18

    .line 8456
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Mk;->A0f(I)V

    .line 8457
    const/4 v0, 0x0

    return-object v0

    .line 8458
    :cond_18
    const/4 v3, 0x0

    .line 8459
    .local v4, "cue":Lcom/facebook/ads/redexgen/X/Th;
    sparse-switch v1, :sswitch_data_4e

    .line 8460
    :goto_1c
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Mk;->A0f(I)V

    .line 8461
    return-object v3

    .line 8462
    :sswitch_20
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/br;->A06()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8463
    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A05:[Ljava/lang/String;

    const-string v1, "58RsgqCBPGQZ5OLBi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/br;->A07()V

    .line 8464
    goto :goto_1c

    .line 8465
    :sswitch_42
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/br;Lcom/facebook/ads/redexgen/X/Mk;I)V

    .line 8466
    goto :goto_1c

    .line 8467
    :sswitch_46
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A04(Lcom/facebook/ads/redexgen/X/br;Lcom/facebook/ads/redexgen/X/Mk;I)V

    .line 8468
    goto :goto_1c

    .line 8469
    :sswitch_4a
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A03(Lcom/facebook/ads/redexgen/X/br;Lcom/facebook/ads/redexgen/X/Mk;I)V

    .line 8470
    goto :goto_1c

    :sswitch_data_4e
    .sparse-switch
        0x14 -> :sswitch_4a
        0x15 -> :sswitch_46
        0x16 -> :sswitch_42
        0x80 -> :sswitch_20
    .end sparse-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 4

    const/16 v0, 0xa

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A05:[Ljava/lang/String;

    const-string v1, "D2COK1qTPO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_24

    sput-object v3, Lcom/facebook/ads/redexgen/X/43;->A04:[B

    return-void

    :array_24
    .array-data 1
        0xdt
        0x3at
        0x2et
        0x19t
        0x38t
        0x3et
        0x32t
        0x39t
        0x38t
        0x2ft
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Mk;)V
    .registers 4

    .line 8471
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0B()I

    move-result v1

    const/16 v0, 0x78

    if-ne v1, v0, :cond_32

    .line 8472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/util/zip/Inflater;

    if-nez v0, :cond_19

    .line 8473
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/util/zip/Inflater;

    .line 8474
    :cond_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/util/zip/Inflater;

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1D(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Mk;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 8475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 8476
    :cond_32
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A01:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 8478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A01:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/43;->A03(Lcom/facebook/ads/redexgen/X/Mk;)V

    .line 8479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A03:Lcom/facebook/ads/redexgen/X/br;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/br;->A07()V

    .line 8480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8481
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A01:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_2b

    .line 8482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/43;->A01:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A03:Lcom/facebook/ads/redexgen/X/br;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A00(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    .line 8483
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/Th;
    if-eqz v0, :cond_14

    .line 8484
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 8485
    :cond_2b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Of;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass44 (com.facebook.ads.redexgen.X.44)
.class public final Lcom/facebook/ads/redexgen/X/44;
.super Lcom/facebook/ads/redexgen/X/8C;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bo;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/44;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 8486
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Ljava/lang/String;)V

    .line 8487
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>([B)V

    .line 8488
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Mk;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v2

    .line 8489
    .local v1, "subtitleCompositionPage":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v1

    .line 8490
    .local v2, "subtitleAncillaryPage":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/bo;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/bo;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:Lcom/facebook/ads/redexgen/X/bo;

    .line 8491
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/44;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x48

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

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/44;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x36t
        0x4t
        0x10t
        0x36t
        0x17t
        0x11t
        0x1dt
        0x16t
        0x17t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/bV;
    .registers 6

    .line 8492
    if-eqz p3, :cond_7

    .line 8493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bo;->A0J()V

    .line 8494
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bo;->A0I([BI)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Og;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Og;-><init>(Ljava/util/List;)V

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass47 (com.facebook.ads.redexgen.X.47)
.class public final Lcom/facebook/ads/redexgen/X/47;
.super Lcom/facebook/ads/redexgen/X/89;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bb;,
        Lcom/facebook/ads/redexgen/X/bc;,
        Lcom/facebook/ads/redexgen/X/ba;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/bb;

.field public A03:Lcom/facebook/ads/redexgen/X/bc;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/Mj;

.field public final A08:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A09:Z

.field public final A0A:[Lcom/facebook/ads/redexgen/X/bb;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 146
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZOlAUWQGT6naRgir1L2tF4wzh9edzyMh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7AD11JBWzfxl6tsUCQsjlL7mrmutc9Be"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FTBsfZ5qBVdWn7zl0DmUX6COJ1aupOdf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AkinXL3BWGdULKhY3bXwB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c6Ghs4E9bFeHiORjBklyi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSx95"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kI6KbiIBzowBDHmpVOVqTz3mEPk1toZh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sJEQRmy6X3YQzhK8pZH1ysDLKCkdqTOG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/47;->A09()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 8512
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/89;-><init>()V

    .line 8513
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    .line 8514
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    .line 8515
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/47;->A01:I

    .line 8516
    const/4 v1, 0x1

    if-ne p1, v0, :cond_18

    const/4 p1, 0x1

    :cond_18
    iput p1, p0, Lcom/facebook/ads/redexgen/X/47;->A06:I

    .line 8517
    const/4 v4, 0x0

    if-eqz p2, :cond_3a

    .line 8518
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Lv;->A06(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_23
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/47;->A09:Z

    .line 8519
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/bb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    .line 8520
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v3, :cond_3c

    .line 8521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bb;-><init>()V

    aput-object v0, v1, v2

    .line 8522
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 8523
    :cond_3a
    const/4 v1, 0x0

    goto :goto_23

    .line 8524
    .end local v2    # "i":I
    :cond_3c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    .line 8525
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "3Ipbocx8RLkvCj1vqq7XUtTUpq35MhMg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "uJ6bMqEJ6Y3GuElRoFvuxg9nFRwcZltP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_30

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x17

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation

    .line 8526
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8527
    .local v0, "displayCueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v0, 0x8

    if-ge v1, v0, :cond_2e

    .line 8528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0H()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0I()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A05()Lcom/facebook/ads/redexgen/X/ba;

    move-result-object v0

    .line 8530
    .local v2, "cueInfo":Lcom/facebook/ads/redexgen/X/ba;
    if-eqz v0, :cond_2b

    .line 8531
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8532
    .end local v2    # "cueInfo":Lcom/facebook/ads/redexgen/X/ba;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8533
    .end local v1    # "i":I
    :cond_2e
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ba;->A01()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8534
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8535
    .local v1, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_3f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_72

    .line 8536
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ba;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/ba;->A01:Lcom/facebook/ads/redexgen/X/Th;

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_6c

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "41CaR852DlJ2BhDjh2AP8v3NIBFEBlGj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TywRMMAHBICPmhYpNZDPCICO4KoykFOi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8537
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8538
    .end local v2    # "i":I
    :cond_72
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .registers 2

    .line 8539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    if-nez v0, :cond_5

    .line 8540
    return-void

    .line 8541
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A07()V

    .line 8542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    .line 8543
    return-void
.end method

.method private A03()V
    .registers 10

    .line 8544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v2

    .line 8545
    .local v0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8546
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8547
    .local p1, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v5

    .line 8548
    .local p2, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v6

    .line 8549
    .local p3, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v7

    .line 8550
    .local p4, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v8

    .line 8551
    .local p5, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/bb;->A0C(IIIZZII)V

    .line 8552
    return-void
.end method

.method private A04()V
    .registers 7

    .line 8553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8554
    .local v0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v2

    .line 8555
    .local v2, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v1

    .line 8556
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8557
    .local v4, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/bb;->A01(IIII)I

    move-result v4

    .line 8558
    .local v5, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8559
    .local p0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v2

    .line 8560
    .local p1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v1

    .line 8561
    .local p2, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8562
    .local p3, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/bb;->A01(IIII)I

    move-result v3

    .line 8563
    .local p4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v2

    .line 8565
    .local p5, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v1

    .line 8566
    .local p6, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8567
    .local v1, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A00(III)I

    move-result v1

    .line 8568
    .local p7, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/bb;->A0B(III)V

    .line 8569
    return-void
.end method

.method private A05()V
    .registers 4

    .line 8570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v2

    .line 8572
    .local v0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v1

    .line 8574
    .local v1, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/bb;->A0A(II)V

    .line 8575
    return-void
.end method

.method private A06()V
    .registers 13

    .line 8576
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v5

    .line 8577
    .local v1, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8578
    .local v3, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8579
    .local v4, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8580
    .local v5, "fillB":I
    invoke-static {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/bb;->A01(IIII)I

    move-result v5

    .line 8581
    .local p2, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v8

    .line 8582
    .local v6, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8583
    .local p3, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8584
    .local p1, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8585
    .local p0, "borderB":I
    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bb;->A00(III)I

    move-result v6

    .line 8586
    .local p4, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8587
    or-int/lit8 v8, v8, 0x4

    .line 8588
    .end local v6    # "borderType":I
    .local p5, "borderType":I
    :cond_44
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v7

    .line 8589
    .local p6, "wordWrapToggle":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v9

    .line 8590
    .local p7, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v10

    .line 8591
    .local p8, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v11

    .line 8592
    .local v2, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8593
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    .end local p0    # "borderB":I
    .local p9, "borderB":I
    .end local p1
    .local p10, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/bb;->A0D(IIZIIII)V

    .line 8594
    return-void
.end method

.method private A07()V
    .registers 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 8595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A01:I

    const/4 v6, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x1

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eq v4, v3, :cond_76

    .line 8596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xad

    const/16 v1, 0x27

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x17

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x30

    const/4 v1, 0x2

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 8597
    :cond_76
    const/4 v10, 0x0

    .line 8598
    .local v0, "cuesNeedUpdate":Z
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bc;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0E([BI)V

    .line 8599
    :cond_84
    :goto_84
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "CfK0YniBgYBZajSDqb5Dx8cwwNPCbHUC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mj;->A01()I

    move-result v0

    if-lez v0, :cond_114

    .line 8600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8601
    .local v1, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v3

    .line 8602
    .local v4, "blockSize":I
    const/4 v2, 0x7

    if-ne v4, v2, :cond_e4

    .line 8603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8605
    if-ge v4, v2, :cond_e4

    .line 8606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18f

    const/16 v1, 0x21

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8607
    :cond_e4
    if-nez v3, :cond_11d

    .line 8608
    if-eqz v4, :cond_114

    .line 8609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d8

    const/16 v1, 0x1b

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0x15

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8610
    :cond_114
    if-eqz v10, :cond_11c

    .line 8611
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    .line 8612
    :cond_11c
    return-void

    .line 8613
    :cond_11d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/47;->A06:I

    if-eq v4, v0, :cond_128

    .line 8614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mj;->A0A(I)V

    .line 8615
    goto/16 :goto_84

    .line 8616
    :cond_128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A03()I

    move-result v7

    mul-int/lit8 v0, v3, 0x8

    add-int/2addr v7, v0

    .line 8617
    .local v5, "endBlockPosition":I
    :goto_131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A03()I

    move-result v0

    if-ge v0, v7, :cond_84

    .line 8618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8619
    .local v6, "command":I
    const/16 v0, 0x10

    const/16 v8, 0xff

    const/16 v3, 0x9f

    const/16 v2, 0x7f

    const/16 v1, 0x1f

    if-eq v4, v0, :cond_187

    .line 8620
    if-gt v4, v1, :cond_153

    .line 8621
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0A(I)V

    goto :goto_131

    .line 8622
    :cond_153
    if-gt v4, v2, :cond_15a

    .line 8623
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0F(I)V

    .line 8624
    const/4 v10, 0x1

    goto :goto_131

    .line 8625
    :cond_15a
    if-gt v4, v3, :cond_161

    .line 8626
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0B(I)V

    .line 8627
    const/4 v10, 0x1

    goto :goto_131

    .line 8628
    :cond_161
    if-gt v4, v8, :cond_168

    .line 8629
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0G(I)V

    .line 8630
    const/4 v10, 0x1

    goto :goto_131

    .line 8631
    :cond_168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15f

    const/16 v1, 0x16

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 8632
    :cond_187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v4

    .line 8633
    if-gt v4, v1, :cond_193

    .line 8634
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0C(I)V

    goto :goto_131

    .line 8635
    :cond_193
    if-gt v4, v2, :cond_19a

    .line 8636
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0H(I)V

    .line 8637
    const/4 v10, 0x1

    goto :goto_131

    .line 8638
    :cond_19a
    if-gt v4, v3, :cond_1a0

    .line 8639
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0D(I)V

    goto :goto_131

    .line 8640
    :cond_1a0
    if-gt v4, v8, :cond_1a7

    .line 8641
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/47;->A0I(I)V

    .line 8642
    const/4 v10, 0x1

    goto :goto_131

    .line 8643
    :cond_1a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x175

    const/16 v1, 0x1a

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_131

    :cond_1c6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .registers 3

    .line 8644
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_f

    .line 8645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A08()V

    .line 8646
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8647
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static A09()V
    .registers 4

    const/16 v0, 0x1f3

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "IEVbL8fjtNym3uFOysNHbAZY8ahWoh0D"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "eDwI1FqhTcB24RzcZ9uLwJRnNFvKe8FG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_2a

    sput-object v3, Lcom/facebook/ads/redexgen/X/47;->A0B:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        0x66t
        0x6et
        -0x47t
        -0x55t
        -0x49t
        -0x45t
        -0x55t
        -0x4ct
        -0x57t
        -0x55t
        0x66t
        -0x4ct
        -0x45t
        -0x4dt
        -0x58t
        -0x55t
        -0x48t
        0x66t
        -0x50t
        -0xdt
        0x5t
        0x2t
        0x2t
        -0xbt
        -0x2t
        0x4t
        -0x33t
        -0x6at
        -0x73t
        -0x1ct
        -0x2bt
        -0x2et
        -0x25t
        -0x73t
        -0x31t
        -0x27t
        -0x24t
        -0x30t
        -0x28t
        -0x40t
        -0x2at
        -0x19t
        -0x2et
        -0x73t
        -0x2at
        -0x20t
        -0x73t
        -0x63t
        0x45t
        0x57t
        0x7ft
        0x73t
        -0x4bt
        -0x38t
        -0x39t
        0x73t
        -0x4at
        -0x38t
        -0x3bt
        -0x3bt
        -0x48t
        -0x3ft
        -0x39t
        0x73t
        -0x44t
        -0x3ft
        -0x49t
        -0x48t
        -0x35t
        0x73t
        -0x44t
        -0x3at
        0x73t
        -0x4dt
        -0x2bt
        -0x2ft
        -0x59t
        -0x60t
        -0x58t
        -0x4ct
        -0x2bt
        -0x2dt
        -0x21t
        -0x2ct
        -0x2bt
        -0x1et
        0x70t
        -0x5et
        -0x61t
        -0x61t
        -0x6et
        -0x65t
        -0x5ft
        -0x67t
        -0x5at
        0x4dt
        -0x5et
        -0x65t
        -0x60t
        -0x5et
        -0x63t
        -0x63t
        -0x64t
        -0x61t
        -0x5ft
        -0x6et
        -0x6ft
        0x4dt
        0x70t
        0x7ct
        0x7at
        0x7at
        0x6et
        0x7bt
        0x71t
        -0x74t
        0x72t
        -0x7bt
        -0x7ft
        0x5et
        0x4dt
        0x70t
        -0x64t
        -0x66t
        -0x66t
        -0x72t
        -0x65t
        -0x6ft
        0x67t
        0x4dt
        -0x7ct
        -0x4at
        -0x4dt
        -0x4dt
        -0x5at
        -0x51t
        -0x4bt
        -0x53t
        -0x46t
        0x61t
        -0x4at
        -0x51t
        -0x4ct
        -0x4at
        -0x4ft
        -0x4ft
        -0x50t
        -0x4dt
        -0x4bt
        -0x5at
        -0x5bt
        0x61t
        -0x7ct
        -0x70t
        -0x72t
        -0x72t
        -0x7et
        -0x71t
        -0x7bt
        -0x60t
        -0x6ft
        0x72t
        0x77t
        0x61t
        -0x7ct
        -0x50t
        -0x52t
        -0x52t
        -0x5et
        -0x51t
        -0x5bt
        0x7bt
        0x61t
        -0x49t
        -0x19t
        -0x17t
        -0x4at
        -0x2at
        -0x3dt
        -0x2ct
        -0x2at
        -0x22t
        -0x28t
        -0x19t
        -0x6dt
        -0x28t
        -0x1ft
        -0x29t
        -0x28t
        -0x29t
        -0x6dt
        -0x1dt
        -0x1bt
        -0x28t
        -0x20t
        -0x2ct
        -0x19t
        -0x18t
        -0x1bt
        -0x28t
        -0x21t
        -0x14t
        -0x52t
        -0x6dt
        -0x1at
        -0x24t
        -0x13t
        -0x28t
        -0x6dt
        -0x24t
        -0x1at
        -0x6dt
        -0x33t
        -0xat
        -0x15t
        -0x9t
        -0x3t
        -0xat
        -0x4t
        -0x13t
        -0x6t
        -0x13t
        -0x14t
        -0x58t
        -0x34t
        -0x24t
        -0x22t
        -0x35t
        -0x35t
        -0x19t
        -0x28t
        -0x37t
        -0x35t
        -0x2dt
        -0x33t
        -0x24t
        -0x19t
        -0x34t
        -0x37t
        -0x24t
        -0x37t
        -0x58t
        -0x16t
        -0x13t
        -0x12t
        -0x9t
        -0x6t
        -0x13t
        -0x58t
        -0x34t
        -0x24t
        -0x22t
        -0x35t
        -0x35t
        -0x19t
        -0x28t
        -0x37t
        -0x35t
        -0x2dt
        -0x33t
        -0x24t
        -0x19t
        -0x25t
        -0x24t
        -0x37t
        -0x26t
        -0x24t
        -0x2et
        -0x9t
        -0x1t
        -0x16t
        -0xbt
        -0xet
        -0x13t
        -0x57t
        -0x34t
        -0x47t
        -0x57t
        -0x14t
        -0x8t
        -0xat
        -0xat
        -0x16t
        -0x9t
        -0x13t
        -0x3dt
        -0x57t
        -0x3bt
        -0x16t
        -0xet
        -0x23t
        -0x18t
        -0x1bt
        -0x20t
        -0x64t
        -0x41t
        -0x53t
        -0x64t
        -0x21t
        -0x15t
        -0x17t
        -0x17t
        -0x23t
        -0x16t
        -0x20t
        -0x4at
        -0x64t
        -0x58t
        -0x33t
        -0x2bt
        -0x40t
        -0x35t
        -0x38t
        -0x3dt
        0x7ft
        -0x5at
        -0x6ft
        0x7ft
        -0x3et
        -0x39t
        -0x40t
        -0x2ft
        -0x40t
        -0x3et
        -0x2dt
        -0x3ct
        -0x2ft
        -0x67t
        0x7ft
        -0x22t
        0x3t
        0xbt
        -0xat
        0x1t
        -0x2t
        -0x7t
        -0x4bt
        -0x24t
        -0x38t
        -0x4bt
        -0x8t
        -0x3t
        -0xat
        0x7t
        -0xat
        -0x8t
        0x9t
        -0x6t
        0x7t
        -0x31t
        -0x4bt
        -0x5ct
        -0x37t
        -0x2ft
        -0x44t
        -0x39t
        -0x3ct
        -0x41t
        0x7bt
        -0x43t
        -0x44t
        -0x32t
        -0x40t
        0x7bt
        -0x42t
        -0x36t
        -0x38t
        -0x38t
        -0x44t
        -0x37t
        -0x41t
        -0x6bt
        0x7bt
        0x65t
        -0x76t
        -0x6et
        0x7dt
        -0x78t
        -0x7bt
        -0x80t
        0x3ct
        -0x7ft
        -0x6ct
        -0x70t
        -0x7ft
        -0x76t
        -0x80t
        -0x7ft
        -0x80t
        0x3ct
        0x7ft
        -0x75t
        -0x77t
        -0x77t
        0x7dt
        -0x76t
        -0x80t
        0x56t
        0x3ct
        -0x26t
        -0x1t
        0x7t
        -0xet
        -0x3t
        -0x6t
        -0xbt
        -0x4ft
        -0xat
        0x9t
        0x5t
        -0xat
        -0x1t
        -0xbt
        -0xat
        -0xbt
        -0x4ft
        0x4t
        -0xat
        0x3t
        0x7t
        -0x6t
        -0xct
        -0xat
        -0x4ft
        -0x1t
        0x6t
        -0x2t
        -0xdt
        -0xat
        0x3t
        -0x35t
        -0x4ft
        -0x61t
        -0x4ft
        -0x43t
        -0x3ft
        -0x4ft
        -0x46t
        -0x51t
        -0x4ft
        0x6ct
        -0x46t
        -0x3ft
        -0x47t
        -0x52t
        -0x4ft
        -0x42t
        0x6ct
        -0x50t
        -0x4bt
        -0x41t
        -0x51t
        -0x45t
        -0x46t
        -0x40t
        -0x4bt
        -0x46t
        -0x3ft
        -0x4bt
        -0x40t
        -0x3bt
        0x7at
        0x6ct
        -0x44t
        -0x42t
        -0x4ft
        -0x3et
        -0x4bt
        -0x45t
        -0x3ft
        -0x41t
        -0x77t
        -0x51t
        -0x5ft
        -0x52t
        -0x4et
        -0x5bt
        -0x61t
        -0x5ft
        -0x76t
        -0x4ft
        -0x57t
        -0x62t
        -0x5ft
        -0x52t
        0x5ct
        -0x5bt
        -0x51t
        0x5ct
        -0x56t
        -0x55t
        -0x56t
        0x69t
        -0x4at
        -0x5ft
        -0x52t
        -0x55t
        0x5ct
        0x64t
    .end array-data
.end method

.method private A0A(I)V
    .registers 7

    .line 8648
    sparse-switch p1, :sswitch_data_dc

    .line 8649
    const/16 v3, 0x11

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d0

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "GuV6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lt p1, v3, :cond_56

    const/16 v0, 0x17

    if-gt p1, v0, :cond_56

    .line 8650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x56

    const/16 v1, 0x2c

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8652
    :goto_55
    :sswitch_55
    return-void

    .line 8653
    :cond_56
    const/16 v0, 0x18

    if-lt p1, v0, :cond_84

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_84

    .line 8654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x82

    const/16 v1, 0x2b

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_55

    .line 8656
    :cond_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10b

    const/16 v1, 0x14

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 8657
    :sswitch_a3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8658
    goto :goto_55

    .line 8659
    :sswitch_ab
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A08()V

    .line 8660
    goto :goto_55

    .line 8661
    :sswitch_af
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A06()V

    .line 8662
    goto :goto_55

    .line 8663
    :sswitch_b5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A01()Ljava/util/List;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_d6

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "zXgpNOi8fn3mVrAAHoymcRG2SZM82uOw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    .line 8664
    goto :goto_55

    .line 8665
    :cond_d0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_dc
    .sparse-switch
        0x0 -> :sswitch_55
        0x3 -> :sswitch_b5
        0x8 -> :sswitch_af
        0xc -> :sswitch_ab
        0xd -> :sswitch_a3
        0xe -> :sswitch_55
    .end sparse-switch
.end method

.method private A0B(I)V
    .registers 7

    .line 8666
    const/16 v1, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_122

    .line 8667
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11f

    const/16 v1, 0x14

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8668
    .end local v0
    :cond_30
    :goto_30
    :pswitch_30
    return-void

    .line 8669
    :pswitch_31
    add-int/lit16 v1, p1, -0x98

    .line 8670
    .local v0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/47;->A0E(I)V

    .line 8671
    iget v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    if-eq v0, v1, :cond_30

    .line 8672
    iput v1, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    .line 8673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    goto :goto_30

    .line 8674
    .end local v0    # "window":I
    :pswitch_43
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0G()Z

    move-result v0

    if-nez v0, :cond_53

    .line 8675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_30

    .line 8676
    :cond_53
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A06()V

    .line 8677
    goto :goto_30

    .line 8678
    :pswitch_57
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0G()Z

    move-result v0

    if-nez v0, :cond_65

    .line 8679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_30

    .line 8680
    :cond_65
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A05()V

    .line 8681
    goto :goto_30

    .line 8682
    :pswitch_69
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0G()Z

    move-result v0

    if-nez v0, :cond_79

    .line 8683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_30

    .line 8684
    :cond_79
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A04()V

    .line 8685
    goto :goto_30

    .line 8686
    :pswitch_7d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0G()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 8687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_30

    .line 8688
    :cond_8b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A03()V

    .line 8689
    goto :goto_30

    .line 8690
    :pswitch_8f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A08()V

    .line 8691
    goto :goto_30

    .line 8692
    :pswitch_93
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8693
    goto :goto_30

    .line 8694
    :pswitch_99
    const/4 v2, 0x1

    .local v0, "i":I
    :goto_9a
    if-gt v2, v3, :cond_30

    .line 8695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 8696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A08()V

    .line 8697
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 8698
    :pswitch_b0
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_b1
    if-gt v2, v3, :cond_30

    .line 8699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 8700
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 8701
    .local v3, "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/bb;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bb;->A0I()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0E(Z)V

    .line 8702
    .end local v3    # "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/bb;
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 8703
    :pswitch_cc
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_cd
    if-gt v2, v3, :cond_30

    .line 8704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 8705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0E(Z)V

    .line 8706
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 8707
    :pswitch_e4
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_e5
    if-gt v2, v3, :cond_30

    .line 8708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 8709
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bb;->A0E(Z)V

    .line 8710
    :cond_f8
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    .line 8711
    :pswitch_fb
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_fc
    if-gt v2, v3, :cond_30

    .line 8712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 8713
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A07()V

    .line 8714
    :cond_10f
    add-int/lit8 v2, v2, 0x1

    goto :goto_fc

    .line 8715
    :pswitch_112
    add-int/lit8 v1, p1, -0x80

    .line 8716
    .local v0, "window":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    if-eq v0, v1, :cond_30

    .line 8717
    iput v1, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    .line 8718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    goto/16 :goto_30

    :pswitch_data_122
    .packed-switch 0x80
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_fb
        :pswitch_e4
        :pswitch_cc
        :pswitch_b0
        :pswitch_99
        :pswitch_93
        :pswitch_30
        :pswitch_8f
        :pswitch_7d
        :pswitch_69
        :pswitch_57
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private A0C(I)V
    .registers 6

    .line 8719
    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    .line 8720
    :cond_3
    :goto_3
    return-void

    .line 8721
    :cond_4
    const/16 v0, 0xf

    if-gt p1, v0, :cond_10

    .line 8722
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_3

    .line 8723
    :cond_10
    const/16 v3, 0x17

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_43

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "JR2n817sh95PTOSqww1hgEyLKKQ0p2pj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "eLgG8MLXBTHAZ6Xs7lB3Q6qMQmPTnKZd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_37

    .line 8724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_3

    .line 8725
    :cond_37
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 8726
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_3

    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(I)V
    .registers 4

    .line 8727
    const/16 v0, 0x87

    if-gt p1, v0, :cond_c

    .line 8728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8729
    .end local v0
    :cond_b
    :goto_b
    return-void

    .line 8730
    :cond_c
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_18

    .line 8731
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_b

    .line 8732
    :cond_18
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_b

    .line 8733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    .line 8735
    .local v0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    goto :goto_b
.end method

.method private A0E(I)V
    .registers 20

    .line 8736
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    aget-object v5, v0, p1

    .line 8737
    .local v1, "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/bb;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8738
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v6

    .line 8739
    .local v15, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v7

    .line 8740
    .local v16, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v8

    .line 8741
    .local v17, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v9

    .line 8742
    .local p0, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0H()Z

    move-result v10

    .line 8743
    .local p1, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v11

    .line 8744
    .local p2, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v12

    .line 8745
    .local p3, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v15

    .line 8746
    .local p4, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v13

    .line 8747
    .local p5, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8748
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v14

    .line 8749
    .local p6, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 8750
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v16

    .line 8751
    .local p7, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/47;->A07:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v17

    .line 8752
    .local p8, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/bb;->A0F(ZZZIZIIIIIII)V

    .line 8753
    return-void
.end method

.method private A0F(I)V
    .registers 4

    .line 8754
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_c

    .line 8755
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8756
    :goto_b
    return-void

    .line 8757
    :cond_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    goto :goto_b
.end method

.method private A0G(I)V
    .registers 4

    .line 8758
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8759
    return-void
.end method

.method private A0H(I)V
    .registers 7

    .line 8760
    sparse-switch p1, :sswitch_data_178

    .line 8761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x133

    const/16 v1, 0x16

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8762
    :goto_2b
    return-void

    .line 8763
    :sswitch_2c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x250c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8764
    goto :goto_2b

    .line 8765
    :sswitch_34
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_16c

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "WLVd2BsLGUE7Vnh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x2518

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8766
    goto :goto_2b

    .line 8767
    :sswitch_50
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2500

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8768
    goto :goto_2b

    .line 8769
    :sswitch_58
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v3, 0x2514

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_16c

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "7jtVWfiMO5taYpVp1TdCvykx3ef1pdrL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8770
    goto :goto_2b

    .line 8771
    :sswitch_76
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8772
    goto :goto_2b

    .line 8773
    :sswitch_7e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2502

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8774
    goto :goto_2b

    .line 8775
    :sswitch_86
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8776
    goto :goto_2b

    .line 8777
    :sswitch_8e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8778
    goto :goto_2b

    .line 8779
    :sswitch_96
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8780
    goto :goto_2b

    .line 8781
    :sswitch_9e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8782
    goto :goto_2b

    .line 8783
    :sswitch_a6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8784
    goto/16 :goto_2b

    .line 8785
    :sswitch_af
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2120

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8786
    goto/16 :goto_2b

    .line 8787
    :sswitch_b8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8788
    goto/16 :goto_2b

    .line 8789
    :sswitch_c1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x161

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8790
    goto/16 :goto_2b

    .line 8791
    :sswitch_ca
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v3, 0x2122

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_172

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "271ZhtKPeMEwZVI7uJ5TCKwYr8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8792
    goto/16 :goto_2b

    .line 8793
    :sswitch_e7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8794
    goto/16 :goto_2b

    .line 8795
    :sswitch_f0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x201d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8796
    goto/16 :goto_2b

    .line 8797
    :sswitch_f9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x201c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8798
    goto/16 :goto_2b

    .line 8799
    :sswitch_102
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v3, 0x2019

    sget-object v1, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_121

    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "dhWUuAwdVMrp6MrXgZUlvzNpGy6KWNlB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8800
    goto/16 :goto_2b

    :cond_121
    sget-object v2, Lcom/facebook/ads/redexgen/X/47;->A0C:[Ljava/lang/String;

    const-string v1, "5ptZzseBFh92AYCOfZHHL49Br"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    goto/16 :goto_2b

    .line 8801
    :sswitch_12d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8802
    goto/16 :goto_2b

    .line 8803
    :sswitch_136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8804
    goto/16 :goto_2b

    .line 8805
    :sswitch_13f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8806
    goto/16 :goto_2b

    .line 8807
    :sswitch_148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8808
    goto/16 :goto_2b

    .line 8809
    :sswitch_151
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8810
    goto/16 :goto_2b

    .line 8811
    :sswitch_15a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8812
    goto/16 :goto_2b

    .line 8813
    :sswitch_163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8814
    goto/16 :goto_2b

    .line 8815
    :cond_16c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_172
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_178
    .sparse-switch
        0x20 -> :sswitch_163
        0x21 -> :sswitch_15a
        0x25 -> :sswitch_151
        0x2a -> :sswitch_148
        0x2c -> :sswitch_13f
        0x30 -> :sswitch_136
        0x31 -> :sswitch_12d
        0x32 -> :sswitch_102
        0x33 -> :sswitch_f9
        0x34 -> :sswitch_f0
        0x35 -> :sswitch_e7
        0x39 -> :sswitch_ca
        0x3a -> :sswitch_c1
        0x3c -> :sswitch_b8
        0x3d -> :sswitch_af
        0x3f -> :sswitch_a6
        0x76 -> :sswitch_9e
        0x77 -> :sswitch_96
        0x78 -> :sswitch_8e
        0x79 -> :sswitch_86
        0x7a -> :sswitch_7e
        0x7b -> :sswitch_76
        0x7c -> :sswitch_58
        0x7d -> :sswitch_50
        0x7e -> :sswitch_34
        0x7f -> :sswitch_2c
    .end sparse-switch
.end method

.method private A0I(I)V
    .registers 6

    .line 8816
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_c

    .line 8817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    .line 8818
    :goto_b
    return-void

    .line 8819
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x149

    const/16 v1, 0x16

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8820
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A09(C)V

    goto :goto_b
.end method


# virtual methods
.method public final bridge synthetic A0W()Lcom/facebook/ads/redexgen/X/8B;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8821
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/89;->A0W()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X()Lcom/facebook/ads/redexgen/X/8A;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8822
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/89;->A0X()Lcom/facebook/ads/redexgen/X/8A;

    move-result-object v0

    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/Oh;
    .registers 3

    .line 8823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A05:Ljava/util/List;

    .line 8824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Oh;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0a(Lcom/facebook/ads/redexgen/X/8B;)V
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
            Lcom/facebook/ads/redexgen/X/Oj;
        }
    .end annotation

    .line 8825
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/89;->A0a(Lcom/facebook/ads/redexgen/X/8B;)V

    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/8B;)V
    .registers 15

    .line 8826
    move-object v4, p0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/T2;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8827
    .local v2, "subtitleData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 8828
    .local v3, "inputBufferData":[B
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 8829
    :cond_16
    :goto_16
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v0

    const/4 v10, 0x3

    if-lt v0, v10, :cond_104

    .line 8830
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 8831
    .local v4, "ccTypeAndValid":I
    and-int/lit8 v8, v0, 0x3

    .line 8832
    .local v6, "ccType":I
    and-int/lit8 v0, v0, 0x4

    const/4 v12, 0x0

    const/4 v9, 0x4

    const/4 v11, 0x1

    if-ne v0, v9, :cond_101

    const/4 v1, 0x1

    .line 8833
    .local v7, "ccValid":Z
    :goto_31
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    int-to-byte v6, v0

    .line 8834
    .local v11, "ccData1":B
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A08:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    int-to-byte v5, v0

    .line 8835
    .local v12, "ccData2":B
    const/4 v7, 0x2

    if-eq v8, v7, :cond_45

    if-eq v8, v10, :cond_45

    goto :goto_16

    .line 8836
    :cond_45
    if-nez v1, :cond_48

    goto :goto_16

    .line 8837
    :cond_48
    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-ne v8, v10, :cond_cb

    .line 8838
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A02()V

    .line 8839
    and-int/lit16 v0, v6, 0xc0

    shr-int/lit8 v8, v0, 0x6

    .line 8840
    .local v5, "sequenceNumber":I
    iget v1, v4, Lcom/facebook/ads/redexgen/X/47;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9b

    iget v0, v4, Lcom/facebook/ads/redexgen/X/47;->A01:I

    add-int/2addr v0, v11

    rem-int/2addr v0, v9

    if-eq v8, v0, :cond_9b

    .line 8841
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A08()V

    .line 8842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b0

    const/16 v1, 0x28

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/47;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8843
    :cond_9b
    iput v8, v4, Lcom/facebook/ads/redexgen/X/47;->A01:I

    .line 8844
    and-int/lit8 v1, v6, 0x3f

    .line 8845
    .local v8, "packetSize":I
    if-nez v1, :cond_a3

    .line 8846
    const/16 v1, 0x40

    .line 8847
    :cond_a3
    new-instance v0, Lcom/facebook/ads/redexgen/X/bc;

    invoke-direct {v0, v8, v1}, Lcom/facebook/ads/redexgen/X/bc;-><init>(II)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    .line 8848
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bc;->A03:[B

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    aput-byte v5, v3, v1

    .line 8849
    .end local v5    # "sequenceNumber":I
    .end local v8    # "packetSize":I
    :goto_b8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bc;->A01:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_16

    .line 8850
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A02()V

    goto/16 :goto_16

    .line 8851
    :cond_cb
    if-ne v8, v7, :cond_ce

    const/4 v12, 0x1

    :cond_ce
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 8852
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    if-nez v0, :cond_e4

    .line 8853
    const/16 v2, 0xd4

    const/16 v1, 0x37

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/47;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 8854
    goto/16 :goto_16

    .line 8855
    :cond_e4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bc;->A03:[B

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    aput-byte v6, v3, v1

    .line 8856
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bc;->A03:[B

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/bc;->A00:I

    aput-byte v5, v3, v1

    goto :goto_b8

    .line 8857
    :cond_101
    const/4 v1, 0x0

    goto/16 :goto_31

    .line 8858
    :cond_104
    return-void
.end method

.method public final A0d()Z
    .registers 3

    .line 8859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A05:Ljava/util/List;

    if-eq v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final bridge synthetic AIp()V
    .registers 1

    .line 8860
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/89;->AIp()V

    return-void
.end method

.method public final bridge synthetic AKz(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8861
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/89;->AKz(J)V

    return-void
.end method

.method public final flush()V
    .registers 4

    .line 8862
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/89;->flush()V

    .line 8863
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Ljava/util/List;

    .line 8864
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/47;->A05:Ljava/util/List;

    .line 8865
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    .line 8866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A0A:[Lcom/facebook/ads/redexgen/X/bb;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A02:Lcom/facebook/ads/redexgen/X/bb;

    .line 8867
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/47;->A08()V

    .line 8868
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/47;->A03:Lcom/facebook/ads/redexgen/X/bc;

    .line 8869
    return-void
.end method
