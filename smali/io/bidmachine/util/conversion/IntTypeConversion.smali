###### Class io.bidmachine.util.conversion.IntTypeConversion (io.bidmachine.util.conversion.IntTypeConversion)
.class public final Lio/bidmachine/util/conversion/IntTypeConversion;
.super Lio/bidmachine/util/conversion/BaseTypeConversion;
.source "IntTypeConversion.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/util/conversion/BaseTypeConversion<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntTypeConversion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntTypeConversion.kt\nio/bidmachine/util/conversion/IntTypeConversion\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,29:1\n846#2,4:30\n*S KotlinDebug\n*F\n+ 1 IntTypeConversion.kt\nio/bidmachine/util/conversion/IntTypeConversion\n*L\n24#1:30,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lio/bidmachine/util/conversion/BaseTypeConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public to(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_14

    .line 10
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :cond_14
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 14
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0, v1}, Lio/bidmachine/util/conversion/TypeConversion;->toOrDefault$default(Lio/bidmachine/util/conversion/TypeConversion;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_23
    return-object v1
.end method

.method public to(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/IntTypeConversion;->to(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/IntTypeConversion;->to(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
