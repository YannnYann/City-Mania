###### Class ads_mobile_sdk.ba0 (ads_mobile_sdk.ba0)
.class public final Lads_mobile_sdk/ba0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/ba0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ba0;

    invoke-direct {v0}, Lads_mobile_sdk/ba0;-><init>()V

    sput-object v0, Lads_mobile_sdk/ba0;->a:Lads_mobile_sdk/ba0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_2e

    const/4 p1, 0x0

    goto :goto_28

    .line 2
    :pswitch_5
    sget-object p1, Lads_mobile_sdk/ca0;->m:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 3
    :pswitch_8
    sget-object p1, Lads_mobile_sdk/ca0;->l:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 4
    :pswitch_b
    sget-object p1, Lads_mobile_sdk/ca0;->k:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 5
    :pswitch_e
    sget-object p1, Lads_mobile_sdk/ca0;->j:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 6
    :pswitch_11
    sget-object p1, Lads_mobile_sdk/ca0;->i:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 7
    :pswitch_14
    sget-object p1, Lads_mobile_sdk/ca0;->h:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 8
    :pswitch_17
    sget-object p1, Lads_mobile_sdk/ca0;->g:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 9
    :pswitch_1a
    sget-object p1, Lads_mobile_sdk/ca0;->f:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 10
    :pswitch_1d
    sget-object p1, Lads_mobile_sdk/ca0;->e:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 11
    :pswitch_20
    sget-object p1, Lads_mobile_sdk/ca0;->d:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 12
    :pswitch_23
    sget-object p1, Lads_mobile_sdk/ca0;->c:Lads_mobile_sdk/ca0;

    goto :goto_28

    .line 13
    :pswitch_26
    sget-object p1, Lads_mobile_sdk/ca0;->b:Lads_mobile_sdk/ca0;

    :goto_28
    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
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
