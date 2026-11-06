###### Class io.bidmachine.internal.H (io.bidmachine.internal.H)
.class public final Lio/bidmachine/internal/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/internal/G;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/H$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/internal/H$a;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/H$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/H$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/H;->b:Lio/bidmachine/internal/H$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lio/bidmachine/internal/G;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/internal/H;->b:Lio/bidmachine/internal/H$a;

    invoke-virtual {v0, p0}, Lio/bidmachine/internal/H$a;->a(Landroid/content/Context;)Lio/bidmachine/internal/G;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "IABGPP_HDR_GppString"

    invoke-static {v0, v3, v1, v2, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_gdprApplies"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optIntOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v2

    :cond_16
    :goto_16
    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_25
    return-object v2
.end method

.method public c()Ljava/util/List;
    .registers 11

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    const-string v2, "IABGPP_GppSID"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    const-string v0, "_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v3

    :goto_1c
    if-eqz v0, :cond_45

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_45

    .line 27
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 68
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_44
    return-object v1

    :cond_45
    :goto_45
    return-object v3
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "IABUSPrivacy_String"

    invoke-static {v0, v3, v1, v2, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    const-string v2, "IABConsent_SubjectToGDPR"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_17
    return-object v3
.end method

.method public f()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "IABTCF_TCString"

    invoke-static {v0, v3, v1, v2, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/H;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "IABConsent_ConsentString"

    invoke-static {v0, v3, v1, v2, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull$default(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.H.a (io.bidmachine.internal.H$a)
.class public final Lio/bidmachine/internal/H$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/internal/H$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/bidmachine/internal/G;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/internal/H;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "getDefaultSharedPreferences(context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lio/bidmachine/internal/H;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method
