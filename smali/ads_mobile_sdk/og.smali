###### Class ads_mobile_sdk.og (ads_mobile_sdk.og)
.class public final Lads_mobile_sdk/og;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/og;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/og;

    invoke-direct {v0}, Lads_mobile_sdk/og;-><init>()V

    sput-object v0, Lads_mobile_sdk/og;->a:Lads_mobile_sdk/og;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    goto :goto_22

    .line 2
    :pswitch_5
    sget-object p1, Lads_mobile_sdk/pg;->k:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 3
    :pswitch_8
    sget-object p1, Lads_mobile_sdk/pg;->j:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 4
    :pswitch_b
    sget-object p1, Lads_mobile_sdk/pg;->i:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 5
    :pswitch_e
    sget-object p1, Lads_mobile_sdk/pg;->h:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 6
    :pswitch_11
    sget-object p1, Lads_mobile_sdk/pg;->g:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 7
    :pswitch_14
    sget-object p1, Lads_mobile_sdk/pg;->f:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 8
    :pswitch_17
    sget-object p1, Lads_mobile_sdk/pg;->e:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 9
    :pswitch_1a
    sget-object p1, Lads_mobile_sdk/pg;->d:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 10
    :pswitch_1d
    sget-object p1, Lads_mobile_sdk/pg;->c:Lads_mobile_sdk/pg;

    goto :goto_22

    .line 11
    :pswitch_20
    sget-object p1, Lads_mobile_sdk/pg;->b:Lads_mobile_sdk/pg;

    :goto_22
    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1

    :pswitch_data_28
    .packed-switch 0x0
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
