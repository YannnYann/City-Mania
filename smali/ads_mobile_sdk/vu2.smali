###### Class ads_mobile_sdk.vu2 (ads_mobile_sdk.vu2)
.class public final Lads_mobile_sdk/vu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Lads_mobile_sdk/ks1;

.field public final e:Lads_mobile_sdk/ts3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ts3;)V
    .registers 6

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lads_mobile_sdk/vu2;->c:Landroid/content/SharedPreferences;

    .line 129
    const-string p2, "pccache2"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 130
    invoke-static {p2, v0}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/vu2;->a:Ljava/io/File;

    .line 133
    const-string p2, "tmppccache2"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    .line 134
    iput-object p3, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    .line 135
    iput-object p4, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a(I)Lads_mobile_sdk/iv2;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_23

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/vu2;->c:Landroid/content/SharedPreferences;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LATMTD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/yn;

    .line 4
    iget v2, v2, Lads_mobile_sdk/yn;->a:I

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_23
    const/4 v0, 0x2

    if-ne p1, v0, :cond_45

    .line 8
    iget-object p1, p0, Lads_mobile_sdk/vu2;->c:Landroid/content/SharedPreferences;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FBAMTD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/yn;

    .line 10
    iget v2, v2, Lads_mobile_sdk/yn;->a:I

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_45
    move-object p1, v1

    .line 14
    :goto_46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return-object v1

    .line 19
    :cond_4d
    :try_start_4d
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/iv2;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/iv2;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/vu2;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_65
    .catch Lads_mobile_sdk/np1; {:try_start_4d .. :try_end_65} :catch_68

    if-eqz v0, :cond_6f

    return-object p1

    .line 24
    :catch_68
    iget-object p1, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->S2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    :cond_6f
    return-object v1
.end method

.method public final a()Ljava/io/File;
    .registers 4

    .line 382
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lads_mobile_sdk/vu2;->a:Ljava/io/File;

    iget-object v2, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/yn;

    .line 383
    iget v2, v2, Lads_mobile_sdk/yn;->a:I

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1e
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/iv2;[B[B)V
    .registers 11

    .line 299
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b4

    array-length v1, p3

    if-nez v1, :cond_13

    goto/16 :goto_1b4

    .line 303
    :cond_13
    iget-object v1, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    invoke-static {v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;)Z

    .line 304
    iget-object v1, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 305
    iget-object v1, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    move-object v1, v3

    goto :goto_32

    .line 309
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    .line 310
    :goto_32
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 312
    iget-object v1, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    const-string v2, "pcam.jar"

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz p2, :cond_56

    .line 313
    array-length v5, p2

    if-lez v5, :cond_56

    .line 315
    invoke-static {v1, p2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;[B)Z

    move-result p2

    if-nez p2, :cond_56

    goto/16 :goto_1b4

    .line 318
    :cond_56
    iget-object p2, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    .line 319
    const-string v1, "pcbc"

    invoke-static {p2, v0, v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 320
    invoke-static {p2, p3}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;[B)Z

    move-result p2

    if-nez p2, :cond_6c

    goto/16 :goto_1b4

    .line 321
    :cond_6c
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object p2

    invoke-virtual {p2}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_7d

    goto/16 :goto_14f

    .line 325
    :cond_7d
    iget-object p3, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    invoke-static {p3, p2, v2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 326
    iget-object v5, p0, Lads_mobile_sdk/vu2;->b:Ljava/io/File;

    .line 327
    invoke-static {v5, p2, v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 328
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, p2, v2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 330
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, p2, v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 332
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-virtual {p3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_c6

    .line 333
    iget-object p1, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->T2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto/16 :goto_14f

    .line 336
    :cond_c6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_148

    invoke-virtual {v5, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_148

    .line 337
    invoke-virtual {p0, v0}, Lads_mobile_sdk/vu2;->a(I)Lads_mobile_sdk/iv2;

    move-result-object p2

    .line 338
    iget-object p3, p0, Lads_mobile_sdk/vu2;->c:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    if-eqz p2, :cond_117

    .line 341
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {p2}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FBAMTD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/yn;

    .line 345
    iget v2, v2, Lads_mobile_sdk/yn;->a:I

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {p2}, Lads_mobile_sdk/f;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-interface {p3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    :cond_117
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LATMTD"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lads_mobile_sdk/vu2;->d:Lads_mobile_sdk/ks1;

    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yn;

    .line 350
    iget v1, v1, Lads_mobile_sdk/yn;->a:I

    .line 351
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_14f

    .line 356
    iget-object p1, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->V2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_14f

    .line 357
    :cond_148
    iget-object p1, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->U2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 358
    :cond_14f
    :goto_14f
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 359
    invoke-virtual {p0, v0}, Lads_mobile_sdk/vu2;->a(I)Lads_mobile_sdk/iv2;

    move-result-object p2

    if-eqz p2, :cond_165

    .line 361
    invoke-virtual {p2}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object p2

    invoke-virtual {p2}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_165
    const/4 p2, 0x2

    .line 363
    invoke-virtual {p0, p2}, Lads_mobile_sdk/vu2;->a(I)Lads_mobile_sdk/iv2;

    move-result-object p2

    if-eqz p2, :cond_177

    .line 365
    invoke-virtual {p2}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object p2

    invoke-virtual {p2}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_177
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_182

    goto :goto_1b3

    .line 371
    :cond_182
    array-length p3, p2

    move v0, v4

    :goto_184
    if-ge v0, p3, :cond_1b3

    aget-object v1, p2, v0

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b0

    .line 374
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v2

    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19e

    move-object v1, v3

    goto :goto_1a7

    .line 378
    :cond_19e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    .line 379
    :goto_1a7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 380
    invoke-static {v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;)Z

    :cond_1b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_184

    :cond_1b3
    :goto_1b3
    return-void

    .line 381
    :cond_1b4
    :goto_1b4
    iget-object p1, p0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->R2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    .line 291
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v0

    const-string v1, "pcam.jar"

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    .line 293
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v0

    const-string v1, "pcam"

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 296
    :cond_26
    invoke-virtual {p0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcbc"

    invoke-static {v1, p1, v2}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method
