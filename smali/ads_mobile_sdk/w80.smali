###### Class ads_mobile_sdk.w80 (ads_mobile_sdk.w80)
.class public final Lads_mobile_sdk/w80;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private name_:Lads_mobile_sdk/du;

.field private value_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/w80;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/w80;->DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/w80;

    invoke-direct {v0}, Lads_mobile_sdk/w80;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/w80;->DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

    .line 5
    const-class v1, Lads_mobile_sdk/w80;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47608
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    .line 47865
    iput-byte v0, p0, Lads_mobile_sdk/w80;->memoizedIsInitialized:B

    .line 47866
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/w80;->name_:Lads_mobile_sdk/du;

    .line 47867
    iput-object v0, p0, Lads_mobile_sdk/w80;->value_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static v()Lads_mobile_sdk/v80;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/w80;->DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/v80;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 5
    sget-object p3, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_46

    return-object p3

    :pswitch_d
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    int-to-byte p1, p1

    .line 33
    iput-byte p1, p0, Lads_mobile_sdk/w80;->memoizedIsInitialized:B

    return-object p3

    .line 34
    :pswitch_16
    iget-byte p1, p0, Lads_mobile_sdk/w80;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_1d
    const-class p1, Lads_mobile_sdk/w80;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_24
    sget-object p1, Lads_mobile_sdk/w80;->DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

    return-object p1

    .line 37
    :pswitch_27
    const-string p1, "name_"

    const-string p2, "value_"

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    sget-object p2, Lads_mobile_sdk/w80;->DEFAULT_INSTANCE:Lads_mobile_sdk/w80;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_3a
    new-instance p1, Lads_mobile_sdk/v80;

    invoke-direct {p1}, Lads_mobile_sdk/v80;-><init>()V

    return-object p1

    .line 47
    :pswitch_40
    new-instance p1, Lads_mobile_sdk/w80;

    invoke-direct {p1}, Lads_mobile_sdk/w80;-><init>()V

    return-object p1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3a
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/w80;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/w80;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/w80;->name_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/w80;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/w80;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/w80;->value_:Lads_mobile_sdk/du;

    return-void
.end method
