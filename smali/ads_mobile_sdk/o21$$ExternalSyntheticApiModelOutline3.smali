###### Class ads_mobile_sdk.o21$$ExternalSyntheticApiModelOutline3 (ads_mobile_sdk.o21$$ExternalSyntheticApiModelOutline3)
.class public final synthetic Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/LocaleManager;)Landroid/os/LocaleList;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method
