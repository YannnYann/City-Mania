###### Class ads_mobile_sdk.pe (ads_mobile_sdk.pe)
.class public final Lads_mobile_sdk/pe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;


# instance fields
.field public final a:I

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Map;)V
    .registers 5

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lads_mobile_sdk/pe;->a:I

    .line 522
    iput-object p2, p0, Lads_mobile_sdk/pe;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .registers 2

    .line 522
    iget-object v0, p0, Lads_mobile_sdk/pe;->b:Ljava/util/Map;

    return-object v0
.end method
