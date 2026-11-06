###### Class ads_mobile_sdk.hz3 (ads_mobile_sdk.hz3)
.class public final Lads_mobile_sdk/hz3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field private blockedStartupLocations_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxTimePerTaskInUiThreadMs_:J

.field private nonUiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalTimeInUiThreadMs_:J

.field private uiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/hz3;->nonUiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/hz3;->uiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmaxTimePerTaskInUiThreadMs_(Lads_mobile_sdk/hz3;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/hz3;->maxTimePerTaskInUiThreadMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/hz3;->nonUiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtotalTimeInUiThreadMs_(Lads_mobile_sdk/hz3;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/hz3;->totalTimeInUiThreadMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/hz3;->uiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hz3;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/hz3;->DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/hz3;

    invoke-direct {v0}, Lads_mobile_sdk/hz3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/hz3;->DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

    .line 5
    const-class v1, Lads_mobile_sdk/hz3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hz3;->blockedStartupLocations_:Lads_mobile_sdk/yh1$f;

    .line 21
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hz3;->nonUiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    .line 22
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hz3;->uiThreadBlockingStartupLocations_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static v()Lads_mobile_sdk/gz3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hz3;->DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gz3;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p2, Lads_mobile_sdk/fz3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_19
    const-class p1, Lads_mobile_sdk/hz3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_20
    sget-object p1, Lads_mobile_sdk/hz3;->DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

    return-object p1

    .line 27
    :cond_23
    const-string p1, "nonUiThreadBlockingStartupLocations_"

    const-string p2, "uiThreadBlockingStartupLocations_"

    const-string p3, "totalTimeInUiThreadMs_"

    const-string v0, "maxTimePerTaskInUiThreadMs_"

    const-string v1, "blockedStartupLocations_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 37
    sget-object p2, Lads_mobile_sdk/hz3;->DEFAULT_INSTANCE:Lads_mobile_sdk/hz3;

    const-string p3, "\u0004\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u0002\u0002\u0002\u0003\u021a\u0004\u021a\u0005\u021a"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3a
    new-instance p1, Lads_mobile_sdk/gz3;

    invoke-direct {p1}, Lads_mobile_sdk/gz3;-><init>()V

    return-object p1

    .line 39
    :cond_40
    new-instance p1, Lads_mobile_sdk/hz3;

    invoke-direct {p1}, Lads_mobile_sdk/hz3;-><init>()V

    return-object p1
.end method
