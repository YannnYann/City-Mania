###### Class ads_mobile_sdk.jg (ads_mobile_sdk.jg)
.class public final Lads_mobile_sdk/jg;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/jg;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private frontCamera_:I

.field private frontFlash_:I

.field private rearCamera_:I

.field private rearFlash_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jg;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/jg;->DEFAULT_INSTANCE:Lads_mobile_sdk/jg;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/jg;

    invoke-direct {v0}, Lads_mobile_sdk/jg;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/jg;->DEFAULT_INSTANCE:Lads_mobile_sdk/jg;

    .line 5
    const-class v1, Lads_mobile_sdk/jg;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15411
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/16 v0, 0x3e8

    .line 15412
    iput v0, p0, Lads_mobile_sdk/jg;->frontCamera_:I

    .line 15413
    iput v0, p0, Lads_mobile_sdk/jg;->rearCamera_:I

    .line 15414
    iput v0, p0, Lads_mobile_sdk/jg;->frontFlash_:I

    .line 15415
    iput v0, p0, Lads_mobile_sdk/jg;->rearFlash_:I

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_45

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_19
    const-class p1, Lads_mobile_sdk/jg;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/jg;->DEFAULT_INSTANCE:Lads_mobile_sdk/jg;

    return-object p1

    .line 31
    :cond_23
    sget-object v2, Lads_mobile_sdk/qh;->a:Lads_mobile_sdk/qh;

    const-string v5, "frontFlash_"

    const-string v7, "rearFlash_"

    const-string v0, "bitField0_"

    const-string v1, "frontCamera_"

    const-string v3, "rearCamera_"

    move-object v4, v2

    move-object v6, v2

    move-object v8, v2

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 36
    sget-object p2, Lads_mobile_sdk/jg;->DEFAULT_INSTANCE:Lads_mobile_sdk/jg;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :cond_3f
    new-instance p1, Lads_mobile_sdk/ig;

    invoke-direct {p1}, Lads_mobile_sdk/ig;-><init>()V

    return-object p1

    .line 38
    :cond_45
    new-instance p1, Lads_mobile_sdk/jg;

    invoke-direct {p1}, Lads_mobile_sdk/jg;-><init>()V

    return-object p1
.end method
