###### Class ads_mobile_sdk.kl3 (ads_mobile_sdk.kl3)
.class public final Lads_mobile_sdk/kl3;
.super Lads_mobile_sdk/pl3;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/an0;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/o21;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/an0;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;)V
    .registers 6

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lads_mobile_sdk/s11;->v:Lads_mobile_sdk/s11;

    invoke-direct {p0, v0}, Lads_mobile_sdk/pl3;-><init>(Lads_mobile_sdk/s11;)V

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 36
    iput-object p3, p0, Lads_mobile_sdk/kl3;->f:Lads_mobile_sdk/ex0;

    .line 37
    iput-object p4, p0, Lads_mobile_sdk/kl3;->g:Lads_mobile_sdk/o21;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->V:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final g()Z
    .registers 8

    .line 107
    iget-object v0, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    const-string v1, "android"

    const-string v2, "Theme.Translucent"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    iget-object v1, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Theme.GoogleMobileAds"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Please set theme of AdActivity to @style/Theme.GoogleMobileAds to enable\n      transparent background interstitial ads."

    const/4 v3, 0x0

    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    .line 116
    invoke-static {v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return v3

    .line 120
    :cond_2d
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.libraries.ads.mobile.sdk.common.AdActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_3a
    iget-object v5, p0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    if-eq v4, v0, :cond_51

    if-ne v4, v1, :cond_4b

    goto :goto_51

    .line 126
    :cond_4b
    invoke-static {v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_4e} :catch_4f

    return v3

    :catch_4f
    move-exception v0

    goto :goto_53

    :cond_51
    :goto_51
    const/4 v0, 0x1

    return v0

    .line 130
    :goto_53
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fetch AdActivity theme: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 131
    invoke-static {v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return v3
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    .line 35
    sget-object v13, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 36
    iget-object v1, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 37
    iget-object v1, v1, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "getPackageManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 75
    const-string v4, "geo:0,0?q=donuts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000

    .line 77
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_2a

    move v1, v6

    goto :goto_2b

    :cond_2a
    move v1, v3

    .line 78
    :goto_2b
    iget-object v7, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 79
    iget-object v7, v7, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    .line 80
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v2, Landroid/content/Intent;

    .line 117
    const-string v8, "http://www.google.com"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 118
    invoke-direct {v2, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    invoke-virtual {v7, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    move v6, v3

    .line 120
    :goto_49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 121
    iget-object v2, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 122
    iget-object v2, v2, Lads_mobile_sdk/an0;->f:Lkotlin/Lazy;

    .line 123
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 124
    iget-object v2, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 125
    iget-object v2, v2, Lads_mobile_sdk/an0;->k:Lkotlin/Lazy;

    .line 126
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 127
    iget-object v2, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 128
    iget-object v2, v2, Lads_mobile_sdk/an0;->h:Lkotlin/Lazy;

    .line 129
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 130
    iget-object v5, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 131
    iget-object v5, v5, Lads_mobile_sdk/an0;->g:Lkotlin/Lazy;

    .line 132
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v5

    .line 135
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v9

    const-string v10, "getDefault(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v9}, Landroid/os/LocaleList;->size()I

    move-result v10

    :goto_a2
    if-ge v3, v10, :cond_b7

    .line 137
    invoke-virtual {v9, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getLanguage(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 138
    :cond_b7
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 139
    iget-object v3, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 140
    iget-object v3, v3, Lads_mobile_sdk/an0;->j:Lkotlin/Lazy;

    .line 141
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 142
    iget-object v3, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 143
    iget-object v3, v3, Lads_mobile_sdk/an0;->i:Lkotlin/Lazy;

    .line 144
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    .line 145
    iget-object v3, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v14

    const/16 v3, 0x400

    move/from16 p1, v1

    move v5, v2

    int-to-long v1, v3

    div-long/2addr v14, v1

    .line 147
    iget-object v1, v0, Lads_mobile_sdk/kl3;->e:Lads_mobile_sdk/an0;

    .line 148
    iget-object v1, v1, Lads_mobile_sdk/an0;->m:Lkotlin/Lazy;

    .line 149
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 150
    iget-object v1, v0, Lads_mobile_sdk/kl3;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    const-string v2, "gads:add_system_default_locale"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 169
    iget-object v1, v0, Lads_mobile_sdk/kl3;->g:Lads_mobile_sdk/o21;

    iget-object v2, v0, Lads_mobile_sdk/kl3;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lads_mobile_sdk/o21;->a(Landroid/content/Context;)Lads_mobile_sdk/n21;

    move-result-object v1

    .line 170
    iget-object v2, v1, Lads_mobile_sdk/n21;->b:Ljava/lang/String;

    .line 171
    iget-object v1, v1, Lads_mobile_sdk/n21;->a:Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_12e

    :cond_12b
    const/4 v2, 0x0

    const/16 v20, 0x0

    .line 172
    :goto_12e
    iget-object v1, v0, Lads_mobile_sdk/kl3;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    const-string v0, "gads:enable_os_version_in_decagon_ad_request:enabled"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v0, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 191
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_148

    :cond_147
    const/4 v0, 0x0

    .line 196
    :goto_148
    new-instance v1, Lads_mobile_sdk/q01;

    .line 211
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 214
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/kl3;->g()Z

    move-result v21

    move-object v3, v1

    .line 217
    new-instance v1, Lads_mobile_sdk/jl3;

    .line 220
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 231
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v10, v20

    move-object/from16 v20, v0

    move-object v0, v3

    move v3, v6

    move v6, v5

    move-object v5, v2

    move/from16 v2, p1

    .line 233
    invoke-direct/range {v1 .. v22}, Lads_mobile_sdk/jl3;-><init>(ZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ZILjava/lang/String;ZZ)V

    .line 234
    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
