###### Class com.google.android.libraries.ads.mobile.sdk.signal.Signal (com.google.android.libraries.ads.mobile.sdk.signal.Signal)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "signalString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSignalString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->a:Ljava/lang/String;

    return-object v0
.end method
