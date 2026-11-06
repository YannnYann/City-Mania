###### Class ads_mobile_sdk.eb3 (ads_mobile_sdk.eb3)
.class public final Lads_mobile_sdk/eb3;
.super Lads_mobile_sdk/yr;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xw0;)V
    .registers 3

    .line 1
    const-string v0, "flagValueProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lads_mobile_sdk/yr;-><init>(Lads_mobile_sdk/xw0;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 39
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 40
    const-string v1, "key"

    const/16 v2, 0x3c

    const-string v3, "gads:js_eng_full_load:timeout_millis"

    invoke-static {v2, v0, v3, v1}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v0

    .line 41
    sget-object v1, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p0, v3, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .registers 11

    .line 66
    const-string v8, "/closeStoreOverlay"

    const-string v9, "/instrument"

    const-string v0, "/noop"

    const-string v1, "/updateActiveView"

    const-string v2, "/trackActiveViewUnit"

    const-string v3, "/jsLoaded"

    const-string v4, "/impressionRecorded"

    const-string v5, "/refresh"

    const-string v6, "/requestReload"

    const-string v7, "/navigation"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    const-string v1, "key"

    const-string v2, "gads:missing_gmsg_handlers_to_ignore"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultValue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {p0, v2, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .line 52
    const-string v0, "key"

    const-string v1, "gads:sdk_core_constants:experiment_id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    const-string v2, ""

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p0, v1, v2, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
