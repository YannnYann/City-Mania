package com.ironsource.adapters.bidmachine;

/* JADX INFO: compiled from: BidMachineConstants.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineConstants {
    public static final String ADAPTER_VERSION = "5.8.0";
    public static final String AD_EXPIRED = "Ad expired";
    public static final String AD_NOT_READY = "Ad is not ready";
    public static final String BANNER = "BANNER";
    public static final String BANNER_SIZE_INVALID = "Banner size is invalid or not of type ISBannerSize";
    public static final String BANNER_SIZE_KEY = "bannerSize";
    public static final String CCPA_CONSENT_VALUE = "1YN-";
    public static final String CCPA_NO_CONSENT_VALUE = "1YY-";
    public static final String CREATIVE_ID_KEY = "creativeId";
    public static final BidMachineConstants INSTANCE = new BidMachineConstants();
    public static final String LEADERBOARD = "LEADERBOARD";
    public static final String META_DATA_COPPA_KEY = "BidMachine_COPPA";
    public static final String PLACEMENT_ID_KEY = "placementId";
    public static final String RECTANGLE = "RECTANGLE";
    public static final String SMART = "SMART";
    public static final String SOURCE_ID_KEY = "sourceId";
    public static final String TOKEN_EMPTY = "failed to receive token - returned null/empty token";
    public static final String TOKEN_KEY = "token";
    public static final String UNSUPPORTED_BANNER_SIZE = "Unsupported or null banner size";

    private BidMachineConstants() {
    }

    /* JADX INFO: compiled from: BidMachineConstants.kt */
    public static final class Logs {
        public static final String CCPA = "value = %s";
        public static final String CONSENT = "consent = %s";
        public static final String COPPA = "isCoppa = %s";
        public static final String CREATIVE_ID = "creativeId = %s";
        public static final String FAILED_TO_LOAD = "Failed to load, errorCode = %s, errorMessage = %s";
        public static final String FAILED_TO_SHOW = "Failed to show, errorCode = %s, errorMessage = %s";
        public static final Logs INSTANCE = new Logs();
        public static final String META_DATA = "key = %s, value = %s";
        public static final String MISSING_PARAM = "Missing params - %s";
        public static final String NETWORK_ADAPTER_IS_NULL = "Network adapter is null";
        public static final String PLACEMENT_ID = "placementId = %s";
        public static final String SOURCE_ID = "sourceId = %s";
        public static final String TOKEN = "token = %s";
        public static final String TOKEN_ERROR = "returning null as token since init isn't completed";
        public static final String TOKEN_FAILED = "%s - BidMachine";

        private Logs() {
        }
    }
}
