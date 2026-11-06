###### Class ads_mobile_sdk.nm2 (ads_mobile_sdk.nm2)
.class public final Lads_mobile_sdk/nm2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field private bitField0_:I

.field private cacheHit_:Z

.field private cacheMissReason_:I

.field private isFromPreviousSession_:Z

.field private numAdsInCachedResponse_:I

.field private numRequestedAds_:I

.field private timeInCacheMs_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/nm2;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/nm2;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputcacheHit_(Lads_mobile_sdk/nm2;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/nm2;->cacheHit_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputcacheMissReason_(Lads_mobile_sdk/nm2;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/nm2;->cacheMissReason_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisFromPreviousSession_(Lads_mobile_sdk/nm2;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/nm2;->isFromPreviousSession_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnumAdsInCachedResponse_(Lads_mobile_sdk/nm2;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/nm2;->numAdsInCachedResponse_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnumRequestedAds_(Lads_mobile_sdk/nm2;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/nm2;->numRequestedAds_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtimeInCacheMs_(Lads_mobile_sdk/nm2;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/nm2;->timeInCacheMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/nm2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/nm2;->DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/nm2;

    invoke-direct {v0}, Lads_mobile_sdk/nm2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/nm2;->DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

    .line 5
    const-class v1, Lads_mobile_sdk/nm2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method

.method public static v()Lads_mobile_sdk/lm2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/nm2;->DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/lm2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    sget-object p2, Lads_mobile_sdk/km2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_44

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_19
    const-class p1, Lads_mobile_sdk/nm2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 29
    :cond_20
    sget-object p1, Lads_mobile_sdk/nm2;->DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

    return-object p1

    .line 30
    :cond_23
    const-string v5, "numAdsInCachedResponse_"

    const-string v6, "timeInCacheMs_"

    const-string v0, "bitField0_"

    const-string v1, "cacheHit_"

    const-string v2, "isFromPreviousSession_"

    const-string v3, "cacheMissReason_"

    const-string v4, "numRequestedAds_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    sget-object p2, Lads_mobile_sdk/nm2;->DEFAULT_INSTANCE:Lads_mobile_sdk/nm2;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u100c\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1002\u0005"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_3e
    new-instance p1, Lads_mobile_sdk/lm2;

    invoke-direct {p1}, Lads_mobile_sdk/lm2;-><init>()V

    return-object p1

    .line 45
    :cond_44
    new-instance p1, Lads_mobile_sdk/nm2;

    invoke-direct {p1}, Lads_mobile_sdk/nm2;-><init>()V

    return-object p1
.end method
