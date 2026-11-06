###### Class info.flowersoft.theotown.draft.PrivilegeLevel (info.flowersoft.theotown.draft.PrivilegeLevel)
.class public interface abstract Linfo/flowersoft/theotown/draft/PrivilegeLevel;
.super Ljava/lang/Object;
.source "PrivilegeLevel.java"


# direct methods
.method public static localize(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 26
    const-string p0, "Super"

    return-object p0

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_22
    const-string p0, "Privileged"

    return-object p0

    .line 24
    :cond_25
    const-string p0, "None"

    return-object p0
.end method
