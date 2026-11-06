###### Class ads_mobile_sdk.z71 (ads_mobile_sdk.z71)
.class public final Lads_mobile_sdk/z71;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/a81;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/a81;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/z71;->a:Lads_mobile_sdk/a81;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/z71;->a:Lads_mobile_sdk/a81;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/a81;->d:Lads_mobile_sdk/ja1;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v2, "force_use_cronet"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    goto :goto_3a

    .line 5
    :cond_1a
    iget-object v0, p0, Lads_mobile_sdk/z71;->a:Lads_mobile_sdk/a81;

    .line 6
    iget-object v0, v0, Lads_mobile_sdk/a81;->a:Lads_mobile_sdk/ex0;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v2, "key"

    const-string v3, "gads:use_cronet_for_http_client:enabled"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 26
    :goto_3a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
