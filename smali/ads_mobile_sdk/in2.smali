###### Class ads_mobile_sdk.in2 (ads_mobile_sdk.in2)
.class public abstract Lads_mobile_sdk/in2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lads_mobile_sdk/pt1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/pt1;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lads_mobile_sdk/pt1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 8

    .line 1
    const-string v0, "Play Store package is not found."

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_b2

    if-nez v3, :cond_1a

    .line 8
    sget-object v4, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Play Store package is disabled."

    invoke-virtual {v4, v6, v5}, Lads_mobile_sdk/pt1;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    if-eqz v3, :cond_b9

    .line 9
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    .line 10
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_28} :catch_aa

    if-eqz p0, :cond_a0

    .line 11
    array-length v0, p0

    if-nez v0, :cond_2f

    goto/16 :goto_a0

    .line 17
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    array-length v1, p0

    move v3, v2

    :goto_36
    if-ge v3, v1, :cond_7f

    aget-object v4, p0, v3

    .line 19
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 20
    :try_start_3e
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_44} :catch_52

    .line 25
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/16 v5, 0xb

    .line 27
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_54

    .line 28
    :catch_52
    const-string v4, ""

    .line 29
    :goto_54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v5, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 31
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "dev-keys"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    const-string v6, "test-keys"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 32
    :cond_71
    const-string v5, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_7d

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_7d
    :goto_7d
    const/4 v2, 0x1

    goto :goto_b9

    .line 33
    :cond_7f
    sget-object p0, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    .line 36
    const-string v1, ", "

    invoke-static {v1, v0}, Lads_mobile_sdk/in2$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Play Store package certs are not valid. Found these sha256 certs: ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/pt1;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b9

    .line 39
    :cond_a0
    :goto_a0
    sget-object p0, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Play Store package is not signed -- possibly self-built package. Could not verify."

    invoke-virtual {p0, v1, v0}, Lads_mobile_sdk/pt1;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b9

    .line 40
    :catch_aa
    sget-object p0, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/pt1;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b9

    .line 41
    :catch_b2
    sget-object p0, Lads_mobile_sdk/in2;->a:Lads_mobile_sdk/pt1;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/pt1;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b9
    :goto_b9
    return v2
.end method
