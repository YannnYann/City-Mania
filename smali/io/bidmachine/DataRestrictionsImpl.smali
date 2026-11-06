###### Class io.bidmachine.DataRestrictionsImpl (io.bidmachine.DataRestrictionsImpl)
.class public final Lio/bidmachine/DataRestrictionsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/DataRestrictions;


# instance fields
.field private final platformPrivacySettings:Lio/bidmachine/internal/t;

.field private final privacyGroupRestrictions:Lio/bidmachine/internal/w;

.field private final publisherPrivacySettings:Lio/bidmachine/internal/A;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/w;Lio/bidmachine/internal/A;Lio/bidmachine/internal/t;)V
    .registers 5

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherPrivacySettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformPrivacySettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    .line 3
    iput-object p2, p0, Lio/bidmachine/DataRestrictionsImpl;->publisherPrivacySettings:Lio/bidmachine/internal/A;

    .line 4
    iput-object p3, p0, Lio/bidmachine/DataRestrictionsImpl;->platformPrivacySettings:Lio/bidmachine/internal/t;

    return-void
.end method


# virtual methods
.method public getHasAdIdsPermission()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    invoke-virtual {v0}, Lio/bidmachine/internal/w;->e()Lio/bidmachine/internal/w$b;

    move-result-object v0

    sget-object v1, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getHasDemographicsPermission()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    invoke-virtual {v0}, Lio/bidmachine/internal/w;->a()Lio/bidmachine/internal/w$b;

    move-result-object v0

    sget-object v1, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getHasDeviceInfoPermission()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    invoke-virtual {v0}, Lio/bidmachine/internal/w;->b()Lio/bidmachine/internal/w$b;

    move-result-object v0

    sget-object v1, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getHasNetworkPermission()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    invoke-virtual {v0}, Lio/bidmachine/internal/w;->c()Lio/bidmachine/internal/w$b;

    move-result-object v0

    sget-object v1, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getHasPreciseLocationPermission()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->privacyGroupRestrictions:Lio/bidmachine/internal/w;

    invoke-virtual {v0}, Lio/bidmachine/internal/w;->d()Lio/bidmachine/internal/w$b;

    move-result-object v0

    sget-object v1, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getUsPrivacyString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->publisherPrivacySettings:Lio/bidmachine/internal/A;

    invoke-virtual {v0}, Lio/bidmachine/internal/A;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->platformPrivacySettings:Lio/bidmachine/internal/t;

    invoke-virtual {v0}, Lio/bidmachine/internal/t;->a()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public isUserAgeRestricted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->publisherPrivacySettings:Lio/bidmachine/internal/A;

    invoke-virtual {v0}, Lio/bidmachine/internal/A;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isUserHasCcpaConsent()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DataRestrictionsImpl;->getUsPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_25

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4e

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v0

    if-eqz v0, :cond_25

    return v3

    :cond_25
    return v1
.end method

.method public isUserHasConsent()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->publisherPrivacySettings:Lio/bidmachine/internal/A;

    invoke-virtual {v0}, Lio/bidmachine/internal/A;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->platformPrivacySettings:Lio/bidmachine/internal/t;

    invoke-virtual {v0}, Lio/bidmachine/internal/t;->d()Lio/bidmachine/internal/O;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lio/bidmachine/internal/O;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public isUserInCcpaScope()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DataRestrictionsImpl;->getUsPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_22

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "---"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method public isUserInGdprScope()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->publisherPrivacySettings:Lio/bidmachine/internal/A;

    invoke-virtual {v0}, Lio/bidmachine/internal/A;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/DataRestrictionsImpl;->platformPrivacySettings:Lio/bidmachine/internal/t;

    invoke-virtual {v0}, Lio/bidmachine/internal/t;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
