###### Class ads_mobile_sdk.dq1 (ads_mobile_sdk.dq1)
.class public abstract Lads_mobile_sdk/dq1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/cq1;)V
    .registers 5

    .line 1
    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 2
    invoke-static {p0, v0}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -- From line "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4f

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_47

    const/4 p2, 0x3

    if-eq p1, p2, :cond_41

    return-void

    :cond_41
    const/4 p1, 0x6

    const/4 p2, 0x0

    .line 9
    invoke-static {p0, p2, p2, p1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void

    .line 10
    :cond_47
    invoke-static {p0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4b
    invoke-static {p0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4f
    invoke-static {p0}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;)V

    return-void
.end method
