###### Class com.facebook.ads.redexgen.X.C2L (com.facebook.ads.redexgen.X.2L)
.class public final Lcom/facebook/ads/redexgen/X/2L;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2M;,
        Lcom/facebook/ads/redexgen/X/10;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A03:[B

.field public static final A04:Lcom/facebook/ads/redexgen/X/2M;

.field public static final A05:Lcom/facebook/ads/redexgen/X/2L;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/13;

.field public final A01:Lcom/facebook/ads/redexgen/X/2e;

.field public final A02:Lcom/facebook/ads/redexgen/X/2b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2L;->A01()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/1i;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2L;->A04:Lcom/facebook/ads/redexgen/X/2M;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2b;Lcom/facebook/ads/redexgen/X/2e;)V
    .registers 7

    .line 5149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5150
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/13;

    .line 5151
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/2b;

    .line 5152
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/2e;

    .line 5153
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/2b;

    new-instance v0, Lcom/facebook/ads/redexgen/X/10;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/10;-><init>(Lcom/facebook/ads/redexgen/X/2b;)V

    check-cast v0, Lcom/facebook/ads/redexgen/X/2k;

    .line 5154
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/2j;->A05(Lcom/facebook/ads/redexgen/X/2k;)V

    .line 5155
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2b;Lcom/facebook/ads/redexgen/X/2e;Lcom/facebook/ads/redexgen/X/1i;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/2L;-><init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2b;Lcom/facebook/ads/redexgen/X/2e;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2L;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x23

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/2L;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x2t
        0x3t
        -0x8t
        -0x7t
        -0x57t
        -0x67t
        -0x69t
        -0x5ct
        -0x7et
        -0x61t
        -0x57t
        -0x56t
        -0x65t
        -0x5ct
        -0x65t
        -0x58t
        0x15t
        0x8t
        0x4t
        0x16t
        0xft
        0xet
        0x8t
        0xdt
        0x13t
        -0x1dt
        0x0t
        0x13t
        0x0t
    .end array-data
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2L;Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;ILjava/lang/Object;)V
    .registers 6

    .line 5156
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_5

    .line 5157
    const/4 p2, 0x0

    .line 5158
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2L;->A05(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/2i;)V
    .registers 3

    .line 5159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/2b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2b;->A0H(Lcom/facebook/ads/redexgen/X/2i;)V

    .line 5160
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/2f;)V
    .registers 5

    const/4 v2, 0x4

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/2b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2b;->A0I(Lcom/facebook/ads/redexgen/X/2f;)V

    .line 5162
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/13;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/13;->A01:Z

    if-eqz v0, :cond_19

    if-eqz p2, :cond_19

    .line 5164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/2e;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2e;->A08(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V

    .line 5165
    :goto_18
    return-void

    .line 5166
    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/2e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2e;->A07(Lcom/facebook/ads/redexgen/X/2K;)V

    goto :goto_18
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2K;",
            "Lcom/facebook/ads/redexgen/X/2y;",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/13;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/13;->A01:Z

    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    .line 5168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/2e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2e;->A09(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V

    .line 5169
    :goto_25
    return-void

    .line 5170
    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/2e;

    invoke-virtual {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/2e;->A0A(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2l;)V

    goto :goto_25
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2K;",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/2L;->A06(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V

    .line 5172
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass10 (com.facebook.ads.redexgen.X.10)
.class public final Lcom/facebook/ads/redexgen/X/10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LifecycleControllerListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2b;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/10;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2b;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/2b;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

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

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/10;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x21t
        -0x38t
        -0x25t
        -0x29t
        -0x17t
        -0x1et
        -0x1ft
        -0x25t
        -0x20t
        -0x1at
        -0x3bt
        -0x2bt
        -0x2dt
        -0x20t
        -0x20t
        -0x29t
        -0x1ct
    .end array-data
.end method


# virtual methods
.method public final onStart()V
    .registers 2

    .line 4351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/2b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2b;->A0G()V

    .line 4352
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 4353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/2b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2b;->A0F()V

    .line 4354
    return-void
.end method
