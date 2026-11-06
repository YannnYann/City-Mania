###### Class com.vungle.ads.internal.ui.x (com.vungle.ads.internal.ui.x)
.class public final Lcom/vungle/ads/internal/ui/x;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/util/w;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/i0;

.field public final b:Lcom/vungle/ads/internal/model/j3;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lcom/vungle/ads/internal/platform/f;

.field public final e:Lcom/vungle/ads/internal/load/f;

.field public final f:Ljava/lang/Long;

.field public final g:Lkotlin/Lazy;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Landroid/webkit/WebView;

.field public n:Z

.field public o:Lcom/vungle/ads/internal/ui/view/n;

.field public p:Lcom/vungle/ads/internal/ui/view/o;

.field public q:Lcom/vungle/ads/internal/omsdk/f;

.field public r:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/platform/f;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/vungle/ads/internal/ui/x;-><init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/platform/f;Lcom/vungle/ads/internal/load/f;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/platform/f;Lcom/vungle/ads/internal/load/f;Ljava/lang/Long;)V
    .registers 8

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offloadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x;->b:Lcom/vungle/ads/internal/model/j3;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/ui/x;->d:Lcom/vungle/ads/internal/platform/f;

    .line 7
    iput-object p5, p0, Lcom/vungle/ads/internal/ui/x;->e:Lcom/vungle/ads/internal/load/f;

    .line 8
    iput-object p6, p0, Lcom/vungle/ads/internal/ui/x;->f:Ljava/lang/Long;

    .line 9
    sget-object p1, Lcom/vungle/ads/internal/ui/p;->a:Lcom/vungle/ads/internal/ui/p;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ui/x;)Lcom/vungle/ads/internal/model/i0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;)V
    .registers 4

    const-string v0, "$mraidDelegateSnapshot"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1309
    const-string v1, "url"

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1578
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 1579
    check-cast p0, Lcom/vungle/ads/internal/presenter/r;

    const-string v0, "openNonMraid"

    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;Landroid/net/Uri;)V
    .registers 10

    const-string v0, "window.vungle.mraidBridge.notifyCommandComplete()"

    const-string v1, "$mraidDelegateSnapshot"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$uri"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    :try_start_16
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1015
    invoke-virtual {p4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1016
    const-string v4, "param"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_23

    :catchall_3c
    move-exception p0

    goto :goto_57

    :catch_3e
    move-exception p0

    goto :goto_4a

    .line 1301
    :cond_40
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p4

    .line 1302
    check-cast p0, Lcom/vungle/ads/internal/presenter/r;

    invoke-virtual {p0, p1, p4}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_49} :catch_3e
    .catchall {:try_start_16 .. :try_end_49} :catchall_3c

    goto :goto_53

    .line 1304
    :goto_4a
    :try_start_4a
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "VungleWebClient"

    const-string p4, "MRAID command failed"

    invoke-static {p1, p4, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_3c

    .line 1307
    :goto_53
    invoke-virtual {p2, p3, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :goto_57
    invoke-virtual {p2, p3, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->g()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridge.notifyReadyEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(ZLcom/vungle/ads/internal/ui/x;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1581
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->D()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placementType"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1582
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    const-string v2, "isViewable"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1583
    :cond_1e
    const-string v1, "os"

    const-string v2, "android"

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1584
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osVersion"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1585
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->b:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/j3;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "incentivized"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1586
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->d:Lcom/vungle/ads/internal/platform/f;

    if-eqz v1, :cond_52

    check-cast v1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/platform/c;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSilent"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1587
    :cond_52
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5b

    const-string v2, "timeLoaded"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/JsonElement;

    .line 1588
    :cond_5b
    iget-boolean v1, p1, Lcom/vungle/ads/internal/ui/x;->h:Z

    const-string v2, "consentRequired"

    if-eqz v1, :cond_83

    .line 1589
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1590
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->i:Ljava/lang/String;

    const-string v2, "consentTitleText"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1591
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->j:Ljava/lang/String;

    const-string v2, "consentBodyText"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1592
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->k:Ljava/lang/String;

    const-string v2, "consentAcceptButtonText"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1593
    iget-object v1, p1, Lcom/vungle/ads/internal/ui/x;->l:Ljava/lang/String;

    const-string v2, "consentDenyButtonText"

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_88

    .line 1595
    :cond_83
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1598
    :goto_88
    const-string v1, "sdkVersion"

    const-string v2, "7.7.9"

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 1825
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1827
    iget-object v0, p1, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_b8

    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_b8
    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->e:Lcom/vungle/ads/internal/load/f;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/f;->b()V

    .line 2
    :cond_c
    const-string v0, "window.vungle.mraidBridge.notifyCommandComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->e:Lcom/vungle/ads/internal/load/f;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/f;->a()V

    .line 2
    :cond_c
    const-string v0, "window.vungle.mraidBridge.notifyCommandComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 648
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;-><init>(ZLcom/vungle/ads/internal/ui/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/j;

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    new-instance v2, Lcom/vungle/ads/internal/ui/q;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/ui/q;-><init>(Lcom/vungle/ads/internal/ui/x;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/internal/util/j;->a(Landroid/webkit/WebView;ILcom/vungle/ads/internal/ui/q;)V

    return-void
.end method

.method public final a(JJ)V
    .registers 8

    .line 649
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_25

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    .line 637
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x;->o:Lcom/vungle/ads/internal/ui/view/n;

    if-nez v1, :cond_a

    .line 638
    const-string p2, "window.vungle.mraidBridge.notifyCommandComplete()"

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .line 642
    :cond_a
    iget-object v6, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;-><init>(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;Landroid/net/Uri;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1012
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Lcom/vungle/ads/internal/ui/v;

    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/ui/v;-><init>(Ljava/lang/String;)V

    const-string v1, "VungleWebClient"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1013
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/internal/ui/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/ads/internal/ui/w;-><init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/omsdk/e;)V
    .registers 2

    .line 1011
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->q:Lcom/vungle/ads/internal/omsdk/f;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/ui/view/n;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->o:Lcom/vungle/ads/internal/ui/view/n;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/ui/view/o;)V
    .registers 3

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 12

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_22

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridgeExt.notifyBlackScreenResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {p0, v0, v1}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 662
    :cond_22
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning black screen result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleWebClient"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_53

    .line 665
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 666
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BLACK_SCREEN_IS_DETECTED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    int-to-long v4, p2

    .line 668
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 669
    invoke-static/range {v2 .. v8}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    return-void

    .line 675
    :cond_53
    sget-object p2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 676
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->BLACK_SCREEN_DETECTION_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 678
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 679
    invoke-virtual {p2, v0, p1, v1}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 680
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_2f

    .line 843
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 844
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isSilent"

    invoke-static {v1, v2, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 1007
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 4
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/x;->h:Z

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x;->i:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/ui/x;->j:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/ui/x;->k:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/vungle/ads/internal/ui/x;->l:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .registers 7

    .line 564
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 565
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x73d81938

    const/4 v3, 0x1

    if-eq v1, v2, :cond_45

    const v2, 0x54506bf

    if-eq v1, v2, :cond_31

    const v2, 0x72017d2

    if-eq v1, v2, :cond_1d

    goto :goto_5e

    :cond_1d
    const-string v1, "readyToPlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_5e

    .line 580
    :cond_26
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 581
    :cond_31
    const-string v1, "failToLoad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_5e

    .line 603
    :cond_3a
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 604
    :cond_45
    const-string v1, "propertiesChangeCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 606
    iget-boolean p2, p0, Lcom/vungle/ads/internal/ui/x;->n:Z

    if-nez p2, :cond_61

    .line 607
    iput-boolean v3, p0, Lcom/vungle/ads/internal/ui/x;->n:Z

    .line 608
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 632
    :cond_5e
    :goto_5e
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_61
    :goto_61
    return v3
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 12

    const-string v0, "VungleWebClient"

    const/4 v1, 0x0

    .line 10
    :try_start_3
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRAID Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mainFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9f

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_9f

    .line 385
    :cond_2b
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "parse(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_55

    if-nez v4, :cond_41

    goto :goto_9e

    :cond_41
    const-string v4, "https"

    const-string v5, "http"

    const-string v6, "mraid"

    const/4 v7, 0x1

    if-nez p3, :cond_75

    .line 393
    :try_start_4a
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    goto :goto_69

    :catchall_55
    move-exception p1

    goto :goto_a5

    .line 394
    :cond_57
    invoke-static {v3, v5, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_67

    .line 395
    invoke-static {v3, v4, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_64

    goto :goto_67

    .line 397
    :cond_64
    const-string p3, "unknownScheme"

    goto :goto_69

    .line 398
    :cond_67
    :goto_67
    const-string p3, "openNonMraid"

    :goto_69
    if-eqz p3, :cond_75

    .line 403
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/x;->o:Lcom/vungle/ads/internal/ui/view/n;

    if-eqz p1, :cond_74

    check-cast p1, Lcom/vungle/ads/internal/presenter/r;

    invoke-virtual {p1, p3, p2}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return v7

    .line 409
    :cond_75
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_80

    invoke-virtual {p0, p1, v2}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p1

    goto :goto_93

    .line 410
    :cond_80
    invoke-static {v3, v5, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 411
    invoke-static {v3, v4, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8f

    :cond_8d
    move p1, v1

    goto :goto_93

    .line 412
    :cond_8f
    :goto_8f
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/ui/x;->a(Ljava/lang/String;)Z

    move-result p1

    :goto_93
    if-eqz p1, :cond_96

    return v7

    .line 420
    :cond_96
    new-instance p1, Lcom/vungle/ads/internal/ui/r;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/ui/r;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_9e
    :goto_9e
    return v1

    .line 13
    :cond_9f
    :goto_9f
    const-string p1, "Invalid URL "

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_4a .. :try_end_a4} :catchall_55

    return v1

    .line 424
    :goto_a5
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_b7

    .line 425
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    .line 426
    const-string p3, "mraid:"

    invoke-static {p3, p2}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 558
    invoke-direct {p1, p2}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_b7
    return v1
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    .line 643
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open URL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleWebClient"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->o:Lcom/vungle/ads/internal/ui/view/n;

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    return v1

    .line 647
    :cond_1e
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, p1}, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;-><init>(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public final b(Z)V
    .registers 5

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/x;->r:Ljava/lang/Boolean;

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_35

    .line 144
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isViewable"

    invoke-static {v1, v2, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 284
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object p2, Lcom/vungle/ads/internal/ui/s;->a:Lcom/vungle/ads/internal/ui/s;

    const-string v0, "VungleWebClient"

    invoke-static {v0, p2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    if-nez p1, :cond_f

    goto :goto_31

    .line 8
    :cond_f
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/x;->a()V

    .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_28

    .line 14
    new-instance p2, Lcom/vungle/ads/internal/ui/o;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    invoke-direct {p2, v0}, Lcom/vungle/ads/internal/ui/o;-><init>(Lcom/vungle/ads/internal/ui/view/o;)V

    invoke-static {p1, p2}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline2;->m(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcessClient;)V

    .line 17
    :cond_28
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->q:Lcom/vungle/ads/internal/omsdk/f;

    if-eqz p2, :cond_31

    check-cast p2, Lcom/vungle/ads/internal/omsdk/e;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/omsdk/e;->a(Landroid/webkit/WebView;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 9

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_b

    .line 12
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_c

    :cond_b
    move-object p3, p1

    :goto_c
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_16

    .line 13
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_26

    .line 14
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-ne p2, v1, :cond_26

    move p2, v1

    goto :goto_27

    :cond_26
    move p2, v0

    .line 15
    :goto_27
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error desc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for URL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VungleWebClient"

    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 17
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5d

    :cond_5c
    move v2, v0

    :goto_5d
    if-eqz v2, :cond_62

    if-eqz p2, :cond_62

    move v0, v1

    .line 18
    :cond_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    if-eqz p2, :cond_7d

    check-cast p2, Lcom/vungle/ads/internal/presenter/r;

    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(ZLjava/lang/String;)V

    :cond_7d
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_f

    .line 2
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_10

    :cond_f
    move-object p3, p1

    :goto_10
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_1a

    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    :cond_1a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2a

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-ne p2, v1, :cond_2a

    move p2, v1

    goto :goto_2b

    :cond_2a
    move p2, v0

    .line 5
    :goto_2b
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Error desc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for URL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VungleWebClient"

    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_60

    .line 7
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/x;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_61

    :cond_60
    move v2, v0

    :goto_61
    if-eqz v2, :cond_66

    if-eqz p2, :cond_66

    move v0, v1

    .line 8
    :cond_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    if-eqz p2, :cond_81

    check-cast p2, Lcom/vungle/ads/internal/presenter/r;

    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(ZLjava/lang/String;)V

    :cond_81
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "didCrash="

    const-string v4, "VungleWebClient"

    const/4 v5, 0x1

    if-ge v1, v2, :cond_36

    .line 4
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p2, Lcom/vungle/ads/internal/ui/t;

    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/ui/t;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v4, p2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    if-eqz p1, :cond_35

    check-cast p1, Lcom/vungle/ads/internal/presenter/r;

    .line 6
    new-instance p2, Lcom/vungle/ads/WebViewRenderingProcessGone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/vungle/ads/WebViewRenderingProcessGone;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p2, v5, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    :cond_35
    return v5

    .line 8
    :cond_36
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v1, Lcom/vungle/ads/internal/ui/u;

    invoke-direct {v1, p1, p2}, Lcom/vungle/ads/internal/ui/u;-><init>(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    invoke-static {v4, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 10
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/x;->p:Lcom/vungle/ads/internal/ui/view/o;

    if-eqz p1, :cond_71

    if-eqz p2, :cond_4f

    invoke-static {p2}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_50

    :cond_4f
    move-object p2, v0

    :goto_50
    check-cast p1, Lcom/vungle/ads/internal/presenter/r;

    if-eqz p2, :cond_59

    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_5a

    :cond_59
    move p2, v5

    .line 12
    :goto_5a
    new-instance v1, Lcom/vungle/ads/WebViewRenderingProcessGone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vungle/ads/WebViewRenderingProcessGone;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1, p2, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    :cond_71
    return v5
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4

    if-eqz p2, :cond_d

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz p2, :cond_15

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    goto :goto_16

    :cond_15
    const/4 p2, 0x1

    :goto_16
    invoke-virtual {p0, p1, v0, p2}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/x;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/x;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/x;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/x;->b(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda1 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/x;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/x;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/x;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/x;->c(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda2 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/x;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/x;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/x;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda2;->f$1:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda3 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/n;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/vungle/ads/internal/ui/x;

.field public final synthetic f$3:Landroid/webkit/WebView;

.field public final synthetic f$4:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;Landroid/net/Uri;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$0:Lcom/vungle/ads/internal/ui/view/n;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$2:Lcom/vungle/ads/internal/ui/x;

    iput-object p4, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$3:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$4:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$0:Lcom/vungle/ads/internal/ui/view/n;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$2:Lcom/vungle/ads/internal/ui/x;

    iget-object v3, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$3:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda3;->f$4:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;Landroid/net/Uri;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda4 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/vungle/ads/internal/ui/x;


# direct methods
.method public synthetic constructor <init>(ZLcom/vungle/ads/internal/ui/x;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;->f$1:Lcom/vungle/ads/internal/ui/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda4;->f$1:Lcom/vungle/ads/internal/ui/x;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/x;->a(ZLcom/vungle/ads/internal/ui/x;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda5 (com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/n;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;->f$0:Lcom/vungle/ads/internal/ui/view/n;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;->f$0:Lcom/vungle/ads/internal/ui/view/n;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/x$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/ui/view/n;Ljava/lang/String;)V

    return-void
.end method
