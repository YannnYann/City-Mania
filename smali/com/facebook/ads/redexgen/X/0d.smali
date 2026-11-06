###### Class com.facebook.ads.redexgen.X.C12370d (com.facebook.ads.redexgen.X.0d)
.class public final Lcom/facebook/ads/redexgen/X/0d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/12;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2X;,
        Lcom/facebook/ads/redexgen/X/2W;,
        Lcom/facebook/ads/redexgen/X/2V;,
        Lcom/facebook/ads/redexgen/X/2U;,
        Lcom/facebook/ads/redexgen/X/2S;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewpointSnapshotReducerJv.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewpointSnapshotReducerJv.kt\ncom/instagram/common/viewpoint/core/ViewpointSnapshotReducerJv\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,617:1\n382#2,7:618\n1740#3,3:625\n1#4:628\n*S KotlinDebug\n*F\n+ 1 ViewpointSnapshotReducerJv.kt\ncom/instagram/common/viewpoint/core/ViewpointSnapshotReducerJv\n*L\n209#1:618,7\n213#1:625,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/2X;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/2i;

.field public final A02:Lcom/facebook/ads/redexgen/X/2h;

.field public final A03:Lcom/facebook/ads/redexgen/X/2U;

.field public final A04:Lcom/facebook/ads/redexgen/X/2U;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/2S;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z

