###### Class ads_mobile_sdk.jh (ads_mobile_sdk.jh)
.class public final Lads_mobile_sdk/jh;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/jh;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private labelsMemoizedSerializedSize:I

.field private labels_:Lads_mobile_sdk/yh1$e;

.field private reasonsMemoizedSerializedSize:I

.field private reasons_:Lads_mobile_sdk/yh1$e;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jh;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/jh;->DEFAULT_INSTANCE:Lads_mobile_sdk/jh;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/jh;

    invoke-direct {v0}, Lads_mobile_sdk/jh;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/jh;->DEFAULT_INSTANCE:Lads_mobile_sdk/jh;

    .line 5
    const-class v1, Lads_mobile_sdk/jh;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1811
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, -0x1

    .line 1855
    iput v0, p0, Lads_mobile_sdk/jh;->labelsMemoizedSerializedSize:I

    .line 1954
    iput v0, p0, Lads_mobile_sdk/jh;->reasonsMemoizedSerializedSize:I

    .line 1955
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jh;->labels_:Lads_mobile_sdk/yh1$e;

    .line 1956
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jh;->reasons_:Lads_mobile_sdk/yh1$e;

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

    .line 21
    :cond_19
    const-class p1, Lads_mobile_sdk/jh;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 22
    :cond_20
    sget-object p1, Lads_mobile_sdk/jh;->DEFAULT_INSTANCE:Lads_mobile_sdk/jh;

    return-object p1

    .line 23
    :cond_23
    const-string p1, "labels_"

    const-string p2, "reasons_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 29
    sget-object p2, Lads_mobile_sdk/jh;->DEFAULT_INSTANCE:Lads_mobile_sdk/jh;

    const-string p3, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001%\u0002%"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :cond_34
    new-instance p1, Lads_mobile_sdk/ih;

    invoke-direct {p1}, Lads_mobile_sdk/ih;-><init>()V

    return-object p1

    .line 31
    :cond_3a
    new-instance p1, Lads_mobile_sdk/jh;

    invoke-direct {p1}, Lads_mobile_sdk/jh;-><init>()V

    return-object p1
.end method
