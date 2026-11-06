###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3269tA (com.facebook.ads.redexgen.X.tA)
.class public final Lcom/facebook/ads/redexgen/X/tA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F8;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F8;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 3712
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k8MtpBt3Qfu9t4OFuOzPTA9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EaWgwdwBdhlXfh75tf5xlZizItKY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I3a1V9Q81nlEgCzUcKWQuRqODQ3DjWxH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oEHnpcoPHOQ1w0r9N2bX746yyo9AzRt3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zzYKfSLKQXqk5r1VBilP0eW3P6Zh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kPf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y93zqkftmbiIIhqeBUj1eeRDrTChoR0B"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "82057t9sswwT0Wwk3ahaSLaHG8ap"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/tA;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/tA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F8;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/tA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/tA;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/tA;->A02:[Ljava/lang/String;

    const-string v1, "R4jhTLFzeCLA05fehusZUE0v0ZqM0RbB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "iLH4dxaHi48TTWSeZbAis2052LkD1Rwp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_38

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/16 v0, 0x30

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/tA;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/tA;->A02:[Ljava/lang/String;

    const-string v1, "4zVifcW4nf1GYQGXTX8TrM1073wM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GSdjqXXoR7tmBXEcQx0Yi2E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_28

    sput-object v3, Lcom/facebook/ads/redexgen/X/tA;->A01:[B

    return-void

    :array_28
    .array-data 1
        0x50t
        0x53t
        0x5et
        0x44t
        0x45t
        0xbt
        0x53t
        0x5dt
        0x50t
        0x5ft
        0x5at
        0x77t
        0x78t
        0x49t
        0x77t
        0x75t
        0x62t
        0x7ft
        0x60t
        0x7ft
        0x62t
        0x6ft
        0x77t
        0x78t
        0x72t
        0x64t
        0x79t
        0x7ft
        0x72t
        0x38t
        0x7ft
        0x78t
        0x62t
        0x73t
        0x78t
        0x62t
        0x38t
        0x77t
        0x75t
        0x62t
        0x7ft
        0x79t
        0x78t
        0x38t
        0x40t
        0x5ft
        0x53t
        0x41t
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v5, p0

    .line 112137
    .local v0, "this":Lcom/facebook/ads/redexgen/X/tA;
    .local p3, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A07(Lcom/facebook/ads/redexgen/X/F8;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/tA;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/F8;->A07(Lcom/facebook/ads/redexgen/X/F8;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_9a

    .line 112138
    :cond_2a
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/tA;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    .line 112139
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/F8;->A07(Lcom/facebook/ads/redexgen/X/F8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112140
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112141
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A04(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AAc()V
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_9b

    .line 112142
    :try_start_55
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A04(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/p8;->A0F(Lcom/facebook/ads/redexgen/X/Hi;Landroid/content/Intent;)Z

    .line 112143
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A05(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/tT;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 112144
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A05(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/tT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/tT;->AG4()V

    goto :goto_99
    :try_end_70
    .catch Lcom/facebook/ads/redexgen/X/p6; {:try_start_55 .. :try_end_70} :catch_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_9b

    .line 112145
    :catch_70
    move-exception v4

    .line 112146
    .local v2, "e":Lcom/facebook/ads/redexgen/X/p6;
    :try_start_71
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/p6;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/p6;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 112147
    .local v3, "exceptionToLog":Ljava/lang/Throwable;
    :cond_7b
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/tA;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A04(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    .line 112148
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/tA;->A00(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 112149
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 112150
    .end local v2    # "e":Lcom/facebook/ads/redexgen/X/p6;
    .end local v3    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_99
    :goto_99
    return-void

    .line 112151
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9a
    :goto_9a
    return-void
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_9b

    .line 112152
    .end local p3
    :catchall_9b
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
