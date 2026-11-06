###### Class ads_mobile_sdk.ba3 (ads_mobile_sdk.ba3)
.class public final Lads_mobile_sdk/ba3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private evictionReason_:I

.field private requestAgent_:Ljava/lang/String;

.field private requestId_:Ljava/lang/String;

.field private scarRequestType_:I


# direct methods
.method public static bridge synthetic -$$Nest$fputevictionReason_(Lads_mobile_sdk/ba3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ba3;->evictionReason_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputscarRequestType_(Lads_mobile_sdk/ba3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ba3;->scarRequestType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ba3;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ba3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ba3;

    invoke-direct {v0}, Lads_mobile_sdk/ba3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ba3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

    .line 5
    const-class v1, Lads_mobile_sdk/ba3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ba3;->requestId_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lads_mobile_sdk/ba3;->requestAgent_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/z93;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ba3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/z93;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/y93;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_38

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_19
    const-class p1, Lads_mobile_sdk/ba3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 25
    :cond_20
    sget-object p1, Lads_mobile_sdk/ba3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

    return-object p1

    .line 26
    :cond_23
    const-string p1, "scarRequestType_"

    const-string p2, "requestAgent_"

    const-string p3, "evictionReason_"

    const-string v0, "requestId_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 35
    sget-object p2, Lads_mobile_sdk/ba3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ba3;

    const-string p3, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\u000c\u0004\u0208"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_38
    new-instance p1, Lads_mobile_sdk/z93;

    invoke-direct {p1}, Lads_mobile_sdk/z93;-><init>()V

    return-object p1

    .line 37
    :cond_3e
    new-instance p1, Lads_mobile_sdk/ba3;

    invoke-direct {p1}, Lads_mobile_sdk/ba3;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/ba3;->requestAgent_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/ba3;->requestId_:Ljava/lang/String;

    return-void
.end method
