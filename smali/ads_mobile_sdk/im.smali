###### Class ads_mobile_sdk.im (ads_mobile_sdk.im)
.class public final Lads_mobile_sdk/im;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1233
    invoke-static {}, Lads_mobile_sdk/jm;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jm;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 22
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 24
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/jm;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 25
    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputbitField0_(Lads_mobile_sdk/jm;I)V

    .line 26
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/jm;->-$$Nest$fputlastUpdateTimeMs_(Lads_mobile_sdk/jm;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/jm;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$e;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;Lads_mobile_sdk/yh1$e;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 12
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 14
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 16
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 16
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/jm;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 17
    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputbitField0_(Lads_mobile_sdk/jm;I)V

    .line 18
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/jm;->-$$Nest$fputserverCacheTtlSecs_(Lads_mobile_sdk/jm;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/jm;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final c(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final d(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitPatterns_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitPatterns_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadUnitPatterns_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitPatterns_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final e(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadapterInitializationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadapterInitializationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadapterInitializationConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadapterInitializationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final f(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final g(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetsignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetsignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputsignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetsignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 2416
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 2417
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 2418
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2419
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    .line 1611
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 1612
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 1613
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1614
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .registers 2

    .line 1810
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 1811
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 1812
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .registers 2

    .line 2049
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 2050
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadUnitPatterns_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 2051
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2052
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .registers 2

    .line 1928
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 1929
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadapterInitializationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 1930
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1931
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .registers 2

    .line 2306
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 2307
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 2308
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2309
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .registers 2

    .line 1470
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 1471
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/Map;
    .registers 2

    .line 2177
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 2178
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetsignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 2179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/jm;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/jm;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/jm;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputbitField0_(Lads_mobile_sdk/jm;I)V

    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/jm;->-$$Nest$fputappSettingsVersion_(Lads_mobile_sdk/jm;I)V

    return-void
.end method
