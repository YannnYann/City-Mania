###### Class io.bidmachine.util.UtilsKt (io.bidmachine.util.UtilsKt)
.class public final Lio/bidmachine/util/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/bidmachine/util/UtilsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,906:1\n846#1,4:907\n846#1,4:911\n846#1,4:923\n846#1,4:927\n846#1,4:931\n727#1:935\n846#1,2:936\n728#1:938\n848#1,2:939\n729#1:941\n727#1:942\n846#1,2:943\n728#1:945\n848#1,2:946\n729#1:948\n727#1:949\n846#1,2:950\n728#1:952\n848#1,2:953\n729#1:955\n846#1,2:956\n727#1:958\n846#1,2:959\n728#1:961\n848#1,2:962\n729#1:964\n848#1,2:965\n727#1:967\n846#1,2:968\n728#1:970\n848#1,2:971\n729#1:973\n727#1:974\n846#1,2:975\n728#1:977\n848#1,2:978\n729#1:980\n727#1:981\n846#1,2:982\n728#1:984\n848#1,2:985\n729#1:987\n727#1:988\n846#1,2:989\n728#1:991\n848#1,2:992\n729#1:994\n727#1:995\n846#1,2:996\n728#1:998\n848#1,2:999\n729#1:1001\n727#1:1002\n846#1,2:1003\n728#1:1005\n848#1,2:1006\n729#1:1008\n727#1:1009\n846#1,2:1010\n728#1:1012\n848#1,2:1013\n729#1:1015\n727#1:1016\n846#1,2:1017\n728#1:1019\n848#1,2:1020\n729#1:1022\n727#1:1023\n846#1,2:1024\n728#1:1026\n848#1,2:1027\n729#1:1029\n846#1,4:1030\n846#1,4:1034\n846#1,4:1038\n846#1,4:1042\n846#1,4:1046\n846#1,4:1062\n1291#2,2:915\n1851#3,2:917\n800#3,11:1051\n211#4,2:919\n1282#5,2:921\n1#6:1050\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n470#1:907,4\n476#1:911,4\n623#1:923,4\n645#1:927,4\n651#1:931,4\n695#1:935\n695#1:936,2\n695#1:938\n695#1:939,2\n695#1:941\n697#1:942\n697#1:943,2\n697#1:945\n697#1:946,2\n697#1:948\n699#1:949\n699#1:950,2\n699#1:952\n699#1:953,2\n699#1:955\n705#1:956,2\n706#1:958\n706#1:959,2\n706#1:961\n706#1:962,2\n706#1:964\n705#1:965,2\n709#1:967\n709#1:968,2\n709#1:970\n709#1:971,2\n709#1:973\n711#1:974\n711#1:975,2\n711#1:977\n711#1:978,2\n711#1:980\n713#1:981\n713#1:982,2\n713#1:984\n713#1:985,2\n713#1:987\n715#1:988\n715#1:989,2\n715#1:991\n715#1:992,2\n715#1:994\n717#1:995\n717#1:996,2\n717#1:998\n717#1:999,2\n717#1:1001\n719#1:1002\n719#1:1003,2\n719#1:1005\n719#1:1006,2\n719#1:1008\n721#1:1009\n721#1:1010,2\n721#1:1012\n721#1:1013,2\n721#1:1015\n723#1:1016\n723#1:1017,2\n723#1:1019\n723#1:1020,2\n723#1:1022\n725#1:1023\n725#1:1024,2\n725#1:1026\n725#1:1027,2\n725#1:1029\n727#1:1030,4\n810#1:1034,4\n815#1:1038,4\n820#1:1042,4\n826#1:1046,4\n904#1:1062,4\n507#1:915,2\n517#1:917,2\n877#1:1051,11\n527#1:919,2\n617#1:921,2\n*E\n"
.end annotation


# static fields
.field public static final BOOLEAN_TYPE_CONVERSION:Lio/bidmachine/util/conversion/BooleanTypeConversion;

