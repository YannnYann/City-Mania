###### Class io.bidmachine.util.conversion.StringTypeConversion (io.bidmachine.util.conversion.StringTypeConversion)
.class public final Lio/bidmachine/util/conversion/StringTypeConversion;
.super Lio/bidmachine/util/conversion/BaseTypeConversion;
.source "StringTypeConversion.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/util/conversion/BaseTypeConversion<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lio/bidmachine/util/conversion/BaseTypeConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic to(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/StringTypeConversion;->to(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/StringTypeConversion;->to(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
