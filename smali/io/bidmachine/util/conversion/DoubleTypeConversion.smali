###### Class io.bidmachine.util.conversion.DoubleTypeConversion (io.bidmachine.util.conversion.DoubleTypeConversion)
.class public final Lio/bidmachine/util/conversion/DoubleTypeConversion;
.super Lio/bidmachine/util/conversion/BaseTypeConversion;
.source "DoubleTypeConversion.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/util/conversion/BaseTypeConversion<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDoubleTypeConversion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleTypeConversion.kt\nio/bidmachine/util/conversion/DoubleTypeConversion\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,35:1\n846#2,4:36\n*S KotlinDebug\n*F\n+ 1 DoubleTypeConversion.kt\nio/bidmachine/util/conversion/DoubleTypeConversion\n*L\n30#1:36,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lio/bidmachine/util/conversion/BaseTypeConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public to(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 12
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 15
    :cond_15
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 19
    :cond_25
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 20
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lio/bidmachine/util/conversion/TypeConversion;->toOrDefault$default(Lio/bidmachine/util/conversion/TypeConversion;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 24
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/DoubleTypeConversion;->to(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_5
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p1

    :catchall_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/DoubleTypeConversion;->to(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/DoubleTypeConversion;->to(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
