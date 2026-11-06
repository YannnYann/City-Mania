###### Class ads_mobile_sdk.my3 (ads_mobile_sdk.my3)
.class public final Lads_mobile_sdk/my3;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ky3;Lads_mobile_sdk/wu2;J)V
    .registers 9

    const v0, 0x7fbd7a3e

    not-int v1, v0

    const v2, 0x5111440

    and-int/2addr v1, v2

    const v2, 0x19a9a08e

    or-int/2addr v1, v2

    const v2, 0x345c1c60

    and-int/2addr v0, v2

    const v2, 0x70ed8a21

    or-int/2addr v0, v2

    const v2, -0x4d233d43    # -2.5699928E-8f

    const v3, 0x2bf4aab1

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x682dfed6

    const v2, 0x606ed7f6

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lads_mobile_sdk/ky3;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {p2}, Lads_mobile_sdk/wu2;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const-string p3, "bk3t6gFTc30="

    invoke-static {p3}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/ky3;Ljava/lang/Exception;)V
    .registers 6

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lads_mobile_sdk/ky3;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "bk0="

    invoke-static {v1}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    return-void
.end method
