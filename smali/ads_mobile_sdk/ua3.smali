###### Class ads_mobile_sdk.ua3 (ads_mobile_sdk.ua3)
.class public final Lads_mobile_sdk/ua3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private cachedJseSdkCore_:Ljava/lang/String;

.field private cachedSdkCore_:Ljava/lang/String;

.field private jseLastUpdateTimeMs_:J

.field private lastUpdateTimeMs_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/ua3;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/ua3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputjseLastUpdateTimeMs_(Lads_mobile_sdk/ua3;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ua3;->jseLastUpdateTimeMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlastUpdateTimeMs_(Lads_mobile_sdk/ua3;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ua3;->lastUpdateTimeMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ua3;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ua3;

    invoke-direct {v0}, Lads_mobile_sdk/ua3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    .line 5
    const-class v1, Lads_mobile_sdk/ua3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ua3;->cachedSdkCore_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lads_mobile_sdk/ua3;->cachedJseSdkCore_:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/ua3;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/ua3;

    return-object p0
.end method

.method public static w()Lads_mobile_sdk/ua3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 2
    sget-object p2, Lads_mobile_sdk/sa3;->a:[I

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

    .line 26
    :cond_19
    const-class p1, Lads_mobile_sdk/ua3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_20
    sget-object p1, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    return-object p1

    .line 28
    :cond_23
    const-string p1, "cachedJseSdkCore_"

    const-string p2, "jseLastUpdateTimeMs_"

    const-string p3, "bitField0_"

    const-string v0, "cachedSdkCore_"

    const-string v1, "lastUpdateTimeMs_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 38
    sget-object p2, Lads_mobile_sdk/ua3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ua3;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1208\u0000\u0002\u1002\u0001\u0003\u1208\u0002\u0004\u1002\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_3a
    new-instance p1, Lads_mobile_sdk/ta3;

    invoke-direct {p1}, Lads_mobile_sdk/ta3;-><init>()V

    return-object p1

    .line 40
    :cond_40
    new-instance p1, Lads_mobile_sdk/ua3;

    invoke-direct {p1}, Lads_mobile_sdk/ua3;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ua3;->cachedJseSdkCore_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/ua3;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ua3;->cachedSdkCore_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/ua3;->cachedSdkCore_:Ljava/lang/String;

    return-object v0
.end method

.method public final x()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lads_mobile_sdk/ua3;->lastUpdateTimeMs_:J

    return-wide v0
.end method
