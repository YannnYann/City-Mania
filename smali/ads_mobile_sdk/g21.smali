###### Class ads_mobile_sdk.g21 (ads_mobile_sdk.g21)
.class public final Lads_mobile_sdk/g21;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientPingMetadata_:Lads_mobile_sdk/nx;

.field private payloads_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/f21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fputpayloads_(Lads_mobile_sdk/g21;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/g21;->payloads_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/g21;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/g21;->DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/g21;

    invoke-direct {v0}, Lads_mobile_sdk/g21;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/g21;->DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

    .line 5
    const-class v1, Lads_mobile_sdk/g21;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 26
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/g21;->payloads_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static v()Lads_mobile_sdk/d21;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/g21;->DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/d21;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 12
    sget-object p2, Lads_mobile_sdk/c21;->a:[I

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

    .line 35
    :cond_19
    const-class p1, Lads_mobile_sdk/g21;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 36
    :cond_20
    sget-object p1, Lads_mobile_sdk/g21;->DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

    return-object p1

    .line 37
    :cond_23
    const-class p1, Lads_mobile_sdk/f21;

    const-string p2, "clientPingMetadata_"

    const-string p3, "bitField0_"

    const-string v0, "payloads_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 46
    sget-object p2, Lads_mobile_sdk/g21;->DEFAULT_INSTANCE:Lads_mobile_sdk/g21;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :cond_38
    new-instance p1, Lads_mobile_sdk/d21;

    invoke-direct {p1}, Lads_mobile_sdk/d21;-><init>()V

    return-object p1

    .line 48
    :cond_3e
    new-instance p1, Lads_mobile_sdk/g21;

    invoke-direct {p1}, Lads_mobile_sdk/g21;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f21;)V
    .registers 4

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/g21;->payloads_:Lads_mobile_sdk/yh1$f;

    .line 4
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/g21;->payloads_:Lads_mobile_sdk/yh1$f;

    .line 7
    :cond_11
    iget-object v0, p0, Lads_mobile_sdk/g21;->payloads_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lads_mobile_sdk/nx;)V
    .registers 2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/g21;->clientPingMetadata_:Lads_mobile_sdk/nx;

    .line 11
    iget p1, p0, Lads_mobile_sdk/g21;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/g21;->bitField0_:I

    return-void
.end method
