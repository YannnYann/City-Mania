###### Class ads_mobile_sdk.hk (ads_mobile_sdk.hk)
.class public final Lads_mobile_sdk/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:Lads_mobile_sdk/na;

.field public final d:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ts3;Lads_mobile_sdk/na;Lcom/google/common/util/concurrent/ListeningExecutorService;)V
    .registers 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lads_mobile_sdk/hk;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    const-string v0, "E"

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hk;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 92
    iput-object p1, p0, Lads_mobile_sdk/hk;->a:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lads_mobile_sdk/hk;->b:Lads_mobile_sdk/ts3;

    .line 94
    iput-object p3, p0, Lads_mobile_sdk/hk;->c:Lads_mobile_sdk/na;

    .line 95
    iput-object p4, p0, Lads_mobile_sdk/hk;->d:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;Lads_mobile_sdk/na;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 152
    new-instance v0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;Lads_mobile_sdk/na;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lads_mobile_sdk/na;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 12

    .line 572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, ""

    if-ge v0, v1, :cond_c

    .line 573
    invoke-virtual {p2, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-object v2

    .line 579
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 580
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 582
    invoke-virtual {p1}, Lads_mobile_sdk/na;->R()Ljava/lang/String;

    move-result-object v1

    const-string v3, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v5, v3

    :goto_22
    const/4 v6, 0x2

    if-ge v5, v6, :cond_31

    .line 583
    aget-object v7, v1, v5

    .line 584
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_32

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_31
    move-object v7, v2

    .line 590
    :goto_32
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v1

    .line 591
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 592
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 597
    invoke-virtual {p1}, Lads_mobile_sdk/na;->B()Ljava/lang/String;

    move-result-object p1

    const-string v1, "308204a830820390a003020102020900d585b86c7dd34ef5300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353233333635365a170d3335303930313233333635365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6ce2e080abfe2314dd18db3cfd3185cb43d33fa0c74e1bdb6d1db8913f62c5c39df56f846813d65bec0f3ca426b07c5a8ed5a3990c167e76bc999b927894b8f0b22001994a92915e572c56d2a301ba36fc5fc113ad6cb9e7435a16d23ab7dfaeee165e4df1f0a8dbda70a869d516c4e9d051196ca7c0c557f175bc375f948c56aae86089ba44f8aa6a4dd9a7dbf2c0a352282ad06b8cc185eb15579eef86d080b1d6189c0f9af98b1c2ebd107ea45abdb68a3c7838a5e5488c76c53d40b121de7bbd30e620c188ae1aa61dbbc87dd3c645f2f55f3d4c375ec4070a93f7151d83670c16a971abe5ef2d11890e1b8aef3298cf066bf9e6ce144ac9ae86d1c1b0f020103a381fc3081f9301d0603551d0e041604148d1cc5be954c433c61863a15b04cbc03f24fe0b23081c90603551d230481c13081be80148d1cc5be954c433c61863a15b04cbc03f24fe0b2a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900d585b86c7dd34ef5300c0603551d13040530030101ff300d06092a864886f70d0101040500038201010019d30cf105fb78923f4c0d7dd223233d40967acfce00081d5bd7c6e9d6ed206b0e11209506416ca244939913d26b4aa0e0f524cad2bb5c6e4ca1016a15916ea1ec5dc95a5e3a010036f49248d5109bbf2e1e618186673a3be56daf0b77b1c229e3c255e3e84c905d2387efba09cbf13b202b4e5a22c93263484a23d2fc29fa9f1939759733afd8aa160f4296c2d0163e8182859c6643e9c1962fa0c18333335bc090ff9a6b22ded1ad444229a539a94eefadabd065ced24b3e51e5dd7b66787bef12fe97fba484c423fb4ff8cc494c02f0f5051612ff6529393e8e46eac5bb21f277c151aa5f2aa627d1e89da70ab6033569de3b9897bfff7ca9da3e1243f60b"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    :goto_63
    if-ge v3, v6, :cond_71

    .line 598
    aget-object v1, p1, v3

    .line 599
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_72

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_71
    move-object v1, v2

    .line 605
    :goto_72
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    .line 606
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_8a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v8, Lads_mobile_sdk/hk$$ExternalSyntheticLambda7;

    invoke-direct {v8, p2}, Lads_mobile_sdk/hk$$ExternalSyntheticLambda7;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 611
    invoke-static/range {v3 .. v8}, Lads_mobile_sdk/hk$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_99} :catch_9a
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_99} :catch_9a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_99} :catch_9a

    return-object v2

    .line 642
    :catch_9a
    invoke-virtual {p2, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static synthetic a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/List;)V
    .registers 8

    .line 245
    const-string v0, ""

    if-nez p1, :cond_8

    .line 426
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    .line 431
    :cond_8
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_36

    .line 432
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lads_mobile_sdk/hk$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/content/pm/ApkChecksum;

    move-result-object v3

    .line 433
    invoke-static {v3}, Lads_mobile_sdk/hk$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/ApkChecksum;)I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_33

    .line 435
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    invoke-static {v3}, Lads_mobile_sdk/hk$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/pm/ApkChecksum;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_36

    return-void

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 444
    :catchall_36
    :cond_36
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 241
    iget-object v0, p0, Lads_mobile_sdk/hk;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 242
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 244
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/hk;->d:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lads_mobile_sdk/hk$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lads_mobile_sdk/hk$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/hk;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 541
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 542
    iget-object p1, p0, Lads_mobile_sdk/hk;->a:Landroid/content/Context;

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object p1

    .line 544
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_5e

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_5e

    .line 549
    :cond_20
    :try_start_20
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_20 .. :try_end_25} :catch_5e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_25} :catch_5e

    const/16 v0, 0x4000

    .line 550
    :try_start_27
    new-array v0, v0, [B

    .line 551
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 552
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_33
    const/4 v4, -0x1

    if-eq v3, v4, :cond_41

    const/4 v4, 0x0

    .line 554
    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 555
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_33

    :catchall_3f
    move-exception v0

    goto :goto_55

    .line 557
    :cond_41
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_3f

    .line 558
    :try_start_51
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_51 .. :try_end_54} :catch_5e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_51 .. :try_end_54} :catch_5e

    return-object v0

    .line 559
    :goto_55
    :try_start_55
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception p1

    :try_start_5a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw v0
    :try_end_5e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5a .. :try_end_5e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5a .. :try_end_5e} :catch_5e

    :catch_5e
    :cond_5e
    :goto_5e
    return-object v1

    :cond_5f
    return-object p1
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/hk;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/hk;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method public final synthetic b()Ljava/lang/String;
    .registers 6

    .line 96
    new-instance v0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lads_mobile_sdk/hk$$ExternalSyntheticLambda5;-><init>(Lads_mobile_sdk/hk;)V

    .line 105
    monitor-enter p0

    .line 106
    :try_start_6
    iget-object v1, p0, Lads_mobile_sdk/hk;->b:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->h:Lads_mobile_sdk/lq0;

    iget-object v3, p0, Lads_mobile_sdk/hk;->a:Landroid/content/Context;

    iget-object v4, p0, Lads_mobile_sdk/hk;->c:Lads_mobile_sdk/na;

    .line 110
    invoke-static {v3, v4}, Lads_mobile_sdk/hk;->a(Landroid/content/Context;Lads_mobile_sdk/na;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iget-object v4, p0, Lads_mobile_sdk/hk;->d:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 111
    invoke-static {v3, v0, v4}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 112
    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hk;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 118
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_22

    .line 119
    const-string v0, ""

    return-object v0

    :catchall_22
    move-exception v0

    .line 120
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/hk;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method public final c(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    const-string v0, "ai"

    iget-object v1, p0, Lads_mobile_sdk/hk;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

###### Class ads_mobile_sdk.hk$$ExternalSyntheticLambda4 (ads_mobile_sdk.hk$$ExternalSyntheticLambda4)
.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/hk;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/hk;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/hk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/hk;

    invoke-virtual {v0}, Lads_mobile_sdk/hk;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.hk$$ExternalSyntheticLambda5 (ads_mobile_sdk.hk$$ExternalSyntheticLambda5)
.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/hk;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/hk;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/hk;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/hk;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.hk$$ExternalSyntheticLambda6 (ads_mobile_sdk.hk$$ExternalSyntheticLambda6)
.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lads_mobile_sdk/na;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lads_mobile_sdk/na;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;->f$1:Lads_mobile_sdk/na;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda6;->f$1:Lads_mobile_sdk/na;

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/hk;->a(Landroid/content/Context;Lads_mobile_sdk/na;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.hk$$ExternalSyntheticLambda7 (ads_mobile_sdk.hk$$ExternalSyntheticLambda7)
.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field public final synthetic f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda7;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda7;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0, p1}, Lads_mobile_sdk/hk;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/List;)V

    return-void
.end method
