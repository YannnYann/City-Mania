###### Class ads_mobile_sdk.gb (ads_mobile_sdk.gb)
.class public final Lads_mobile_sdk/gb;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

.field public static final c:I = 0x12


# instance fields
.field private adshieldMonitoringMessage_:Lads_mobile_sdk/xa;

.field private bitField0_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/gb;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/gb;->DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/gb;

    invoke-direct {v0}, Lads_mobile_sdk/gb;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/gb;->DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

    .line 5
    const-class v1, Lads_mobile_sdk/gb;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method

.method public static v()Lads_mobile_sdk/fb;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/gb;->DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fb;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 120
    sget-object p2, Lads_mobile_sdk/eb;->a:[I

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

    .line 140
    :cond_19
    const-class p1, Lads_mobile_sdk/gb;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 141
    :cond_20
    sget-object p1, Lads_mobile_sdk/gb;->DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

    return-object p1

    .line 142
    :cond_23
    const-string p1, "bitField0_"

    const-string p2, "adshieldMonitoringMessage_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 148
    sget-object p2, Lads_mobile_sdk/gb;->DEFAULT_INSTANCE:Lads_mobile_sdk/gb;

    const-string p3, "\u0004\u0001\u0000\u0001\u0012\u0012\u0001\u0000\u0000\u0000\u0012\u1009\u0000"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 149
    :cond_34
    new-instance p1, Lads_mobile_sdk/fb;

    invoke-direct {p1}, Lads_mobile_sdk/fb;-><init>()V

    return-object p1

    .line 150
    :cond_3a
    new-instance p1, Lads_mobile_sdk/gb;

    invoke-direct {p1}, Lads_mobile_sdk/gb;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/xa;)V
    .registers 2

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lads_mobile_sdk/gb;->adshieldMonitoringMessage_:Lads_mobile_sdk/xa;

    .line 119
    iget p1, p0, Lads_mobile_sdk/gb;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/gb;->bitField0_:I

    return-void
.end method
