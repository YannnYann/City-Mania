###### Class ads_mobile_sdk.oh (ads_mobile_sdk.oh)
.class public final Lads_mobile_sdk/oh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/oh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/oh;

    invoke-direct {v0}, Lads_mobile_sdk/oh;-><init>()V

    sput-object v0, Lads_mobile_sdk/oh;->a:Lads_mobile_sdk/oh;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_20

    const/4 p1, 0x0

    goto :goto_19

    .line 2
    :pswitch_5
    sget-object p1, Lads_mobile_sdk/ph;->h:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 3
    :pswitch_8
    sget-object p1, Lads_mobile_sdk/ph;->g:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 4
    :pswitch_b
    sget-object p1, Lads_mobile_sdk/ph;->f:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 5
    :pswitch_e
    sget-object p1, Lads_mobile_sdk/ph;->e:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 6
    :pswitch_11
    sget-object p1, Lads_mobile_sdk/ph;->d:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 7
    :pswitch_14
    sget-object p1, Lads_mobile_sdk/ph;->c:Lads_mobile_sdk/ph;

    goto :goto_19

    .line 8
    :pswitch_17
    sget-object p1, Lads_mobile_sdk/ph;->b:Lads_mobile_sdk/ph;

    :goto_19
    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
