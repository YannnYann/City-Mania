###### Class com.unity3d.services.core.extensions.StringExtensionsKt (com.unity3d.services.core.extensions.StringExtensionsKt)
.class public final Lcom/unity3d/services/core/extensions/StringExtensionsKt;
.super Ljava/lang/Object;
.source "StringExtensions.kt"


# direct methods
.method public static final toUnityMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1b

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Unity Ads] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1b
    :goto_1b
    const-string p0, "[Unity Ads] Internal error"

    return-object p0
.end method
