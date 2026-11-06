###### Class ads_mobile_sdk.sm0 (ads_mobile_sdk.sm0)
.class public final Lads_mobile_sdk/sm0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/an0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/an0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sm0;->a:Lads_mobile_sdk/an0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1b

    invoke-static {v1}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1b

    const v0, 0xf4240

    .line 2
    invoke-static {v0}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v0

    goto :goto_30

    :cond_1b
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3b

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_3b

    .line 8
    invoke-static {v1}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_19

    return-object v0

    .line 11
    :goto_30
    iget-object v1, p0, Lads_mobile_sdk/sm0;->a:Lads_mobile_sdk/an0;

    .line 12
    iget-object v1, v1, Lads_mobile_sdk/an0;->d:Lads_mobile_sdk/ur3;

    .line 13
    check-cast v1, Lads_mobile_sdk/as3;

    const-string v2, "DeviceProperties.adServicesExtensionVersion"

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
