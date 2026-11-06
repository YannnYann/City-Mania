###### Class ads_mobile_sdk.e90 (ads_mobile_sdk.e90)
.class public final Lads_mobile_sdk/e90;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/e90;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field private bitField0_:I

.field private body_:Lads_mobile_sdk/du;

.field private bodydigest_:Lads_mobile_sdk/du;

.field private bodylength_:I

.field private firstline_:Lads_mobile_sdk/d90;

.field private headers_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/w80;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private remoteIp_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/e90;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/e90;->DEFAULT_INSTANCE:Lads_mobile_sdk/e90;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/e90;

    invoke-direct {v0}, Lads_mobile_sdk/e90;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/e90;->DEFAULT_INSTANCE:Lads_mobile_sdk/e90;

    .line 5
    const-class v1, Lads_mobile_sdk/e90;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49316
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    .line 50551
    iput-byte v0, p0, Lads_mobile_sdk/e90;->memoizedIsInitialized:B

    .line 50552
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/e90;->headers_:Lads_mobile_sdk/yh1$f;

    .line 50553
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/e90;->body_:Lads_mobile_sdk/du;

    .line 50554
    iput-object v0, p0, Lads_mobile_sdk/e90;->bodydigest_:Lads_mobile_sdk/du;

    .line 50555
    iput-object v0, p0, Lads_mobile_sdk/e90;->remoteIp_:Lads_mobile_sdk/du;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p3, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_50

    return-object p3

    :pswitch_d
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    int-to-byte p1, p1

    .line 34
    iput-byte p1, p0, Lads_mobile_sdk/e90;->memoizedIsInitialized:B

    return-object p3

    .line 35
    :pswitch_16
    iget-byte p1, p0, Lads_mobile_sdk/e90;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_1d
    const-class p1, Lads_mobile_sdk/e90;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_24
    sget-object p1, Lads_mobile_sdk/e90;->DEFAULT_INSTANCE:Lads_mobile_sdk/e90;

    return-object p1

    .line 38
    :pswitch_27
    const-string v6, "bodylength_"

    const-string v7, "remoteIp_"

    const-string v0, "bitField0_"

    const-string v1, "firstline_"

    const-string v2, "headers_"

    const-class v3, Lads_mobile_sdk/w80;

    const-string v4, "body_"

    const-string v5, "bodydigest_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 51
    sget-object p2, Lads_mobile_sdk/e90;->DEFAULT_INSTANCE:Lads_mobile_sdk/e90;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_44
    new-instance p1, Lads_mobile_sdk/b90;

    invoke-direct {p1}, Lads_mobile_sdk/b90;-><init>()V

    return-object p1

    .line 53
    :pswitch_4a
    new-instance p1, Lads_mobile_sdk/e90;

    invoke-direct {p1}, Lads_mobile_sdk/e90;-><init>()V

    return-object p1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_44
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method
