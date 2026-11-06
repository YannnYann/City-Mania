###### Class ads_mobile_sdk.ts (ads_mobile_sdk.ts)
.class public final Lads_mobile_sdk/ts;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field private adapterClassName_:Ljava/lang/String;

.field private bitField0_:I

.field private platform_:Ljava/lang/String;

.field private serverParameters_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldCollectSignalsOnFullApp_:Z

.field private shouldGatherSignals_:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/ts;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/ts;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ts;->serverParameters_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/ts;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ts;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputserverParameters_(Lads_mobile_sdk/ts;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ts;->serverParameters_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputshouldCollectSignalsOnFullApp_(Lads_mobile_sdk/ts;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/ts;->shouldCollectSignalsOnFullApp_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputshouldGatherSignals_(Lads_mobile_sdk/ts;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/ts;->shouldGatherSignals_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ts;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ts;

    invoke-direct {v0}, Lads_mobile_sdk/ts;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    .line 5
    const-class v1, Lads_mobile_sdk/ts;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 255
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ts;->serverParameters_:Lads_mobile_sdk/ju1;

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ts;->adapterClassName_:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lads_mobile_sdk/ts;->platform_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/ts;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    return-object v0
.end method

.method public static y()Lads_mobile_sdk/ss;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ss;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    sget-object p2, Lads_mobile_sdk/rs;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_44

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_19
    const-class p1, Lads_mobile_sdk/ts;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 33
    :cond_20
    sget-object p1, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    return-object p1

    .line 34
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 42
    const-string p2, ""

    invoke-static {p1, p2, p1, p2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v6

    const-string v4, "platform_"

    const-string v5, "serverParameters_"

    const-string v0, "bitField0_"

    const-string v1, "adapterClassName_"

    const-string v2, "shouldGatherSignals_"

    const-string v3, "shouldCollectSignalsOnFullApp_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 51
    sget-object p2, Lads_mobile_sdk/ts;->DEFAULT_INSTANCE:Lads_mobile_sdk/ts;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0001\u0000\u0000\u0001\u1208\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1208\u0003\u00052"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_44
    new-instance p1, Lads_mobile_sdk/ss;

    invoke-direct {p1}, Lads_mobile_sdk/ss;-><init>()V

    return-object p1

    .line 53
    :cond_4a
    new-instance p1, Lads_mobile_sdk/ts;

    invoke-direct {p1}, Lads_mobile_sdk/ts;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ts;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/ts;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ts;->adapterClassName_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ts;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/ts;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ts;->platform_:Ljava/lang/String;

    return-void
.end method

.method public final w()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ts;->serverParameters_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lads_mobile_sdk/ts;->shouldCollectSignalsOnFullApp_:Z

    return v0
.end method
