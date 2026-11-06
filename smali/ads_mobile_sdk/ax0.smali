###### Class ads_mobile_sdk.ax0 (ads_mobile_sdk.ax0)
.class public final Lads_mobile_sdk/ax0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 2

    .line 5
    sget-wide v0, Lads_mobile_sdk/ex0;->A:J

    return-wide v0
.end method

.method public static final a(Lads_mobile_sdk/ax0;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;Lads_mobile_sdk/kj3;)V
    .registers 4

    .line 2
    invoke-virtual {p2}, Lads_mobile_sdk/y11;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    iget-wide p2, p3, Lads_mobile_sdk/kj3;->a:J

    .line 4
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
