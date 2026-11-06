###### Class ads_mobile_sdk.p80 (ads_mobile_sdk.p80)
.class public final Lads_mobile_sdk/p80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/p80;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/p80;

    invoke-direct {v0}, Lads_mobile_sdk/p80;-><init>()V

    sput-object v0, Lads_mobile_sdk/p80;->a:Lads_mobile_sdk/p80;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_2c

    const/4 p1, 0x0

    goto :goto_25

    .line 2
    :pswitch_5
    sget-object p1, Lads_mobile_sdk/q80;->l:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 3
    :pswitch_8
    sget-object p1, Lads_mobile_sdk/q80;->k:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 4
    :pswitch_b
    sget-object p1, Lads_mobile_sdk/q80;->j:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 5
    :pswitch_e
    sget-object p1, Lads_mobile_sdk/q80;->i:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 6
    :pswitch_11
    sget-object p1, Lads_mobile_sdk/q80;->h:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 7
    :pswitch_14
    sget-object p1, Lads_mobile_sdk/q80;->g:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 8
    :pswitch_17
    sget-object p1, Lads_mobile_sdk/q80;->f:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 9
    :pswitch_1a
    sget-object p1, Lads_mobile_sdk/q80;->e:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 10
    :pswitch_1d
    sget-object p1, Lads_mobile_sdk/q80;->d:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 11
    :pswitch_20
    sget-object p1, Lads_mobile_sdk/q80;->c:Lads_mobile_sdk/q80;

    goto :goto_25

    .line 12
    :pswitch_23
    sget-object p1, Lads_mobile_sdk/q80;->b:Lads_mobile_sdk/q80;

    :goto_25
    if-eqz p1, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
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