.field public static final DOUBLE_TYPE_CONVERSION:Lio/bidmachine/util/conversion/DoubleTypeConversion;

.field public static final FLOAT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/FloatTypeConversion;

.field public static final INT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/IntTypeConversion;

.field public static final LONG_TYPE_CONVERSION:Lio/bidmachine/util/conversion/LongTypeConversion;

.field public static final STRING_TYPE_CONVERSION:Lio/bidmachine/util/conversion/StringTypeConversion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 459
    new-instance v0, Lio/bidmachine/util/conversion/StringTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/StringTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->STRING_TYPE_CONVERSION:Lio/bidmachine/util/conversion/StringTypeConversion;

    .line 460
    new-instance v0, Lio/bidmachine/util/conversion/BooleanTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/BooleanTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->BOOLEAN_TYPE_CONVERSION:Lio/bidmachine/util/conversion/BooleanTypeConversion;

    .line 461
    new-instance v0, Lio/bidmachine/util/conversion/IntTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/IntTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->INT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/IntTypeConversion;

    .line 462
    new-instance v0, Lio/bidmachine/util/conversion/LongTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/LongTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->LONG_TYPE_CONVERSION:Lio/bidmachine/util/conversion/LongTypeConversion;

    .line 463
    new-instance v0, Lio/bidmachine/util/conversion/FloatTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/FloatTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->FLOAT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/FloatTypeConversion;

    .line 464
    new-instance v0, Lio/bidmachine/util/conversion/DoubleTypeConversion;

    invoke-direct {v0}, Lio/bidmachine/util/conversion/DoubleTypeConversion;-><init>()V

    sput-object v0, Lio/bidmachine/util/UtilsKt;->DOUBLE_TYPE_CONVERSION:Lio/bidmachine/util/conversion/DoubleTypeConversion;

    return-void
.end method

