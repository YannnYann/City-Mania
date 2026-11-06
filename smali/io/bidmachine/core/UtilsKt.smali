###### Class io.bidmachine.core.UtilsKt (io.bidmachine.core.UtilsKt)
.class public final Lio/bidmachine/core/UtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convertToBooleanOrNull(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 3

    if-nez p0, :cond_3

    goto :goto_d

    .line 1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    :goto_d
    if-nez p0, :cond_10

    goto :goto_19

    .line 5
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_19

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final convertToInt(Z)I
    .registers 1

    .line 0
    return p0
.end method
