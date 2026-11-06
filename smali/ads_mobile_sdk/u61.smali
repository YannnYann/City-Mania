###### Class ads_mobile_sdk.u61 (ads_mobile_sdk.u61)
.class public final Lads_mobile_sdk/u61;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private action_:I

.field private message_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fputaction_(Lads_mobile_sdk/u61;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/u61;->action_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/u61;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/u61;->DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/u61;

    invoke-direct {v0}, Lads_mobile_sdk/u61;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/u61;->DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

    .line 5
    const-class v1, Lads_mobile_sdk/u61;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/u61;->message_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/s61;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u61;->DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/s61;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/r61;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_34

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_19
    const-class p1, Lads_mobile_sdk/u61;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_20
    sget-object p1, Lads_mobile_sdk/u61;->DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

    return-object p1

    .line 24
    :cond_23
    const-string p1, "action_"

    const-string p2, "message_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 31
    sget-object p2, Lads_mobile_sdk/u61;->DEFAULT_INSTANCE:Lads_mobile_sdk/u61;

    const-string p3, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0208"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_34
    new-instance p1, Lads_mobile_sdk/s61;

    invoke-direct {p1}, Lads_mobile_sdk/s61;-><init>()V

    return-object p1

    .line 33
    :cond_3a
    new-instance p1, Lads_mobile_sdk/u61;

    invoke-direct {p1}, Lads_mobile_sdk/u61;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lads_mobile_sdk/u61;->message_:Ljava/lang/String;

    return-void
.end method
