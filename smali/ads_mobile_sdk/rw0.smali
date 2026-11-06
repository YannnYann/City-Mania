###### Class ads_mobile_sdk.rw0 (ads_mobile_sdk.rw0)
.class public final Lads_mobile_sdk/rw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lads_mobile_sdk/ja1;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lads_mobile_sdk/an0;

.field public final j:Lads_mobile_sdk/kd2;

.field public final k:Lads_mobile_sdk/cn0;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILads_mobile_sdk/ja1;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/an0;Lads_mobile_sdk/kd2;Lads_mobile_sdk/cn0;)V
    .registers 13

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osBuildFingerprint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osHost"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProperties"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omid"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTierManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lads_mobile_sdk/rw0;->a:Landroid/content/Context;

    .line 30
    iput p2, p0, Lads_mobile_sdk/rw0;->b:I

    .line 31
    iput-object p3, p0, Lads_mobile_sdk/rw0;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lads_mobile_sdk/rw0;->d:Ljava/lang/String;

    .line 33
    iput p5, p0, Lads_mobile_sdk/rw0;->e:I

    .line 34
    iput-object p6, p0, Lads_mobile_sdk/rw0;->f:Lads_mobile_sdk/ja1;

    .line 35
    iput-object p7, p0, Lads_mobile_sdk/rw0;->g:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lads_mobile_sdk/rw0;->h:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lads_mobile_sdk/rw0;->i:Lads_mobile_sdk/an0;

    .line 38
    iput-object p10, p0, Lads_mobile_sdk/rw0;->j:Lads_mobile_sdk/kd2;

    .line 39
    iput-object p11, p0, Lads_mobile_sdk/rw0;->k:Lads_mobile_sdk/cn0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .registers 6

    .line 1
    const-string v0, "consentStrings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 45
    iget-object v1, p0, Lads_mobile_sdk/rw0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lads_mobile_sdk/rw0;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vc"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    sget-object v1, Lads_mobile_sdk/dt;->ec:Lads_mobile_sdk/dt;

    invoke-virtual {v1}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lads_mobile_sdk/dt;->H8:Lads_mobile_sdk/dt;

    invoke-virtual {v1}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lads_mobile_sdk/rw0;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_52

    :cond_50
    const-string v1, ""

    :cond_52
    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lads_mobile_sdk/rw0;->c:Ljava/lang/String;

    const-string v2, "js"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "mf"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    iget-object v1, p0, Lads_mobile_sdk/rw0;->g:Ljava/lang/String;

    const-string v2, "os_build_fp"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lads_mobile_sdk/rw0;->h:Ljava/lang/String;

    const-string v2, "os_host"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lads_mobile_sdk/rw0;->i:Lads_mobile_sdk/an0;

    .line 55
    iget-object v1, v1, Lads_mobile_sdk/an0;->i:Lkotlin/Lazy;

    .line 56
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    const-string v2, "mv"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "is_decagon"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    iget-object v1, p0, Lads_mobile_sdk/rw0;->d:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v1, p0, Lads_mobile_sdk/rw0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dynamite_version"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 61
    iget-object v1, p0, Lads_mobile_sdk/rw0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lads_mobile_sdk/rw0;->j:Lads_mobile_sdk/kd2;

    invoke-virtual {v1}, Lads_mobile_sdk/kd2;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "omid_v"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "shared_pref"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 65
    sget-object p1, Lads_mobile_sdk/dt;->b0:Lads_mobile_sdk/dt;

    invoke-virtual {p1}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v1, p0, Lads_mobile_sdk/rw0;->k:Lads_mobile_sdk/cn0;

    .line 67
    iget-object v1, v1, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mm0;

    invoke-virtual {v1}, Lads_mobile_sdk/mm0;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/rw0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 75
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 79
    sget-object v3, Lads_mobile_sdk/dt;->Li:Lads_mobile_sdk/dt;

    invoke-virtual {v3}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 80
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 86
    sget-object v2, Lads_mobile_sdk/dt;->Ki:Lads_mobile_sdk/dt;

    invoke-virtual {v2}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 87
    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 88
    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
