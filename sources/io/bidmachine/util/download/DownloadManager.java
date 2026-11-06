package io.bidmachine.util.download;

import java.io.File;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.time.Duration;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: DownloadManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface DownloadManager {
    /* JADX INFO: renamed from: download-moChb0s, reason: not valid java name */
    DownloadTask mo2738downloadmoChb0s(String str, File file, Duration duration);

    DownloadTask getActiveDownloadTask(String str, File file);

    /* JADX INFO: renamed from: getHeadCallData-2Ivn440, reason: not valid java name */
    Object mo2739getHeadCallData2Ivn440(String str, Duration duration, Continuation<? super Result<CallData>> continuation);

    /* JADX INFO: compiled from: DownloadManager.kt */
    public static final class DownloadTask {
        public final Deferred<Result<DownloadData>> deferred;
        public final String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DownloadTask)) {
                return false;
            }
            DownloadTask downloadTask = (DownloadTask) obj;
            return Intrinsics.areEqual(this.url, downloadTask.url) && Intrinsics.areEqual(this.deferred, downloadTask.deferred);
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.deferred.hashCode();
        }

        public String toString() {
            return "DownloadTask(url=" + this.url + ", deferred=" + this.deferred + ')';
        }

        public DownloadTask(String url, Deferred<Result<DownloadData>> deferred) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(deferred, "deferred");
            this.url = url;
            this.deferred = deferred;
        }

        public final String getUrl() {
            return this.url;
        }

        public final Deferred<Result<DownloadData>> getDeferred() {
            return this.deferred;
        }
    }

    /* JADX INFO: compiled from: DownloadManager.kt */
    public static final class DownloadData {
        public final long executionTime;
        public final File output;

        public /* synthetic */ DownloadData(long j, File file, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, file);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DownloadData)) {
                return false;
            }
            DownloadData downloadData = (DownloadData) obj;
            return Duration.m2875equalsimpl0(this.executionTime, downloadData.executionTime) && Intrinsics.areEqual(this.output, downloadData.output);
        }

        public int hashCode() {
            return (Duration.m2889hashCodeimpl(this.executionTime) * 31) + this.output.hashCode();
        }

        public String toString() {
            return "DownloadData(executionTime=" + ((Object) Duration.m2903toStringimpl(this.executionTime)) + ", output=" + this.output + ')';
        }

        public DownloadData(long j, File file) {
            this.executionTime = j;
            this.output = file;
        }

        /* JADX INFO: renamed from: getExecutionTime-UwyO8pc, reason: not valid java name */
        public final long m2741getExecutionTimeUwyO8pc() {
            return this.executionTime;
        }

        public final File getOutput() {
            return this.output;
        }
    }

    /* JADX INFO: compiled from: DownloadManager.kt */
    public static final class CallData {
        public final long executionTime;
        public final Map<String, List<String>> headers;

        public /* synthetic */ CallData(long j, Map map, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, map);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CallData)) {
                return false;
            }
            CallData callData = (CallData) obj;
            return Duration.m2875equalsimpl0(this.executionTime, callData.executionTime) && Intrinsics.areEqual(this.headers, callData.headers);
        }

        public int hashCode() {
            return (Duration.m2889hashCodeimpl(this.executionTime) * 31) + this.headers.hashCode();
        }

        public String toString() {
            return "CallData(executionTime=" + ((Object) Duration.m2903toStringimpl(this.executionTime)) + ", headers=" + this.headers + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CallData(long j, Map<String, ? extends List<String>> map) {
            this.executionTime = j;
            this.headers = map;
        }

        /* JADX INFO: renamed from: getExecutionTime-UwyO8pc, reason: not valid java name */
        public final long m2740getExecutionTimeUwyO8pc() {
            return this.executionTime;
        }

        public static /* synthetic */ Long optLongHeader$default(CallData callData, String str, Long l, int i, Object obj) {
            if ((i & 2) != 0) {
                l = null;
            }
            return callData.optLongHeader(str, l);
        }

        public final Long optLongHeader(String key, Long l) {
            String str;
            Long longOrNull;
            Intrinsics.checkNotNullParameter(key, "key");
            List<String> list = this.headers.get(key);
            return (list == null || (str = (String) CollectionsKt___CollectionsKt.firstOrNull((List) list)) == null || (longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(str)) == null) ? l : longOrNull;
        }

        public static /* synthetic */ String optStringHeader$default(CallData callData, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            return callData.optStringHeader(str, str2);
        }

        public final String optStringHeader(String key, String str) {
            String str2;
            Intrinsics.checkNotNullParameter(key, "key");
            List<String> list = this.headers.get(key);
            return (list == null || (str2 = (String) CollectionsKt___CollectionsKt.firstOrNull((List) list)) == null) ? str : str2;
        }

        public final Long contentLength() {
            return optLongHeader$default(this, "Content-Length", null, 2, null);
        }

        public final String contentType() {
            return optStringHeader$default(this, "Content-Type", null, 2, null);
        }
    }
}