.field public final A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "okBgSYhQGmV0QyU32992deBLR6XrdaZQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZDdZ5rthnspWTI3gzSJHBR7aYCyAxUsq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EsXM2pc2I6J3hYC1V9OQRTCtALa8wmqB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DKA0ex9266tXplnV6PUb8C0vdYHWYjG4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tBgdKBpc94v7LWesC8aTGIaQqZdJYwjy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iZindrm9v6DBRttH7DMzAa7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d9237vu9oQoOcpvZwewcjFUDz74P7MIA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0d;->A02()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2X;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2X;-><init>(Lcom/facebook/ads/redexgen/X/1i;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0d;->A0F:Lcom/facebook/ads/redexgen/X/2X;

    .line 12
    const-class v0, Lcom/facebook/ads/redexgen/X/0d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A08(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/0d;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2h;ZZZZZ)V
    .registers 9

    .line 3989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3990
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0d;->A02:Lcom/facebook/ads/redexgen/X/2h;

    .line 3991
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/0d;->A0A:Z

    .line 3992
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/0d;->A08:Z

    .line 3993
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/0d;->A0B:Z

    .line 3994
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/0d;->A0C:Z

    .line 3995
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/0d;->A09:Z

    .line 3996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    .line 3997
    new-instance v0, Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2U;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    .line 3998
    new-instance v0, Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2U;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    .line 3999
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    .line 4000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A06:Ljava/util/Map;

    .line 4001
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2h;ZZZZZILcom/facebook/ads/redexgen/X/1i;)V
    .registers 16

    .line 4002
    move v5, p5

    move v4, p4

    move v3, p3

    move v2, p2

    and-int/lit8 v0, p7, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    .line 4003
    const/4 v2, 0x0

    .line 4004
    :cond_a
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_f

    .line 4005
    const/4 v3, 0x0

    .line 4006
    :cond_f
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_14

    .line 4007
    const/4 v4, 0x0

    .line 4008
    :cond_14
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_19

    .line 4009
    const/4 v5, 0x0

    .line 4010
    :cond_19
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_23

    :goto_1d
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/0d;-><init>(Lcom/facebook/ads/redexgen/X/2h;ZZZZZ)V

    .line 4011
    return-void

    .line 4012
    :cond_23
    move v6, p6

    goto :goto_1d
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/2l;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/2S;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/ads/redexgen/X/2S;"
        }
    .end annotation

    .line 4013
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2S;

    .line 4014
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A05(Lcom/facebook/ads/redexgen/X/2l;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4015
    if-nez v3, :cond_4e

    .line 4016
    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A09:Lcom/facebook/ads/redexgen/X/2T;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0A()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/2T;->A00(J)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v3

    .line 4017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4018
    :cond_25
    :goto_25
    if-eqz v3, :cond_4d

    .line 4019
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4020
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4022
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2S;->A04()Lcom/facebook/ads/redexgen/X/2W;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/2W;->A04(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4023
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0d;->A07(Lcom/facebook/ads/redexgen/X/0d;Lcom/facebook/ads/redexgen/X/2S;ZILjava/lang/Object;)V

    .line 4024
    :cond_4d
    return-object v3

    .line 4025
    :cond_4e
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A05:Lcom/facebook/ads/redexgen/X/2a;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2S;->A0B(Lcom/facebook/ads/redexgen/X/2a;)V

    goto :goto_25
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0d;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/0d;->A0D:[B

    return-void

    :array_a
    .array-data 1
        0x1at
        0x18t
        0x9t
        0x2et
        0x14t
        0x10t
        0xdt
        0x11t
        0x18t
        0x33t
        0x1ct
        0x10t
        0x18t
        0x55t
        0x53t
        0x53t
        0x53t
        0x54t
        0x7ft
        0x7dt
        0x6ct
        0x4et
        0x71t
        0x6bt
        0x71t
        0x7at
        0x74t
        0x7dt
        0x48t
        0x7dt
        0x6at
        0x7bt
        0x7dt
        0x76t
        0x6ct
        0x79t
        0x7ft
        0x7dt
        0x38t
        0x7bt
        0x79t
        0x74t
        0x74t
        0x7dt
        0x7ct
        0x38t
        0x77t
        0x76t
        0x38t
        0x6dt
        0x76t
        0x75t
        0x7dt
        0x79t
        0x6bt
        0x6dt
        0x6at
        0x7dt
        0x7ct
        0x38t
        0x68t
        0x79t
        0x6at
        0x7dt
        0x76t
        0x6ct
        0x38t
        0x6et
        0x71t
        0x7dt
        0x6ft
        0x68t
        0x77t
        0x71t
        0x76t
        0x6ct
        0x22t
        0x38t
        0x36t
        0x3dt
        0x3et
        0x33t
        0x30t
        0x3dt
        0x3t
        0x34t
        0x32t
        0x25t
        0x69t
        0x62t
        0x61t
        0x6ct
        0x6ft
        0x62t
        0x58t
        0x67t
        0x7dt
        0x67t
        0x6ct
        0x62t
        0x6bt
        0x5ct
        0x6bt
        0x6dt
        0x7at
        0x40t
        0x4bt
        0x59t
        0x7dt
        0x4dt
        0x4ft
        0x40t
        0x16t
        0xdt
        0x14t
        0x14t
        0x58t
        0xet
        0x11t
        0x1dt
        0xft
        0x58t
        0x8t
        0xat
        0x17t
        0x8t
        0x1dt
        0xat
        0xct
        0x1t
        0x58t
        0x1et
        0x17t
        0xat
        0x58t
        0xat
        0x1dt
        0x15t
        0x17t
        0xet
        0x1dt
        0x1ct
        0x58t
        0x11t
        0xct
        0x1dt
        0x15t
        0x58t
        0x7ct
        0x66t
        0x67t
        0x41t
        0x76t
        0x70t
        0x67t
        0x52t
        0x45t
        0x47t
        0x49t
        0x53t
        0x54t
        0x45t
        0x52t
        0x45t
        0x44t
        0x63t
        0x48t
        0x49t
        0x4ct
        0x44t
        0x69t
        0x4et
        0x54t
        0x45t
        0x52t
        0x4et
        0x41t
        0x4ct
        0x6bt
        0x45t
        0x59t
        0x53t
        0x62t
        0x59t
        0x70t
        0x41t
        0x52t
        0x45t
        0x4et
        0x54t
        0x3bt
        0x27t
        0x2et
        0x3ct
        0x1at
        0x2dt
        0x38t
        0x27t
        0x3at
        0x3ct
        0x62t
        0x7dt
        0x71t
        0x63t
        0x64t
        0x7bt
        0x7dt
        0x7at
        0x60t
        0x50t
        0x75t
        0x60t
        0x75t
        0x60t
        0x7ft
        0x73t
        0x61t
        0x66t
        0x79t
        0x64t
        0x62t
        0x44t
        0x73t
        0x75t
        0x62t
        0x65t
    .end array-data
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/2l;Lcom/facebook/ads/redexgen/X/2l;Lcom/facebook/ads/redexgen/X/2S;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;",
            "Lcom/facebook/ads/redexgen/X/2S;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 4026
    move-object v4, p0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/0d;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 4027
    .local v2, "registeredChildInternalKeys":Ljava/util/Set;
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d2

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "s8VhNokbqltQRTQnsEfyybb2mXQFYXw5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mw2ehwyovZcSjlYUCROlvuH9NDPtYudb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_45

    :cond_36
    const/4 v0, 0x1

    :goto_37
    const/4 v5, 0x0

    if-eqz v0, :cond_47

    .line 4028
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/2S;->A08()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4029
    invoke-virtual {p3, v5}, Lcom/facebook/ads/redexgen/X/2S;->A0D(Ljava/lang/Long;)V

    .line 4030
    return-void

    .line 4031
    :cond_45
    const/4 v0, 0x0

    goto :goto_37

    .line 4032
    :cond_47
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/2S;->A08()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4033
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    .line 4034
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 4035
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/2S;->A08()Ljava/util/Map;

    move-result-object v2

    .line 4036
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    .line 4037
    .local v4, "$this$getOrPut$iv":Ljava/util/Map;
    .local p1, "key$iv":Ljava/lang/Object;
    .local p2, "$i$f$getOrPut":I
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4038
    .local p3, "value$iv":Ljava/lang/Object;
    if-nez v0, :cond_69

    .line 4039
    .local p4, "$i$a$-getOrPut-ViewpointSnapshotReducerJv$updateParentFullViewState$1":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/2W;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2W;-><init>()V

    .line 4040
    .end local p4    # "$i$a$-getOrPut-ViewpointSnapshotReducerJv$updateParentFullViewState$1":I
    .local p4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4041
    .end local p4    # "answer$iv":Ljava/lang/Object;
    .end local v4    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local p1    # "key$iv":Ljava/lang/Object;
    .end local p2    # "$i$f$getOrPut":I
    .end local p3    # "value$iv":Ljava/lang/Object;
    :cond_69
    check-cast v0, Lcom/facebook/ads/redexgen/X/2W;

    .line 4042
    invoke-virtual {v0, p4, p5}, Lcom/facebook/ads/redexgen/X/2W;->A04(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4043
    check-cast v6, Ljava/lang/Iterable;

    .line 4044
    .local p2, "$this$all$iv":Ljava/lang/Iterable;
    .local p3, "$i$f$all":I
    instance-of v0, v6, Ljava/util/Collection;

    if-eqz v0, :cond_88

    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x1

    .line 4045
    .end local p2    # "$this$all$iv":Ljava/lang/Iterable;
    .end local p3    # "$i$f$all":I
    :goto_7e
    if-eqz v0, :cond_84

    .line 4046
    invoke-direct {v4, p3, v3}, Lcom/facebook/ads/redexgen/X/0d;->A06(Lcom/facebook/ads/redexgen/X/2S;Z)V

    .line 4047
    :goto_83
    return-void

    .line 4048
    :cond_84
    invoke-virtual {p3, v5}, Lcom/facebook/ads/redexgen/X/2S;->A0D(Ljava/lang/Long;)V

    goto :goto_83

    .line 4049
    :cond_88
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local p5, "element$iv":Ljava/lang/Object;
    check-cast v1, Ljava/lang/String;

    .line 4050
    .local p6, "childInternalKey":Ljava/lang/String;
    .local p7, "$i$a$-all-ViewpointSnapshotReducerJv$updateParentFullViewState$2":I
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/2S;->A08()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2W;

    .line 4051
    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2W;->A06()Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d2

    .line 4052
    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "D5TVMH4lAih8aapWFFHd2ylae5LlQ4YN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "lFvZbZ8NbaQtB0OKaMpwXE9CvNszffld"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_ce

    const/4 v0, 0x1

    .line 4053
    .end local p6
    .end local p7
    :goto_ca
    if-nez v0, :cond_8c

    const/4 v0, 0x0

    goto :goto_7e

    .line 4054
    :cond_ce
    const/4 v0, 0x0

    goto :goto_ca

    .line 4055
    .end local p5    # "element$iv":Ljava/lang/Object;
    :cond_d0
    const/4 v0, 0x1

    goto :goto_7e

    :cond_d2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/2U;)V
    .registers 8

    .line 4056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2U;->A03()Ljava/util/Collection;

    move-result-object v1

    .line 4057
    .local v0, "removedItems":Ljava/util/Collection;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/14;->A0C:Z

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4058
    return-void

    .line 4059
    :cond_f
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_ac

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "dCpYPRypiVOHB4OlkAqBqk8EySqTLE1k"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "r3sjB169HJX8vOmMpko73ANLsggTEmi2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/2l;

    .line 4060
    .local v2, "removed":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2S;

    .line 4061
    .local v3, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    if-eqz v1, :cond_7c

    .line 4062
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A04:Lcom/facebook/ads/redexgen/X/2a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A0B(Lcom/facebook/ads/redexgen/X/2a;)V

    .line 4063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4064
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2S;->A09()V

    .line 4065
    :cond_59
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4066
    sget-object v1, Lcom/facebook/ads/redexgen/X/0d;->A0F:Lcom/facebook/ads/redexgen/X/2X;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A0C:Z

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/2X;->A01(Lcom/facebook/ads/redexgen/X/2X;Lcom/facebook/ads/redexgen/X/2l;Z)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 4067
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2l;->A03(Lcom/facebook/ads/redexgen/X/2Z;)V

    .line 4068
    :cond_70
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A0A:Z

    if-eqz v0, :cond_13

    .line 4069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 4070
    :cond_7c
    const/4 v0, 0x0

    if-eqz v0, :cond_13

    .line 4071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x70

    const/16 v1, 0x24

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4072
    const/16 v2, 0xbe

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4073
    .end local v2    # "removed":Lcom/facebook/ads/redexgen/X/2l;
    .end local v3    # "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    :cond_ab
    return-void

    :cond_ac
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/2U;)V
    .registers 6

    .line 4074
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2U;->A02()Ljava/util/Collection;

    move-result-object v1

    .line 4075
    .local v0, "onScreenItems":Ljava/util/Collection;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/14;->A0C:Z

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4076
    return-void

    .line 4077
    :cond_f
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/2l;

    .line 4078
    .local v2, "visible":Lcom/facebook/ads/redexgen/X/2l;
    sget-object v1, Lcom/facebook/ads/redexgen/X/0d;->A0F:Lcom/facebook/ads/redexgen/X/2X;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A0B:Z

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/2X;->A01(Lcom/facebook/ads/redexgen/X/2X;Lcom/facebook/ads/redexgen/X/2l;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4079
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/2l;->A03(Lcom/facebook/ads/redexgen/X/2Z;)V

    .end local v2    # "visible":Lcom/facebook/ads/redexgen/X/2l;
    goto :goto_13

    .line 4080
    :cond_30
    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/2S;Z)V
    .registers 5

    .line 4081
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2S;->A06()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_13

    .line 4082
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0A()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A0D(Ljava/lang/Long;)V

    .line 4083
    :cond_13
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/0d;Lcom/facebook/ads/redexgen/X/2S;ZILjava/lang/Object;)V
    .registers 6

    .line 4084
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_c

    .line 4085
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2S;->A04()Lcom/facebook/ads/redexgen/X/2W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2W;->A06()Z

    move-result p2

    .line 4086
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0d;->A06(Lcom/facebook/ads/redexgen/X/2S;Z)V

    return-void
.end method

.method private final A08(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;)V"
        }
    .end annotation

    .line 4087
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2l;

    .line 4088
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/2S;

    .line 4089
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    if-eqz v2, :cond_4

    .line 4090
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/2l;->A04:Z

    if-eqz v0, :cond_4

    .line 4091
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/2l;->A01:Lcom/facebook/ads/redexgen/X/2a;

    if-eqz v0, :cond_4

    .line 4092
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/2l;->A01:Lcom/facebook/ads/redexgen/X/2a;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A04:Lcom/facebook/ads/redexgen/X/2a;

    if-eq v1, v0, :cond_4

    .line 4093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/0d;->A09(Lcom/facebook/ads/redexgen/X/2l;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 4094
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/2S;->A05()Lcom/facebook/ads/redexgen/X/2V;

    move-result-object v1

    .line 4095
    .local v3, "fullViewState":Lcom/facebook/ads/redexgen/X/2V;
    :goto_3a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4096
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/2S;->A09()V

    .line 4097
    :cond_43
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2l;->A03(Lcom/facebook/ads/redexgen/X/2Z;)V

    .line 4098
    if-eqz v1, :cond_4

    .local v4, "it":Lcom/facebook/ads/redexgen/X/2V;
    .local p0, "$i$a$-let-ViewpointSnapshotReducerJv$notifyUnregisteredExit$1":I
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/2S;->A0C(Lcom/facebook/ads/redexgen/X/2V;)V

    .end local v4    # "it":Lcom/facebook/ads/redexgen/X/2V;
    .end local p0    # "$i$a$-let-ViewpointSnapshotReducerJv$notifyUnregisteredExit$1":I
    goto :goto_4

    .line 4099
    :cond_4f
    const/4 v1, 0x0

    goto :goto_3a

    .line 4100
    :cond_51
    return-void
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/2l;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)Z"
        }
    .end annotation

    .line 4101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A06(Lcom/facebook/ads/redexgen/X/2l;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A06(Lcom/facebook/ads/redexgen/X/2l;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final A0A()J
    .registers 3

    .line 4103
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A00:J

    return-wide v0
.end method

.method public final A0B()Z
    .registers 2

    .line 4104
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A09:Z

    return v0
.end method

.method public final A4W(Lcom/facebook/ads/redexgen/X/2l;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    const/16 v2, 0xc8

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p1

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x58

    const/16 v1, 0x11

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    move-object v11, p2

    invoke-static {v11, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x4e

    const/16 v1, 0xa

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    invoke-direct {p0, v9, v11, v12}, Lcom/facebook/ads/redexgen/X/0d;->A00(Lcom/facebook/ads/redexgen/X/2l;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/2S;

    .line 4106
    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/2l;->A05:Lcom/facebook/ads/redexgen/X/2l;

    .line 4107
    .local v0, "parentViewpointData":Lcom/facebook/ads/redexgen/X/2l;
    sget-object v0, Lcom/facebook/ads/redexgen/X/2l;->A0C:Lcom/facebook/ads/redexgen/X/2l;

    if-eq v8, v0, :cond_12b

    if-eqz v8, :cond_12b

    .line 4108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/2U;->A05(Lcom/facebook/ads/redexgen/X/2l;)Z

    move-result v2

    .line 4109
    .local v7, "isFirstTimeSeenThisPass":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/2S;

    .line 4110
    .local v1, "parentViewProperties":Lcom/facebook/ads/redexgen/X/2S;
    if-eqz v2, :cond_cd

    .line 4111
    if-eqz v10, :cond_b2

    .line 4112
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10f

    .line 4113
    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "ThdFmDLD2og3MtO6vZtdp594SLTHelFJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kyKuH54tu6FztwQgD6qcMybB37t8iKu5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A08:Z

    if-eqz v0, :cond_7a

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2l;->A04()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4114
    :cond_7a
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A05:Lcom/facebook/ads/redexgen/X/2a;

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/2S;->A0B(Lcom/facebook/ads/redexgen/X/2a;)V

    .line 4115
    :cond_7f
    :goto_7f
    if-eqz p4, :cond_af

    .line 4116
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v7

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    iget v4, v12, Landroid/graphics/Rect;->right:I

    .line 4117
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_109

    .line 4118
    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "LAtwwYb2Cx3kiXSlxsLQlbz81NiNJWgq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "V0gF9PVnhrlrGgQG7idfNHnYkxfb2DzZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v7, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4119
    .end local v1    # "parentViewProperties":Lcom/facebook/ads/redexgen/X/2S;
    .local v8, "parentViewProperties":Lcom/facebook/ads/redexgen/X/2S;
    :cond_af
    :goto_af
    if-nez v10, :cond_115

    .line 4120
    return-void

    .line 4121
    :cond_b2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A09:Lcom/facebook/ads/redexgen/X/2T;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0A()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/2T;->A00(J)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v10

    .line 4122
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4123
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 4124
    :cond_cd
    if-eqz p4, :cond_af

    if-eqz v10, :cond_af

    .line 4125
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v5

    .line 4126
    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4127
    iget v1, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4128
    iget v1, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4129
    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4130
    invoke-virtual {v5, v4, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_af

    :cond_109
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4131
    :cond_115
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4132
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 4133
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/0d;->A03(Lcom/facebook/ads/redexgen/X/2l;Lcom/facebook/ads/redexgen/X/2l;Lcom/facebook/ads/redexgen/X/2S;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4134
    .end local v7    # "isFirstTimeSeenThisPass":Z
    .end local v8    # "parentViewProperties":Lcom/facebook/ads/redexgen/X/2S;
    :cond_12b
    return-void
.end method

.method public final A58(JLjava/util/List;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v2, 0xd5

    const/16 v1, 0xd

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x9b

    const/16 v1, 0x23

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4135
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/0d;->A00:J

    .line 4136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A06:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4138
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->A0B()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 4139
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_78

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "hW9Ud0kH0MYddiX1prwZ5JVxrdIYY7d5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "I05a0JEVfDMyg3gXXEVUvzj1iKGKY3Wx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v2, "parentInternalKey":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 4140
    .local v1, "childInternalKeys":Ljava/util/Set;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A06:Ljava/util/Map;

    check-cast v2, Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_78
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4141
    .end local v1    # "childInternalKeys":Ljava/util/Set;
    .end local v2    # "parentInternalKey":Ljava/lang/String;
    :cond_7e
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/14;->A0C:Z

    if-eqz v0, :cond_141

    .line 4142
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a8

    .line 4143
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4144
    .local v1, "viewportRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 4145
    .end local v1    # "viewportRect":Landroid/graphics/Rect;
    :cond_a8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A03()Ljava/util/Collection;

    move-result-object v1

    .line 4146
    .local v0, "removedItems":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f3

    .line 4147
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_ed

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "hXFlcaV9BODLzOEo9OETNHYcAQ59ToNe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "XICJTt8wkIS85lWtdutLjy5IJqe83DnJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2l;

    .line 4148
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    :cond_ed
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4149
    .end local v2    # "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    :cond_f3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A03()Ljava/util/Collection;

    move-result-object v1

    .line 4150
    .local v1, "parentRemovedItems":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_119

    .line 4151
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2l;

    .line 4152
    .local v3, "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_105

    .line 4153
    .end local v3    # "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    :cond_119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1da

    .line 4154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2S;

    .line 4155
    .local v3, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .end local v3    # "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    goto :goto_12d

    .line 4156
    .end local v0    # "removedItems":Ljava/util/Collection;
    .end local v1    # "parentRemovedItems":Ljava/util/Collection;
    :cond_141
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_145
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4157
    .local v1, "viewportRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_145

    .line 4158
    .end local v1    # "viewportRect":Landroid/graphics/Rect;
    :cond_15c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A03()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_166
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2l;

    .line 4159
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_166

    .line 4160
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    :cond_17a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A03()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_184
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2l;

    .line 4161
    .restart local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1b6

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "Z9H7qhO0WKEzok23ZzBA8pKB3E4aUNIB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "l84XffDRBag9hyBmBmqNdi5J0zXdj8r8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_184

    :cond_1b6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4162
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/2l;
    :cond_1bc
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2S;

    .line 4163
    .local v1, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .end local v1    # "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    goto :goto_1c6

    .line 4164
    :cond_1da
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A04()V

    .line 4165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A04()V

    .line 4166
    return-void
.end method

.method public final A6y(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;)V"
        }
    .end annotation

    .line 4167
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_11

    .line 4168
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0d;->A08(Ljava/util/List;)V

    .line 4169
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0d;->A05(Lcom/facebook/ads/redexgen/X/2U;)V

    .line 4170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0d;->A04(Lcom/facebook/ads/redexgen/X/2U;)V

    .line 4171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0d;->A05(Lcom/facebook/ads/redexgen/X/2U;)V

    .line 4172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0d;->A04(Lcom/facebook/ads/redexgen/X/2U;)V

    .line 4173
    const/4 v0, 0x0

    if-eqz v0, :cond_53

    .line 4174
    new-instance v1, Lcom/facebook/ads/redexgen/X/2P;

    .line 4175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0d;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4176
    move-object v3, p0

    check-cast v3, Lcom/facebook/ads/redexgen/X/2Z;

    .line 4177
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    .line 4178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A02()Ljava/util/Collection;

    move-result-object v5

    .line 4179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A02()Ljava/util/Collection;

    move-result-object v6

    .line 4180
    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2Z;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4181
    const/16 v2, 0x69

    const/4 v1, 0x7

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4182
    :cond_51
    const/4 v0, 0x0

    goto :goto_c

    .line 4183
    :cond_53
    return-void
.end method

.method public final A8o(Lcom/facebook/ads/redexgen/X/2l;Landroid/graphics/Rect;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const/16 v2, 0xc8

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x94

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4185
    return-void

    .line 4186
    :cond_24
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 4187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1h;->A06(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/ads/redexgen/X/2S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4188
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_3c

    .line 4189
    :cond_4c
    return-void
.end method

.method public final AA7(Lcom/facebook/ads/redexgen/X/2l;)Lcom/facebook/ads/redexgen/X/2a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)",
            "Lcom/facebook/ads/redexgen/X/2a;"
        }
    .end annotation

    const/16 v2, 0xc8

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4191
    sget-object v3, Lcom/facebook/ads/redexgen/X/2a;->A03:Lcom/facebook/ads/redexgen/X/2a;

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_85

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "30nawOYzj1b3MgtvDNEQ2qq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 4192
    :cond_3a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1h;->A06(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/ads/redexgen/X/2S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A03()Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v2

    .line 4193
    .local v0, "viewState":Lcom/facebook/ads/redexgen/X/2a;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A04:Z

    if-eqz v0, :cond_65

    .line 4194
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/2m;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A04:Lcom/facebook/ads/redexgen/X/2m;

    if-ne v1, v0, :cond_58

    .line 4195
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A04:Lcom/facebook/ads/redexgen/X/2a;

    .line 4196
    return-object v0

    .line 4197
    :cond_58
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A05:Lcom/facebook/ads/redexgen/X/2a;

    if-ne v2, v0, :cond_a9

    .line 4198
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2l;->A04()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 4199
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A03:Lcom/facebook/ads/redexgen/X/2a;

    .line 4200
    return-object v0

    .line 4201
    :cond_65
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A0C:Z

    if-eqz v0, :cond_98

    .line 4202
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/2m;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A04:Lcom/facebook/ads/redexgen/X/2m;

    if-ne v1, v0, :cond_98

    .line 4203
    sget-object v3, Lcom/facebook/ads/redexgen/X/2a;->A04:Lcom/facebook/ads/redexgen/X/2a;

    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8b

    :cond_85
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4204
    :cond_8b
    sget-object v2, Lcom/facebook/ads/redexgen/X/0d;->A0E:[Ljava/lang/String;

    const-string v1, "wX1d9i5r47CMqOssFBfxD0DZEST0WQ39"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "DaZ7QptbZSiyzTGS0lhH88JCrmqbW12u"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 4205
    :cond_98
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A0B:Z

    if-eqz v0, :cond_a9

    .line 4206
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A05:Lcom/facebook/ads/redexgen/X/2a;

    if-ne v2, v0, :cond_a9

    .line 4207
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2l;->A04()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 4208
    sget-object v0, Lcom/facebook/ads/redexgen/X/2a;->A03:Lcom/facebook/ads/redexgen/X/2a;

    .line 4209
    return-object v0

    .line 4210
    :cond_a9
    return-object v2
.end method

.method public final AAA(Landroid/graphics/Rect;)V
    .registers 5
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const/16 v2, 0x94

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4211
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4213
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_15

    .line 4214
    :cond_25
    return-void
.end method

.method public final AAB(Lcom/facebook/ads/redexgen/X/2l;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)F"
        }
    .end annotation

    const/16 v2, 0xc8

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4215
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0d;->A07:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/2S;

    .line 4216
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/2S;
    const/4 v3, 0x0

    if-eqz v5, :cond_8d

    .line 4217
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/2S;->A02()Landroid/graphics/Rect;

    move-result-object v2

    .line 4218
    .local v2, "rect":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_30

    .line 4219
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_30

    .line 4220
    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_30

    .line 4221
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_60

    .line 4222
    .end local v1
    .end local v3
    :cond_30
    const/4 v0, 0x0

    if-eqz v0, :cond_5f

    .line 4223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x3c

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4224
    const/16 v2, 0xbe

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0d;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4225
    :cond_5f
    return v3

    .line 4226
    :cond_60
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v4, v0

    .line 4227
    .local v1, "totalPossibleArea":I
    const/4 v3, 0x0

    .line 4228
    .local v3, "totalVisibleArea":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/2S;->A07()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4229
    .local v5, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    .end local v5    # "visibleRect":Landroid/graphics/Rect;
    goto :goto_72

    .line 4230
    :cond_89
    int-to-float v1, v3

    int-to-float v0, v4

    div-float/2addr v1, v0

    return v1

    .line 4231
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_8d
    return v3
.end method

.method public final ALC(Lcom/facebook/ads/redexgen/X/2i;)V
    .registers 2

    .line 4232
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0d;->A01:Lcom/facebook/ads/redexgen/X/2i;

    .line 4233
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C2P (com.facebook.ads.redexgen.X.2P)
.class public final Lcom/facebook/ads/redexgen/X/2P;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2Z;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2P;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2Z;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/2Z;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x28

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x23

    const/4 v1, 0x5

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/16 v1, 0xd

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A01:Ljava/lang/String;

    .line 5224
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2P;->A00:Lcom/facebook/ads/redexgen/X/2Z;

    .line 5225
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2P;->A02:Ljava/util/Collection;

    .line 5226
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2P;->A03:Ljava/util/Collection;

    .line 5227
    check-cast p3, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A04:Ljava/util/List;

    .line 5228
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

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

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A05:[B

    return-void

    :array_a
    .array-data 1
        0x12t
        0xct
        0x20t
        0x38t
        0x37t
        0x1ct
        0x2ct
        0x3bt
        0x2et
        0x2et
        0x37t
        0x12t
        0x3dt
        0x2et
        0x36t
        0x3ct
        0x4dt
        0x3et
        0x4ft
        0x42t
        0x4bt
        0x51t
        0x2ct
        0x4bt
        0x30t
        0x40t
        0x4ft
        0x42t
        0x42t
        0x4bt
        0x26t
        0x51t
        0x42t
        0x4at
        0x50t
        0x11t
        0x4t
        0x2t
        0x13t
        0x12t
        0xdt
        0x8t
        -0x5t
        0xat
        0xdt
        0x2t
        0x9t
        0xet
    .end array-data
.end method
