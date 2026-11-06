###### Class ads_mobile_sdk.vb2 (ads_mobile_sdk.vb2)
.class public final Lads_mobile_sdk/vb2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

.field public static final c:I = 0x1


# instance fields
.field private deviceOnline_:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputdeviceOnline_(Lads_mobile_sdk/vb2;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/vb2;->deviceOnline_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vb2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/vb2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/vb2;

    invoke-direct {v0}, Lads_mobile_sdk/vb2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/vb2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

    .line 5
    const-class v1, Lads_mobile_sdk/vb2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method

.method public static v()Lads_mobile_sdk/ub2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vb2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ub2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/tb2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_38

    const/4 p2, 0x2

    if-eq p1, p2, :cond_32

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_19
    const-class p1, Lads_mobile_sdk/vb2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 21
    :cond_20
    sget-object p1, Lads_mobile_sdk/vb2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

    return-object p1

    .line 22
    :cond_23
    const-string p1, "deviceOnline_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 27
    sget-object p2, Lads_mobile_sdk/vb2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vb2;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :cond_32
    new-instance p1, Lads_mobile_sdk/ub2;

    invoke-direct {p1}, Lads_mobile_sdk/ub2;-><init>()V

    return-object p1

    .line 29
    :cond_38
    new-instance p1, Lads_mobile_sdk/vb2;

    invoke-direct {p1}, Lads_mobile_sdk/vb2;-><init>()V

    return-object p1
.end method
