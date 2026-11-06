###### Class ads_mobile_sdk.hv (ads_mobile_sdk.hv)
.class public final Lads_mobile_sdk/hv;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8


# instance fields
.field private numPreloadedAds_:I

.field private numPreloaders_:I

.field private preloaderFormat_:I

.field private preloaderInFlight_:Z

.field private preloaderMaxBufferSize_:I

.field private preloaderNumAdsAvailable_:I

.field private preloaderPreloadId_:Ljava/lang/String;

.field private totalInflightAdLimit_:I


# direct methods
.method public static bridge synthetic -$$Nest$fputnumPreloadedAds_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->numPreloadedAds_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnumPreloaders_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->numPreloaders_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpreloaderFormat_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->preloaderFormat_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpreloaderInFlight_(Lads_mobile_sdk/hv;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/hv;->preloaderInFlight_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpreloaderMaxBufferSize_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->preloaderMaxBufferSize_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpreloaderNumAdsAvailable_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->preloaderNumAdsAvailable_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtotalInflightAdLimit_(Lads_mobile_sdk/hv;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/hv;->totalInflightAdLimit_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hv;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/hv;->DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/hv;

    invoke-direct {v0}, Lads_mobile_sdk/hv;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/hv;->DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

    .line 5
    const-class v1, Lads_mobile_sdk/hv;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/hv;->preloaderPreloadId_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/gv;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hv;->DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gv;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p2, Lads_mobile_sdk/fv;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_46

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

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
    const-class p1, Lads_mobile_sdk/hv;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 29
    :cond_20
    sget-object p1, Lads_mobile_sdk/hv;->DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

    return-object p1

    .line 30
    :cond_23
    const-string v6, "preloaderNumAdsAvailable_"

    const-string v7, "preloaderInFlight_"

    const-string v0, "totalInflightAdLimit_"

    const-string v1, "numPreloadedAds_"

    const-string v2, "numPreloaders_"

    const-string v3, "preloaderFormat_"

    const-string v4, "preloaderPreloadId_"

    const-string v5, "preloaderMaxBufferSize_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    sget-object p2, Lads_mobile_sdk/hv;->DEFAULT_INSTANCE:Lads_mobile_sdk/hv;

    const-string p3, "\u0004\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u000c\u0005\u0208\u0006\u0004\u0007\u0004\u0008\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_40
    new-instance p1, Lads_mobile_sdk/gv;

    invoke-direct {p1}, Lads_mobile_sdk/gv;-><init>()V

    return-object p1

    .line 45
    :cond_46
    new-instance p1, Lads_mobile_sdk/hv;

    invoke-direct {p1}, Lads_mobile_sdk/hv;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/hv;->preloaderPreloadId_:Ljava/lang/String;

    return-void
.end method
