###### Class io.bidmachine.utils.IabUtilsKt (io.bidmachine.utils.IabUtilsKt)
.class public final Lio/bidmachine/utils/IabUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/IabError;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    const/4 v1, 0x7

    if-eq v0, v1, :cond_30

    .line 21
    sget-object v1, Lio/bidmachine/utils/BMError;->InternalUnknownError:Lio/bidmachine/utils/BMError;

    .line 22
    const-string v2, "{\n            BMError.In\u2026nalUnknownError\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    .line 23
    :cond_20
    sget-object v1, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    .line 24
    const-string v2, "{\n            BMError.Expired\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    .line 29
    :cond_28
    sget-object v1, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    .line 30
    const-string v2, "{\n            BMError.PlaceholderTimeout\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    .line 31
    :cond_30
    sget-object v1, Lio/bidmachine/utils/BMError;->NoFill:Lio/bidmachine/utils/BMError;

    .line 32
    const-string v2, "{\n            BMError.NoFill\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    .line 33
    :cond_38
    sget-object v1, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    .line 34
    const-string v2, "{\n            BMError.NoConnection\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :goto_3f
    new-instance v2, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, v0, p0}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V

    return-object v2
.end method
