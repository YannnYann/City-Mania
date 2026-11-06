###### Class androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest (androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest)
.class public final Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;
.super Ljava/lang/Object;
.source "SourceRegistrationRequest.kt"


# instance fields
.field public final inputEvent:Landroid/view/InputEvent;

.field public final registrationUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 36
    :cond_4
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 37
    :cond_a
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->registrationUris:Ljava/util/List;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->registrationUris:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 38
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 32
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public final getRegistrationUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->registrationUris:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 42
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->registrationUris:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 43
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationUris=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->registrationUris:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], InputEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSourcesRegistrationRequest { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
