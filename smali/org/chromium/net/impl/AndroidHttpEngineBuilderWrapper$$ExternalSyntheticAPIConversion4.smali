###### Class org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion4 (org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion4)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/net/http/QuicOptions$Builder;Lj$/time/Duration;)Landroid/net/http/QuicOptions$Builder;
    .registers 2

    .line 0
    invoke-static {p1}, Lj$/time/TimeConversions;->convert(Lj$/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/http/QuicOptions$Builder;->setIdleConnectionTimeout(Ljava/time/Duration;)Landroid/net/http/QuicOptions$Builder;

    move-result-object p0

    return-object p0
.end method
