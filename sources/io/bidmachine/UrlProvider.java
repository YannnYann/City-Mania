package io.bidmachine;

import android.net.Uri;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class UrlProvider {
    private static final String PATH_AUCTION = "auction";
    private static final String PATH_INIT = "init";
    private static final String PATH_RTB = "rtb";
    private static final String PATH_V3 = "v3";
    private static String auctionUrlFromInit;
    private static String auctionUrlFromSuccessRequest;
    private static final String DEF_BASE_URL = "https://api.bidmachine.io";
    private static final String[] DEF_BASE_URLS = {DEF_BASE_URL, "https://x.everestop.io", "https://x.blueduckredapple.com", "https://x.thecatmachine.com"};
    private static final Queue<String> INIT_URL_QUEUE = new ConcurrentLinkedQueue();
    private static final Queue<String> AUCTION_URL_QUEUE = new ConcurrentLinkedQueue();

    public class a extends ConcurrentLinkedQueue {
        public a() {
            add(UrlProvider.auctionUrlFromInit);
        }
    }

    public class b extends ConcurrentLinkedQueue {
        public b() {
            add(UrlProvider.auctionUrlFromSuccessRequest);
        }
    }

    static {
        setupUrls();
    }

    private static String createAuctionUrl(Uri uri) {
        return uri.buildUpon().appendPath("auction").appendPath(PATH_RTB).appendPath(PATH_V3).toString();
    }

    private static String createInitUrl(Uri uri) {
        return uri.buildUpon().appendPath("auction").appendPath("init").toString();
    }

    public static Queue<String> getAuctionUrlQueue() {
        return !TextUtils.isEmpty(auctionUrlFromInit) ? new a() : !TextUtils.isEmpty(auctionUrlFromSuccessRequest) ? new b() : new ConcurrentLinkedQueue(AUCTION_URL_QUEUE);
    }

    public static Queue<String> getInitUrlQueue() {
        return new ConcurrentLinkedQueue(INIT_URL_QUEUE);
    }

    public static void reset() {
        setupUrls();
        auctionUrlFromInit = null;
        auctionUrlFromSuccessRequest = null;
    }

    public static void setAuctionUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Queue<String> queue = AUCTION_URL_QUEUE;
        queue.clear();
        queue.add(str);
    }

    public static synchronized void setAuctionUrlFromInit(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        auctionUrlFromInit = str;
    }

    public static void setAuctionUrlFromSuccessRequest(String str) {
        if (auctionUrlFromSuccessRequest != null || TextUtils.isEmpty(str)) {
            return;
        }
        auctionUrlFromSuccessRequest = str;
    }

    public static void setEndpoint(final String str) {
        if (!Utils.isUrlValid(str)) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.UrlProvider$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("Endpoint has an invalid format - %s", str);
                }
            });
        } else {
            if (k.b().r()) {
                Logger.e("Can't change endpoint url after initialization");
                return;
            }
            Uri uri = Uri.parse(str);
            setInitUrl(createInitUrl(uri));
            setAuctionUrl(createAuctionUrl(uri));
        }
    }

    public static void setInitUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Queue<String> queue = INIT_URL_QUEUE;
        queue.clear();
        queue.add(str);
    }

    private static void setupAuctionUrls(Collection<String> collection, String[] strArr) {
        collection.clear();
        for (String str : strArr) {
            collection.add(createAuctionUrl(Uri.parse(str)));
        }
    }

    private static void setupInitUrls(Collection<String> collection, String[] strArr) {
        collection.clear();
        for (String str : strArr) {
            collection.add(createInitUrl(Uri.parse(str)));
        }
    }

    public static void setupUrls() {
        Queue<String> queue = INIT_URL_QUEUE;
        String[] strArr = DEF_BASE_URLS;
        setupInitUrls(queue, strArr);
        setupAuctionUrls(AUCTION_URL_QUEUE, strArr);
    }
}
