###### Class ads_mobile_sdk.k90 (ads_mobile_sdk.k90)
.class public final Lads_mobile_sdk/k90;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/k90;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private displayDurationSec_:J

.field private origin_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/k90;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/k90;->DEFAULT_INSTANCE:Lads_mobile_sdk/k90;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/k90;

    invoke-direct {v0}, Lads_mobile_sdk/k90;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/k90;->DEFAULT_INSTANCE:Lads_mobile_sdk/k90;

    .line 5
    const-class v1, Lads_mobile_sdk/k90;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 61096
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 61097
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/k90;->origin_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_36

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_19
    const-class p1, Lads_mobile_sdk/k90;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 24
    :cond_20
    sget-object p1, Lads_mobile_sdk/k90;->DEFAULT_INSTANCE:Lads_mobile_sdk/k90;

    return-object p1

    .line 25
    :cond_23
    const-string p1, "origin_"

    const-string p2, "displayDurationSec_"

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 33
    sget-object p2, Lads_mobile_sdk/k90;->DEFAULT_INSTANCE:Lads_mobile_sdk/k90;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_36
    new-instance p1, Lads_mobile_sdk/j90;

    invoke-direct {p1}, Lads_mobile_sdk/j90;-><init>()V

    return-object p1

    .line 35
    :cond_3c
    new-instance p1, Lads_mobile_sdk/k90;

    invoke-direct {p1}, Lads_mobile_sdk/k90;-><init>()V

    return-object p1
.end method
