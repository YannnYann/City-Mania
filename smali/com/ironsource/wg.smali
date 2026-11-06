###### Class com.ironsource.C3917wg (com.ironsource.wg)
.class public Lcom/ironsource/wg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not defined message for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x194

    if-eq p0, v1, :cond_3a

    packed-switch p0, :pswitch_data_3e

    packed-switch p0, :pswitch_data_48

    packed-switch p0, :pswitch_data_54

    return-object v0

    .line 32
    :pswitch_1f
    const-string p0, "failed to create folder for file"

    return-object p0

    .line 33
    :pswitch_22
    const-string p0, "out of memory exception"

    return-object p0

    .line 34
    :pswitch_25
    const-string p0, "file not found exception"

    return-object p0

    .line 35
    :pswitch_28
    const-string p0, "http error code"

    return-object p0

    .line 36
    :pswitch_2b
    const-string p0, "uri syntax exception"

    return-object p0

    .line 48
    :pswitch_2e
    const-string p0, "io exception"

    return-object p0

    .line 49
    :pswitch_31
    const-string p0, "socket timeout exception"

    return-object p0

    .line 50
    :pswitch_34
    const-string p0, "http empty response"

    return-object p0

    .line 51
    :pswitch_37
    const-string p0, "malformed url exception"

    return-object p0

    .line 55
    :cond_3a
    :pswitch_3a
    const-string p0, "http not found"

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x3ec
        :pswitch_37
        :pswitch_3a
        :pswitch_34
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x3f0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x3fa
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
