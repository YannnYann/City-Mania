###### Class ads_mobile_sdk.bg (ads_mobile_sdk.bg)
.class public final Lads_mobile_sdk/bg;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/bg;

.field public static final c:I = 0x1


# instance fields
.field private bitField0_:I

.field private function_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/bg;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/bg;->DEFAULT_INSTANCE:Lads_mobile_sdk/bg;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/bg;

    invoke-direct {v0}, Lads_mobile_sdk/bg;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/bg;->DEFAULT_INSTANCE:Lads_mobile_sdk/bg;

    .line 5
    const-class v1, Lads_mobile_sdk/bg;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16347
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

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

    .line 22
    :cond_19
    const-class p1, Lads_mobile_sdk/bg;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_20
    sget-object p1, Lads_mobile_sdk/bg;->DEFAULT_INSTANCE:Lads_mobile_sdk/bg;

    return-object p1

    .line 24
    :cond_23
    const-string p1, "function_"

    sget-object p2, Lads_mobile_sdk/gg;->a:Lads_mobile_sdk/gg;

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 28
    sget-object p2, Lads_mobile_sdk/bg;->DEFAULT_INSTANCE:Lads_mobile_sdk/bg;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_36
    new-instance p1, Lads_mobile_sdk/ag;

    invoke-direct {p1}, Lads_mobile_sdk/ag;-><init>()V

    return-object p1

    .line 30
    :cond_3c
    new-instance p1, Lads_mobile_sdk/bg;

    invoke-direct {p1}, Lads_mobile_sdk/bg;-><init>()V

    return-object p1
.end method
