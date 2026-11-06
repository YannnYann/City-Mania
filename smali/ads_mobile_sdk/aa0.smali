###### Class ads_mobile_sdk.aa0 (ads_mobile_sdk.aa0)
.class public final Lads_mobile_sdk/aa0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8


# instance fields
.field private appVerificationEnabled_:Z

.field private bitField0_:I

.field private clientName_:Ljava/lang/String;

.field private clientVersion_:Ljava/lang/String;

.field private googlePlayServicesVersion_:J

.field private isAsyncCheck_:Z

.field private isInstantApps_:Z

.field private updateApiListVersion_:Ljava/lang/String;

.field private urlApiType_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/aa0;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/aa0;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/aa0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/aa0;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisInstantApps_(Lads_mobile_sdk/aa0;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/aa0;->isInstantApps_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/aa0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/aa0;->DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/aa0;

    invoke-direct {v0}, Lads_mobile_sdk/aa0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/aa0;->DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

    .line 5
    const-class v1, Lads_mobile_sdk/aa0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53480
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 53481
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/aa0;->clientVersion_:Ljava/lang/String;

    .line 53482
    iput-object v0, p0, Lads_mobile_sdk/aa0;->clientName_:Ljava/lang/String;

    .line 53483
    iput-object v0, p0, Lads_mobile_sdk/aa0;->updateApiListVersion_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/z90;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/aa0;->DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/z90;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    sget-object p2, Lads_mobile_sdk/r70;->a:[I

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

    .line 31
    :cond_19
    const-class p1, Lads_mobile_sdk/aa0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 32
    :cond_20
    sget-object p1, Lads_mobile_sdk/aa0;->DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

    return-object p1

    .line 33
    :cond_23
    sget-object v5, Lads_mobile_sdk/ba0;->a:Lads_mobile_sdk/ba0;

    const-string v8, "isAsyncCheck_"

    const-string v9, "appVerificationEnabled_"

    const-string v0, "bitField0_"

    const-string v1, "clientVersion_"

    const-string v2, "googlePlayServicesVersion_"

    const-string v3, "isInstantApps_"

    const-string v4, "urlApiType_"

    const-string v6, "clientName_"

    const-string v7, "updateApiListVersion_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    sget-object p2, Lads_mobile_sdk/aa0;->DEFAULT_INSTANCE:Lads_mobile_sdk/aa0;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002\u0004\u180c\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1007\u0006\u0008\u1007\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_44
    new-instance p1, Lads_mobile_sdk/z90;

    invoke-direct {p1}, Lads_mobile_sdk/z90;-><init>()V

    return-object p1

    .line 45
    :cond_4a
    new-instance p1, Lads_mobile_sdk/aa0;

    invoke-direct {p1}, Lads_mobile_sdk/aa0;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/aa0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/aa0;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/aa0;->clientVersion_:Ljava/lang/String;

    return-void
.end method
