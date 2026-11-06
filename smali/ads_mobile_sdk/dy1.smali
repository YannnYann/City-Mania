###### Class ads_mobile_sdk.dy1 (ads_mobile_sdk.dy1)
.class public final Lads_mobile_sdk/dy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Lads_mobile_sdk/ks1;

.field public final e:Lads_mobile_sdk/ks1;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/s93;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/f0;Lads_mobile_sdk/s93;)V
    .registers 9

    .line 1
    const-string v0, "mraidSetOrientationPropertiesHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidResizeHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidCalendarEventHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidStorePictureHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidUnloadHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/dy1;->a:Lads_mobile_sdk/ks1;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/dy1;->c:Lads_mobile_sdk/ks1;

    .line 24
    iput-object p4, p0, Lads_mobile_sdk/dy1;->d:Lads_mobile_sdk/ks1;

    .line 25
    iput-object p5, p0, Lads_mobile_sdk/dy1;->e:Lads_mobile_sdk/ks1;

    .line 26
    iput-object p6, p0, Lads_mobile_sdk/dy1;->f:Lads_mobile_sdk/f0;

    .line 27
    iput-object p7, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/cy1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/cy1;

    iget v1, v0, Lads_mobile_sdk/cy1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cy1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cy1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/cy1;-><init>(Lads_mobile_sdk/dy1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/cy1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lads_mobile_sdk/cy1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    packed-switch v2, :pswitch_data_1b2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_152

    :pswitch_32
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_119

    :pswitch_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_137

    :pswitch_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f9

    :pswitch_41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16f

    :pswitch_46
    iget-object p1, v0, Lads_mobile_sdk/cy1;->a:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a2

    :pswitch_4c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    const-string p3, "a"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ""

    if-nez v2, :cond_5c

    move-object v2, v5

    .line 34
    :cond_5c
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    .line 76
    invoke-static {}, Lads_mobile_sdk/qx1;->v()Lads_mobile_sdk/px1;

    move-result-object v7

    const-string v8, "newBuilder(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lads_mobile_sdk/rx1;->a(Lads_mobile_sdk/px1;)Lads_mobile_sdk/sx1;

    move-result-object v7

    .line 77
    invoke-virtual {v7, v2}, Lads_mobile_sdk/sx1;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7}, Lads_mobile_sdk/sx1;->a()Lads_mobile_sdk/qx1;

    move-result-object v7

    .line 120
    iput-object v7, v6, Lads_mobile_sdk/uj2;->w:Lads_mobile_sdk/qx1;

    .line 122
    const-string v6, "setOrientationProperties"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "unload"

    if-nez v7, :cond_be

    .line 123
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 124
    iget-object v7, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    invoke-virtual {v7}, Lads_mobile_sdk/s93;->f()Z

    move-result v7

    if-nez v7, :cond_be

    .line 126
    iget-object p1, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    iput-object v2, v0, Lads_mobile_sdk/cy1;->a:Ljava/lang/String;

    iput v8, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, v5, v0}, Lads_mobile_sdk/s93;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a1

    goto/16 :goto_16e

    :cond_a1
    move-object p1, v2

    .line 127
    :goto_a2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MRAID action "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blocked by safe browsing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 131
    :cond_be
    iget-object v5, p0, Lads_mobile_sdk/dy1;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v5}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_c7

    goto :goto_cb

    :cond_c7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 132
    :goto_cb
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_187

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1c4

    goto/16 :goto_187

    :sswitch_dc
    const-string v5, "storePicture"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e6

    goto/16 :goto_187

    .line 135
    :cond_e6
    iget-object p3, p0, Lads_mobile_sdk/dy1;->d:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/mz1;

    const/4 v2, 0x3

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/mz1;->a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_f9

    goto/16 :goto_16e

    .line 148
    :cond_f9
    :goto_f9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 149
    :sswitch_fc
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_104

    goto/16 :goto_187

    .line 156
    :cond_104
    iget-object p3, p0, Lads_mobile_sdk/dy1;->a:Lads_mobile_sdk/ks1;

    .line 157
    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/fz1;

    .line 158
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x5

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p2, p1}, Lads_mobile_sdk/fz1;->a(Ljava/util/Map;Lads_mobile_sdk/r31;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_119

    goto :goto_16e

    .line 165
    :cond_119
    :goto_119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 166
    :sswitch_11c
    const-string v5, "createCalendarEvent"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_125

    goto :goto_187

    .line 171
    :cond_125
    iget-object p3, p0, Lads_mobile_sdk/dy1;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/mx1;

    const/4 v2, 0x4

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/mx1;->a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_137

    goto :goto_16e

    .line 182
    :cond_137
    :goto_137
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 183
    :sswitch_13a
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_141

    goto :goto_187

    .line 193
    :cond_141
    iget-object p1, p0, Lads_mobile_sdk/dy1;->e:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oz1;

    iput v4, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/oz1;->a(Lads_mobile_sdk/cy1;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_152

    goto :goto_16e

    .line 199
    :cond_152
    :goto_152
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 200
    :sswitch_155
    const-string p1, "resize"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_187

    .line 201
    iget-object p1, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz1;

    const/4 p3, 0x2

    iput p3, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/bz1;->a(Ljava/util/Map;Lads_mobile_sdk/cy1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_16f

    :goto_16e
    return-object v1

    .line 216
    :cond_16f
    :goto_16f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 217
    :sswitch_172
    const-string p1, "closeResizedAd"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17b

    goto :goto_187

    .line 219
    :cond_17b
    iget-object p1, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz1;

    invoke-virtual {p1, v8}, Lads_mobile_sdk/bz1;->a(Z)V

    goto :goto_1af

    .line 229
    :cond_187
    :goto_187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown MRAID gmsg action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 230
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 233
    :goto_1af
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
    .end packed-switch

    :sswitch_data_1c4
    .sparse-switch
        -0x76f550a5 -> :sswitch_172
        -0x37b2634c -> :sswitch_155
        -0x32182101 -> :sswitch_13a
        -0x2bba19a0 -> :sswitch_11c
        0x7f3dfe1 -> :sswitch_fc
        0x1b5f6cdd -> :sswitch_dc
    .end sparse-switch
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->y:Lads_mobile_sdk/u11;

    return-object v0
.end method
