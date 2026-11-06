###### Class org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion3 (org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion3)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;Lj$/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;
    .registers 2

    .line 0
    invoke-static {p1}, Lj$/time/TimeConversions;->convert(Lj$/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->setMaxExpiredDelay(Ljava/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    move-result-object p0

    return-object p0
.end method
