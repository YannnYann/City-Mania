###### Class org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion0 (org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion0)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/net/http/HttpEngine$Builder;Ljava/lang/String;Ljava/util/Set;ZLj$/time/Instant;)Landroid/net/http/HttpEngine$Builder;
    .registers 5

    .line 0
    invoke-static {p4}, Lj$/time/TimeConversions;->convert(Lj$/time/Instant;)Ljava/time/Instant;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/http/HttpEngine$Builder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/HttpEngine$Builder;

    move-result-object p0

    return-object p0
.end method