.method public static final addAllSafely(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 548
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final applyMD5([B)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 478
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 479
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final castSafely(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final closeSafely(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    .line 646
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method public static final createHexHashCode(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toHexString(hashCode())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final decodeBase64(Ljava/lang/String;I)[B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    :try_start_5
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64([BI)[B

    move-result-object p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final decodeBase64([BI)[B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    :try_start_5
    invoke-static {p0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic decodeBase64$default(Ljava/lang/String;IILjava/lang/Object;)[B
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x2

    .line 815
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeBase64$default([BIILjava/lang/Object;)[B
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x2

    .line 825
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decodeBase64ToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64ToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeBase64ToString([BI)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64([BI)[B

    move-result-object p0

    if-eqz p0, :cond_13

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final divide(Ljava/lang/String;C)Lkotlin/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    .line 603
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_36

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p0, p1, :cond_1a

    goto :goto_36

    :cond_1a
    const/4 p1, 0x0

    .line 607
    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final dpToPx(Landroid/content/Context;F)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 740
    invoke-static {p0, v0, p1}, Lio/bidmachine/util/UtilsKt;->unitToPx(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static final encodeToStringBase64([BI)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    :try_start_5
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic encodeToStringBase64$default([BIILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x2

    .line 819
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->encodeToStringBase64([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/util/KeyHolder;",
            ">([TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    .line 613
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4b

    .line 616
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_24
    if-ge v5, v3, :cond_4b

    aget-object v6, p0, v5

    if-eqz v6, :cond_3f

    .line 618
    invoke-interface {v6}, Lio/bidmachine/util/KeyHolder;->getKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_40

    :cond_3f
    move-object v7, v0

    :goto_40
    const/4 v8, 0x2

    invoke-static {v7, p1, v4, v8, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    return-object v6

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static final findActivity(Landroid/content/ContextWrapper;I)Landroid/app/Activity;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-lt p1, v0, :cond_b

    return-object v1

    .line 777
    :cond_b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 779
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 780
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 783
    :cond_16
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_23

    .line 784
    check-cast p0, Landroid/content/ContextWrapper;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->findActivity(Landroid/content/ContextWrapper;I)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_23
    return-object v1
.end method

.method public static synthetic findActivity$default(Landroid/content/ContextWrapper;IILjava/lang/Object;)Landroid/app/Activity;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 773
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->findActivity(Landroid/content/ContextWrapper;I)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final flushSafely(Ljava/io/Flushable;)V
    .registers 1

    if-eqz p0, :cond_7

    .line 652
    :try_start_2
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method public static final fromRatio(Ljava/lang/Number;F)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(TT;F)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    return p0
.end method

.method public static final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    const-string v0, "activity"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/ActivityManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/app/ActivityManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 706
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audio"

    .line 728
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/media/AudioManager;

    if-nez v1, :cond_1a

    move-object p0, v0

    :cond_1a
    check-cast p0, Landroid/media/AudioManager;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    move-object v0, p0

    :catchall_1d
    return-object v0
.end method

.method public static final getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    const-string v0, "clipboard"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/content/ClipboardManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getColorCompat(Landroid/content/Context;I)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static final getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    const-string v0, "download"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/DownloadManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/app/DownloadManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    const-string v0, "input_method"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 664
    :try_start_6
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lio/bidmachine/util/UtilsKt;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 667
    :cond_f
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    .line 668
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1f

    .line 669
    const-string v1, "fused"

    goto :goto_29

    .line 672
    :cond_1f
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    :goto_29
    if-nez v1, :cond_2c

    return-object v0

    .line 674
    :cond_2c
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_33

    return-object v2

    .line 678
    :cond_33
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "locationManager.allProviders"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_44

    return-object v0

    .line 682
    :cond_44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 683
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 684
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_60} :catch_63

    if-eqz v3, :cond_48

    return-object v3

    :catch_63
    :cond_63
    return-object v0
.end method

.method public static final getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    const-string v0, "location"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/location/LocationManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/location/LocationManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    const-string v0, "phone"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getUiModeManager(Landroid/content/Context;)Landroid/app/UiModeManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    const-string v0, "uimode"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/UiModeManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/app/UiModeManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    const-string v0, "window"

    const/4 v1, 0x0

    .line 728
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager;

    if-nez v0, :cond_11

    move-object p0, v1

    :cond_11
    check-cast p0, Landroid/view/WindowManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v1
.end method

.method public static final isHttpUrl(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "https://"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static final isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 467
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2b

    .line 471
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_23

    goto :goto_24

    :catchall_23
    const/4 p0, 0x0

    .line 472
    :goto_24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    return v0
.end method

.method public static final mergeOrRemove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mergeAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_15

    .line 582
    :cond_11
    invoke-interface {p3, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_15
    if-nez p2, :cond_1b

    .line 585
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 587
    :cond_1b
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public static final notEmptyOrNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 796
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    return-object p0

    :cond_b
    return-object v0
.end method

.method public static final putAllIfNotEmpty(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    .line 574
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static final putAllSafely(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 570
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static final pxToDp(Landroid/content/Context;I)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenDensity(Landroid/content/Context;)F

    move-result p0

    invoke-static {p0, p1}, Lio/bidmachine/util/Utils;->pxToDp(FI)I

    move-result p0

    return p0
.end method

.method public static final readIntoFile(Ljava/io/InputStream;Ljava/io/File;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    :try_start_a
    new-instance v0, Ljava/io/FileOutputStream;

    .line 638
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1d

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 639
    :try_start_12
    invoke-static {p0, v0, p1, v1, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1f

    .line 638
    :try_start_16
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 637
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v3

    :catchall_1d
    move-exception p1

    goto :goto_26

    :catchall_1f
    move-exception p1

    .line 638
    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v1

    :try_start_22
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1d

    .line 637
    :goto_26
    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x2

    .line 768
    invoke-static {p0, p1, p2, v0}, Lcom/android/billingclient/api/zzr$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 770
    :cond_1b
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final setDpFromPx(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectPx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 885
    invoke-static {p2, v0}, Lio/bidmachine/util/Utils;->pxToDp(FI)I

    move-result v0

    .line 891
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 889
    invoke-static {p2, v1}, Lio/bidmachine/util/Utils;->pxToDp(FI)I

    move-result v1

    .line 895
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 893
    invoke-static {p2, v2}, Lio/bidmachine/util/Utils;->pxToDp(FI)I

    move-result v2

    .line 899
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 897
    invoke-static {p2, p1}, Lio/bidmachine/util/Utils;->pxToDp(FI)I

    move-result p1

    .line 884
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static final setSafely(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 541
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->addAllSafely(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public static final setSafely(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 563
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->putAllSafely(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static final toBooleanOrDefault(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 485
    sget-object v0, Lio/bidmachine/util/UtilsKt;->BOOLEAN_TYPE_CONVERSION:Lio/bidmachine/util/conversion/BooleanTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic toBooleanOrDefault$default(Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 485
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toBooleanOrDefault(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final toDoubleOrDefault(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 3

    .line 493
    sget-object v0, Lio/bidmachine/util/UtilsKt;->DOUBLE_TYPE_CONVERSION:Lio/bidmachine/util/conversion/DoubleTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic toDoubleOrDefault$default(Ljava/lang/Object;Ljava/lang/Double;ILjava/lang/Object;)Ljava/lang/Double;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 493
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toDoubleOrDefault(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatOrDefault(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 3

    .line 491
    sget-object v0, Lio/bidmachine/util/UtilsKt;->FLOAT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/FloatTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static synthetic toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 491
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrDefault(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 487
    sget-object v0, Lio/bidmachine/util/UtilsKt;->INT_TYPE_CONVERSION:Lio/bidmachine/util/conversion/IntTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic toIntOrDefault$default(Ljava/lang/Object;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 487
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toIntOrDefault(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 517
    check-cast p0, Ljava/lang/Iterable;

    .line 917
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 518
    invoke-static {v1}, Lio/bidmachine/util/Utils;->fromObjectToJsonElementOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 519
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    :cond_24
    return-object v0
.end method

.method public static final toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    .line 529
    :goto_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_12

    .line 530
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_12

    if-eqz v1, :cond_12

    .line 531
    invoke-static {v1}, Lio/bidmachine/util/Utils;->fromObjectToJsonElementOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 532
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_42
    return-object v0
.end method

.method public static final toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    .line 498
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/util/Utils;->fromJsonElementToObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 499
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    return-object v0
.end method

.method public static final toLongOrDefault(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 3

    .line 489
    sget-object v0, Lio/bidmachine/util/UtilsKt;->LONG_TYPE_CONVERSION:Lio/bidmachine/util/conversion/LongTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 489
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 507
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 915
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/util/Utils;->fromJsonElementToObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 509
    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_3a
    return-object v0
.end method

.method public static final toRatio(Ljava/lang/Number;FF)F
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(TT;FF)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_17

    .line 863
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    div-float/2addr p0, p1

    mul-float/2addr p0, p2

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    goto :goto_1c

    .line 865
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    div-float/2addr p0, p1

    :goto_1c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 866
    invoke-static {p0, v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    return p0
.end method

.method public static synthetic toRatio$default(Ljava/lang/Number;FFILjava/lang/Object;)F
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/high16 p2, 0x42c80000    # 100.0f

    .line 861
    :cond_6
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/UtilsKt;->toRatio(Ljava/lang/Number;FF)F

    move-result p0

    return p0
.end method

.method public static final toStringOrDefault(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 483
    sget-object v0, Lio/bidmachine/util/UtilsKt;->STRING_TYPE_CONVERSION:Lio/bidmachine/util/conversion/StringTypeConversion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic toStringOrDefault$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 483
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toStringOrDefault(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unitToPx(Landroid/content/Context;IF)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 735
    :cond_c
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/bidmachine/util/DeviceUtilsKt;->applyDimension(Landroid/util/DisplayMetrics;IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
