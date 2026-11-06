###### Class com.facebook.ads.androidx.media3.common.Timeline (com.facebook.ads.androidx.media3.common.Timeline)
.class public abstract Lcom/facebook/ads/androidx/media3/common/Timeline;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UK;,
        Lcom/facebook/ads/redexgen/X/UM;,
        Lcom/facebook/ads/redexgen/X/9K;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Lcom/facebook/ads/redexgen/X/Js;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Js<",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1344
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iXz9IdViaxesDvssZDMrU2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "902jBKsSGCUy3GN03syyWTT3P53HwN8i"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cpamzQxdPpEvHFLmNkiAWbWRCL8TRkXJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Q95qgWchppvAnnzyy7qtE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ojHuVzavOvlzwT6yHvUIJXrejcAKIS2c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "owXJpSDSE9XS1nP6QheBZ461E5xkAMaW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5XYUbYlnz0mvHoIalWBa3KrJNUzF58ks"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KAfJIHYhk4n7AndF2A7YvQ2XejzsQ4OX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9L;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 1345
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 1346
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 1347
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    .line 1348
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UP;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A01:Lcom/facebook/ads/redexgen/X/Js;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9K;
    .registers 5

    .line 72972
    sget-object v1, Lcom/facebook/ads/redexgen/X/UK;->A0J:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 72973
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/Js;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v3

    .line 72974
    .local v0, "windows":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Window;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/UM;->A08:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 72975
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/Js;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v2

    .line 72976
    .local v1, "periods":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Period;>;"
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 72977
    .local v2, "shuffledWindowIndices":[I
    if-nez v1, :cond_28

    .line 72978
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05(I)[I

    move-result-object v1

    .line 72979
    :cond_28
    new-instance v0, Lcom/facebook/ads/redexgen/X/9K;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9K;-><init>(Lcom/facebook/ads/redexgen/X/9l;Lcom/facebook/ads/redexgen/X/9l;[I)V

    .line 72980
    return-object v0
.end method

.method public static synthetic A03(Landroid/os/Bundle;)Lcom/facebook/ads/androidx/media3/common/Timeline;
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object p0

    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Js;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/Jt;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/Js<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TT;>;"
        }
    .end annotation

    .line 72981
    .local p0, "creator":Lcom/facebook/ads/redexgen/X/Js;, "Lcom/facebook/ads/androidx/media3/common/Bundleable$Creator<TT;>;"
    if-nez p1, :cond_7

    .line 72982
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A03()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0

    .line 72983
    :cond_7
    new-instance v3, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    .line 72984
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/4e;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v2

    .line 72985
    .local v1, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 72986
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Js;->A7F(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4e;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/4e;

    .line 72987
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 72988
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4e;->A05()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public static A05(I)[I
    .registers 3

    .line 72989
    new-array v1, p0, [I

    .line 72990
    .local v0, "indices":[I
    const/4 v0, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v0, p0, :cond_a

    .line 72991
    aput v0, v1, v0

    .line 72992
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72993
    .end local v1    # "i":I
    :cond_a
    return-object v1
.end method


# virtual methods
.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public A08(IIZ)I
    .registers 5

    .line 72994
    packed-switch p2, :pswitch_data_24

    .line 72995
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72996
    :pswitch_9
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 72997
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    .line 72998
    :goto_13
    return v0

    .line 72999
    :cond_14
    add-int/lit8 v0, p1, 0x1

    goto :goto_13

    .line 73000
    :pswitch_17
    return p1

    .line 73001
    :pswitch_18
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_20

    .line 73002
    const/4 v0, -0x1

    .line 73003
    :goto_1f
    return v0

    .line 73004
    :cond_20
    add-int/lit8 v0, p1, 0x1

    goto :goto_1f

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_9
    .end packed-switch
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/UM;Lcom/facebook/ads/redexgen/X/UK;IZ)I
    .registers 8

    .line 73005
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/UM;->A00:I

    .line 73006
    .local v0, "windowIndex":I
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/UK;->A01:I

    if-ne v0, p1, :cond_1d

    .line 73007
    invoke-virtual {p0, v1, p4, p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 73008
    .local v1, "nextWindowIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_16

    .line 73009
    return v0

    .line 73010
    :cond_16
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/UK;->A00:I

    return v0

    .line 73011
    .end local v1    # "nextWindowIndex":I
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public abstract A0A(Ljava/lang/Object;)I
.end method

.method public A0B(Z)I
    .registers 3

    .line 73012
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public A0C(Z)I
    .registers 3

    .line 73013
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_7
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJ)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Lcom/facebook/ads/redexgen/X/UM;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73014
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0E(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJ)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Lcom/facebook/ads/redexgen/X/UM;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 73015
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 73016
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJJ)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Lcom/facebook/ads/redexgen/X/UM;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73017
    invoke-virtual/range {p0 .. p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/UM;IJJ)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Lcom/facebook/ads/redexgen/X/UM;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 73018
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    invoke-static {p3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->A00(III)I

    .line 73019
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/UK;J)Lcom/facebook/ads/redexgen/X/UK;

    .line 73020
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v4

    if-nez v0, :cond_38

    .line 73021
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A05()J

    move-result-wide p4

    .line 73022
    cmp-long v0, p4, v4

    if-nez v0, :cond_38

    .line 73023
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_30

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "r7iFKwGABjGBgt08xi8xh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 73024
    :cond_38
    iget v3, p1, Lcom/facebook/ads/redexgen/X/UK;->A00:I

    .line 73025
    .local v2, "periodIndex":I
    invoke-virtual {p0, v3, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;

    .line 73026
    :goto_3d
    iget v0, p1, Lcom/facebook/ads/redexgen/X/UK;->A01:I

    if-ge v3, v0, :cond_56

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/UM;->A02:J

    cmp-long v0, v1, p4

    if-eqz v0, :cond_56

    add-int/lit8 v0, v3, 0x1

    .line 73027
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/UM;->A02:J

    cmp-long v0, v1, p4

    if-gtz v0, :cond_56

    .line 73028
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 73029
    :cond_56
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    .line 73030
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/UM;->A02:J

    sub-long/2addr p4, v0

    .line 73031
    .local v3, "periodPositionUs":J
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_6c

    .line 73032
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 73033
    :cond_6c
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 73034
    .end local v3    # "periodPositionUs":J
    .local v0, "periodPositionUs":J
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/UM;->A04:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_87

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_87
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "cpwMXKROxgxWbDhlucA1RyCwbmQORN5S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qnIho8OZsEdG5rtbX5zMjqcNhamTc68f"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0H(ILcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;
    .registers 4

    .line 73035
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;
.end method

.method public A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;
    .registers 5

    .line 73036
    invoke-virtual {p0, p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    return-object v0
.end method

.method public final A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;
    .registers 5

    .line 73037
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/UK;J)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0L(ILcom/facebook/ads/redexgen/X/UK;J)Lcom/facebook/ads/redexgen/X/UK;
.end method

.method public abstract A0M(I)Ljava/lang/Object;
.end method

.method public final A0N()Z
    .registers 2

    .line 73038
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A0O(ILcom/facebook/ads/redexgen/X/UM;Lcom/facebook/ads/redexgen/X/UK;IZ)Z
    .registers 8

    .line 73039
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/UM;Lcom/facebook/ads/redexgen/X/UK;IZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 11

    .line 73040
    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    .line 73041
    return v5

    .line 73042
    :cond_4
    instance-of v0, p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    const/4 v4, 0x0

    if-nez v0, :cond_a

    .line 73043
    return v4

    .line 73044
    :cond_a
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 73045
    .local v1, "other":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ne v1, v0, :cond_20

    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-eq v1, v0, :cond_21

    .line 73046
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_20
    return v4

    .line 73047
    :cond_21
    new-instance v8, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/UK;-><init>()V

    .line 73048
    .local v3, "window":Lcom/facebook/ads/redexgen/X/UK;
    new-instance v6, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    .line 73049
    .local v4, "period":Lcom/facebook/ads/redexgen/X/UM;
    new-instance v7, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/UK;-><init>()V

    .line 73050
    .local v5, "otherWindow":Lcom/facebook/ads/redexgen/X/UK;
    new-instance v3, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    .line 73051
    .local v6, "otherPeriod":Lcom/facebook/ads/redexgen/X/UM;
    const/4 v2, 0x0

    .local v7, "i":I
    :goto_36
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_4e

    .line 73052
    invoke-virtual {p0, v2, v8}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    invoke-virtual {p1, v2, v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 73053
    return v4

    .line 73054
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 73055
    .end local v7    # "i":I
    :cond_4e
    const/4 v2, 0x0

    .restart local v7    # "i":I
    :goto_4f
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-ge v2, v0, :cond_67

    .line 73056
    invoke-virtual {p0, v2, v6, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    .line 73057
    invoke-virtual {p1, v2, v3, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 73058
    return v4

    .line 73059
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 73060
    .end local v7    # "i":I
    :cond_67
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v3

    .line 73061
    .local v7, "windowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    if-eq v3, v0, :cond_72

    .line 73062
    return v4

    .line 73063
    :cond_72
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v2

    .line 73064
    .local v8, "lastWindowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-eq v2, v0, :cond_7d

    .line 73065
    return v4

    .line 73066
    :cond_7d
    :goto_7d
    if-eq v3, v2, :cond_8c

    .line 73067
    invoke-virtual {p0, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 73068
    .local p0, "nextWindowIndex":I
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v0

    if-eq v1, v0, :cond_8a

    .line 73069
    return v4

    .line 73070
    :cond_8a
    move v3, v1

    .line 73071
    .end local p0    # "nextWindowIndex":I
    goto :goto_7d

    .line 73072
    :cond_8c
    return v5
.end method

.method public final hashCode()I
    .registers 6

    .line 73073
    new-instance v3, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/UK;-><init>()V

    .line 73074
    .local v0, "window":Lcom/facebook/ads/redexgen/X/UK;
    new-instance v4, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    .line 73075
    .local v1, "period":Lcom/facebook/ads/redexgen/X/UM;
    const/4 v0, 0x7

    .line 73076
    .local v2, "result":I
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/2addr v2, v0

    .line 73077
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 73078
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 73079
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 73080
    .end local v2    # "i":I
    :cond_27
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    add-int/2addr v3, v0

    .line 73081
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2f
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    const/4 v2, 0x1

    if-ge v1, v0, :cond_44

    .line 73082
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v1, v4, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 73083
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 73084
    .end local v3    # "i":I
    :cond_44
    invoke-virtual {p0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v1

    .line 73085
    .local v3, "windowIndex":I
    :goto_48
    const/4 v0, -0x1

    if-eq v1, v0, :cond_54

    .line 73086
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    .line 73087
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    goto :goto_48

    .line 73088
    .end local v3    # "windowIndex":I
    :cond_54
    return v3
.end method

###### Class com.facebook.ads.redexgen.X.C9K (com.facebook.ads.redexgen.X.9K)
.class public final Lcom/facebook/ads/redexgen/X/9K;
.super Lcom/facebook/ads/androidx/media3/common/Timeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemotableTimeline"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/UM;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:[I

.field public final A03:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 401
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uBgQio"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BYm52oHJK3K"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aC01MgvsXa2yvH2jZk1eLEUf5g1fQm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dn7YJpAg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QHSiiMsdXe3k6n4vo0Wi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WNSDwkVSK8kZwmOeTNY4kXKP6W06Ao6M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hbGNqKOTwKI4Q8X2puB7gM5ZpNhmTHBB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7QF2VbCSr34FyhrEo9OWyWNwtq4W3379"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9l;Lcom/facebook/ads/redexgen/X/9l;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/UM;",
            ">;[I)V"
        }
    .end annotation

    .line 28605
    .local p1, "windows":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Window;>;"
    .local p2, "periods":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Period;>;"
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;-><init>()V

    .line 28606
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v1

    array-length v0, p3

    if-ne v1, v0, :cond_26

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 28607
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9K;->A01:Lcom/facebook/ads/redexgen/X/9l;

    .line 28608
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9K;->A00:Lcom/facebook/ads/redexgen/X/9l;

    .line 28609
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9K;->A02:[I

    .line 28610
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A03:[I

    .line 28611
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v0, p3

    if-ge v2, v0, :cond_28

    .line 28612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9K;->A03:[I

    aget v0, p3, v2

    aput v2, v1, v0

    .line 28613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 28614
    :cond_26
    const/4 v0, 0x0

    goto :goto_b

    .line 28615
    .end local v0    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method public final A06()I
    .registers 2

    .line 28616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A00:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .registers 2

    .line 28617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A01:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    return v0
.end method

.method public final A08(IIZ)I
    .registers 7

    .line 28618
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 28619
    return p1

    .line 28620
    :cond_4
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/9K;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 28621
    const/4 v0, 0x2

    if-ne p2, v0, :cond_12

    .line 28622
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/9K;->A0B(Z)I

    move-result v0

    .line 28623
    :goto_11
    return v0

    .line 28624
    :cond_12
    const/4 v0, -0x1

    goto :goto_11

    .line 28625
    :cond_14
    if-eqz p3, :cond_20

    .line 28626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9K;->A02:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A03:[I

    aget v0, v0, p1

    add-int/2addr v0, v2

    aget v0, v1, v0

    .line 28627
    :goto_1f
    return v0

    .line 28628
    :cond_20
    add-int/lit8 v0, p1, 0x1

    goto :goto_1f
.end method

.method public final A0A(Ljava/lang/Object;)I
    .registers 3

    .line 28629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final A0B(Z)I
    .registers 6

    .line 28630
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 28631
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const-string v1, "JpAqLo2lciu93y1MBP3JR416ima75clG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28632
    :cond_27
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A02:[I

    aget v1, v0, v1

    :cond_2e
    return v1
.end method

.method public final A0C(Z)I
    .registers 6

    .line 28633
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 28634
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const-string v1, "ypl0k4EuIoZsPyyA88VrOXk6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 28635
    :cond_1c
    if-eqz p1, :cond_3d

    .line 28636
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9K;->A02:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const-string v1, "HmcEDHf8AIECQzXJLgFXbL9gu7RTC3MH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9K;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    .line 28637
    :goto_3c
    return v0

    .line 28638
    :cond_3d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9K;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const-string v1, "7y8oZz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "TKlFQF19R4AdRia15QYaSHM3DbFakK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    goto :goto_3c

    :cond_5d
    sget-object v2, Lcom/facebook/ads/redexgen/X/9K;->A04:[Ljava/lang/String;

    const-string v1, "H0VdlkE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    goto :goto_3c

    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;
    .registers 14

    .line 28639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9K;->A00:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UM;

    .line 28640
    .local v0, "p":Lcom/facebook/ads/redexgen/X/UM;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/UM;->A03:Ljava/lang/Object;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UM;->A04:Ljava/lang/Object;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/UM;->A00:I

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/UM;->A02:J

    .line 28641
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UM;->A00(Lcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/VN;

    move-result-object v8

    iget-boolean v9, v0, Lcom/facebook/ads/redexgen/X/UM;->A05:Z

    .line 28642
    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/UM;->A0G(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/facebook/ads/redexgen/X/VN;Z)Lcom/facebook/ads/redexgen/X/UM;

    .line 28643
    return-object v0
.end method

.method public final A0L(ILcom/facebook/ads/redexgen/X/UK;J)Lcom/facebook/ads/redexgen/X/UK;
    .registers 40

    .line 28644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9K;->A01:Lcom/facebook/ads/redexgen/X/9l;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/UK;

    .line 28645
    .local v12, "w":Lcom/facebook/ads/redexgen/X/UK;
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A0C:Ljava/lang/Object;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A09:Lcom/facebook/ads/redexgen/X/Ug;

    move-object/from16 v20, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A0A:Ljava/lang/Object;

    move-object/from16 v19, v0

    iget-wide v5, v13, Lcom/facebook/ads/redexgen/X/UK;->A06:J

    iget-wide v3, v13, Lcom/facebook/ads/redexgen/X/UK;->A07:J

    iget-wide v1, v13, Lcom/facebook/ads/redexgen/X/UK;->A04:J

    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A0G:Z

    move/from16 v18, v0

    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A0D:Z

    move/from16 v17, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A08:Lcom/facebook/ads/redexgen/X/Uk;

    move-object/from16 v16, v0

    move-object/from16 v14, p2

    move-object v14, v14

    .end local v12    # "w":Lcom/facebook/ads/redexgen/X/UK;
    .local v0, "w":Lcom/facebook/ads/redexgen/X/UK;
    iget-wide v11, v13, Lcom/facebook/ads/redexgen/X/UK;->A02:J

    iget-wide v9, v13, Lcom/facebook/ads/redexgen/X/UK;->A03:J

    iget v15, v13, Lcom/facebook/ads/redexgen/X/UK;->A00:I

    iget v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A01:I

    iget-wide v7, v13, Lcom/facebook/ads/redexgen/X/UK;->A05:J

    .end local v0    # "w":Lcom/facebook/ads/redexgen/X/UK;
    .local v24, "w":Lcom/facebook/ads/redexgen/X/UK;
    move-wide/from16 v29, v9

    move/from16 v31, v15

    move/from16 v32, v0

    move-wide/from16 v33, v7

    move-wide/from16 v22, v1

    move/from16 v24, v18

    move/from16 v25, v17

    move-object/from16 v26, v16

    move-wide/from16 v27, v11

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-wide/from16 v18, v5

    move-wide/from16 v20, v3

    invoke-virtual/range {v14 .. v34}, Lcom/facebook/ads/redexgen/X/UK;->A07(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Ug;Ljava/lang/Object;JJJZZLcom/facebook/ads/redexgen/X/Uk;JJIIJ)Lcom/facebook/ads/redexgen/X/UK;

    .line 28646
    .end local v24    # "w":Lcom/facebook/ads/redexgen/X/UK;
    .restart local v0    # "w":Lcom/facebook/ads/redexgen/X/UK;
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/UK;->A0F:Z

    iput-boolean v0, v14, Lcom/facebook/ads/redexgen/X/UK;->A0F:Z

    .line 28647
    return-object v14
.end method

.method public final A0M(I)Ljava/lang/Object;
    .registers 3

    .line 28648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C9L (com.facebook.ads.redexgen.X.9L)
.class public final Lcom/facebook/ads/redexgen/X/9L;
.super Lcom/facebook/ads/androidx/media3/common/Timeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28649
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()I
    .registers 2

    .line 28650
    const/4 v0, 0x0

    return v0
.end method

.method public final A07()I
    .registers 2

    .line 28651
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A(Ljava/lang/Object;)I
    .registers 3

    .line 28652
    const/4 v0, -0x1

    return v0
.end method

.method public final A0I(ILcom/facebook/ads/redexgen/X/UM;Z)Lcom/facebook/ads/redexgen/X/UM;
    .registers 5

    .line 28653
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final A0L(ILcom/facebook/ads/redexgen/X/UK;J)Lcom/facebook/ads/redexgen/X/UK;
    .registers 6

    .line 28654
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final A0M(I)Ljava/lang/Object;
    .registers 3

    .line 28655
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.UP (com.facebook.ads.redexgen.X.UP)
.class public final synthetic Lcom/facebook/ads/redexgen/X/UP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Js;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 73383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7F(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/Jt;
    .registers 3

    .line 73384
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03(Landroid/os/Bundle;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method
