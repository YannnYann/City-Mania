###### Class ads_mobile_sdk.a90 (ads_mobile_sdk.a90)
.class public final Lads_mobile_sdk/a90;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field private bitField0_:I

.field private body_:Lads_mobile_sdk/du;

.field private bodydigest_:Lads_mobile_sdk/du;

.field private bodylength_:I

.field private firstline_:Lads_mobile_sdk/z80;

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


# direct methods
.method public static bridge synthetic -$$Nest$fgetheaders_(Lads_mobile_sdk/a90;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/a90;->headers_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/a90;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/a90;->DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/a90;

    invoke-direct {v0}, Lads_mobile_sdk/a90;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/a90;->DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

    .line 5
    const-class v1, Lads_mobile_sdk/a90;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48015
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    .line 49143
    iput-byte v0, p0, Lads_mobile_sdk/a90;->memoizedIsInitialized:B

    .line 49144
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/a90;->headers_:Lads_mobile_sdk/yh1$f;

    .line 49145
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/a90;->body_:Lads_mobile_sdk/du;

    .line 49146
    iput-object v0, p0, Lads_mobile_sdk/a90;->bodydigest_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static v()Lads_mobile_sdk/x80;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/a90;->DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/x80;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 8
    sget-object p3, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_4e

    return-object p3

    :pswitch_d
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    int-to-byte p1, p1

    .line 40
    iput-byte p1, p0, Lads_mobile_sdk/a90;->memoizedIsInitialized:B

    return-object p3

    .line 41
    :pswitch_16
    iget-byte p1, p0, Lads_mobile_sdk/a90;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_1d
    const-class p1, Lads_mobile_sdk/a90;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_24
    sget-object p1, Lads_mobile_sdk/a90;->DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

    return-object p1

    .line 44
    :pswitch_27
    const-string v5, "bodydigest_"

    const-string v6, "bodylength_"

    const-string v0, "bitField0_"

    const-string v1, "firstline_"

    const-string v2, "headers_"

    const-class v3, Lads_mobile_sdk/w80;

    const-string v4, "body_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 56
    sget-object p2, Lads_mobile_sdk/a90;->DEFAULT_INSTANCE:Lads_mobile_sdk/a90;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_42
    new-instance p1, Lads_mobile_sdk/x80;

    invoke-direct {p1}, Lads_mobile_sdk/x80;-><init>()V

    return-object p1

    .line 58
    :pswitch_48
    new-instance p1, Lads_mobile_sdk/a90;

    invoke-direct {p1}, Lads_mobile_sdk/a90;-><init>()V

    return-object p1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_42
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/w80;)V
    .registers 4

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/a90;->headers_:Lads_mobile_sdk/yh1$f;

    .line 4
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/a90;->headers_:Lads_mobile_sdk/yh1$f;

    .line 7
    :cond_11
    iget-object v0, p0, Lads_mobile_sdk/a90;->headers_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
