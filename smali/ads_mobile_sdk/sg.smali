###### Class ads_mobile_sdk.sg (ads_mobile_sdk.sg)
.class public final Lads_mobile_sdk/sg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/sg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/sg;

    invoke-direct {v0}, Lads_mobile_sdk/sg;-><init>()V

    sput-object v0, Lads_mobile_sdk/sg;->a:Lads_mobile_sdk/sg;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_26

    const/4 p1, 0x0

    goto :goto_1f

    .line 2
    :pswitch_5
    sget-object p1, Lads_mobile_sdk/tg;->j:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 3
    :pswitch_8
    sget-object p1, Lads_mobile_sdk/tg;->i:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 4
    :pswitch_b
    sget-object p1, Lads_mobile_sdk/tg;->h:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 5
    :pswitch_e
    sget-object p1, Lads_mobile_sdk/tg;->g:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 6
    :pswitch_11
    sget-object p1, Lads_mobile_sdk/tg;->f:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 7
    :pswitch_14
    sget-object p1, Lads_mobile_sdk/tg;->e:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 8
    :pswitch_17
    sget-object p1, Lads_mobile_sdk/tg;->d:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 9
    :pswitch_1a
    sget-object p1, Lads_mobile_sdk/tg;->c:Lads_mobile_sdk/tg;

    goto :goto_1f

    .line 10
    :pswitch_1d
    sget-object p1, Lads_mobile_sdk/tg;->b:Lads_mobile_sdk/tg;

    :goto_1f
    if-eqz p1, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
