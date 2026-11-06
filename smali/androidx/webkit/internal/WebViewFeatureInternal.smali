###### Class androidx.webkit.internal.WebViewFeatureInternal (androidx.webkit.internal.WebViewFeatureInternal)
.class public Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Object;
.source "WebViewFeatureInternal.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation


# static fields
.field public static final ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

.field public static final ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

.field public static final CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

.field public static final ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

.field public static final SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

.field public static final STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

.field public static final USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

.field public static final WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 89
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "VISUAL_STATE_CALLBACK"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 97
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "OFF_SCREEN_PRERASTER"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

    .line 105
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "SAFE_BROWSING_ENABLE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

    .line 113
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

    .line 121
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "START_SAFE_BROWSING"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 137
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_WHITELIST"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 153
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v2, "SAFE_BROWSING_ALLOWLIST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 161
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 169
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    invoke-direct {v0, v2, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 177
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 185
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

    .line 194
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

    .line 203
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 212
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 221
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

    .line 229
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

    .line 238
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 247
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "RECEIVE_HTTP_ERROR"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 255
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

    .line 264
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_HIT"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 271
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

    .line 279
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

    .line 287
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

    .line 295
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v2, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 303
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v2, "SAFE_BROWSING_RESPONSE_PROCEED"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 311
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v2, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 319
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v2, "WEB_MESSAGE_PORT_POST_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 327
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    const-string v2, "WEB_MESSAGE_PORT_CLOSE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

    .line 336
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    const-string v2, "WEB_MESSAGE_ARRAY_BUFFER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 347
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v2, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 355
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v2, "CREATE_WEB_MESSAGE_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

    .line 363
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "POST_WEB_MESSAGE"

    const-string v2, "POST_WEB_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 370
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v2, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 377
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "GET_WEB_VIEW_CLIENT"

    const-string v2, "GET_WEB_VIEW_CLIENT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 383
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "GET_WEB_CHROME_CLIENT"

    const-string v2, "GET_WEB_CHROME_CLIENT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 386
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "GET_WEB_VIEW_RENDERER"

    const-string v2, "GET_WEB_VIEW_RENDERER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

    .line 388
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v2, "WEB_VIEW_RENDERER_TERMINATE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 399
    new-instance v0, Landroidx/webkit/internal/ApiFeature$P;

    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v2, "TRACING_CONTROLLER_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

    .line 407
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$P;

    const-string v1, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    const-string v2, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 415
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATHS"

    const-string v2, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 425
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    const-string v2, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 437
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v2, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 446
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$1;

    const-string v1, "ALGORITHMIC_DARKENING"

    const-string v2, "ALGORITHMIC_DARKENING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

    .line 472
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROXY_OVERRIDE"

    const-string v2, "PROXY_OVERRIDE:3"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 479
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "MULTI_PROCESS"

    const-string v2, "MULTI_PROCESS_QUERY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 487
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "FORCE_DARK"

    const-string v2, "FORCE_DARK"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

    .line 495
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "FORCE_DARK_STRATEGY"

    const-string v2, "FORCE_DARK_BEHAVIOR"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 504
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_MESSAGE_LISTENER"

    const-string v2, "WEB_MESSAGE_LISTENER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 514
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DOCUMENT_START_SCRIPT"

    const-string v2, "DOCUMENT_START_SCRIPT:1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 522
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    const-string v2, "PROXY_OVERRIDE_REVERSE_BYPASS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 530
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "GET_VARIATIONS_HEADER"

    const-string v2, "GET_VARIATIONS_HEADER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 539
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    const-string v2, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 547
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "GET_COOKIE_INFO"

    const-string v2, "GET_COOKIE_INFO"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 563
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    const-string v2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 572
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "USER_AGENT_METADATA"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 581
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$2;

    const-string v2, "USER_AGENT_METADATA_FORM_FACTORS"

    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/WebViewFeatureInternal$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 610
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$3;

    const-string v1, "MULTI_PROFILE"

    const-string v2, "MULTI_PROFILE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 631
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    const-string v2, "ATTRIBUTION_BEHAVIOR"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 641
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 652
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "MUTE_AUDIO"

    const-string v2, "MUTE_AUDIO"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 662
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_AUTHENTICATION"

    const-string v2, "WEB_AUTHENTICATION"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 671
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SPECULATIVE_LOADING_STATUS"

    const-string v2, "SPECULATIVE_LOADING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 681
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "BACK_FORWARD_CACHE"

    const-string v2, "BACK_FORWARD_CACHE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 691
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "BACK_FORWARD_CACHE_SETTINGS"

    const-string v2, "BACK_FORWARD_CACHE_SETTINGS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 696
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DELETE_BROWSING_DATA"

    const-string v2, "WEB_STORAGE_DELETE_BROWSING_DATA"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 707
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$4;

    const-string v1, "PREFETCH_URL_V5"

    const-string v2, "PREFETCH_URL_V5"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 727
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    const-string v2, "ASYNC_WEBVIEW_STARTUP"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 738
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    const-string v2, "ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 746
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DEFAULT_TRAFFICSTATS_TAGGING"

    const-string v2, "DEFAULT_TRAFFICSTATS_TAGGING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 756
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PRERENDER_URL_V2"

    const-string v2, "PRERENDER_URL_V3"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 764
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SPECULATIVE_LOADING_CONFIG_V2"

    const-string v2, "SPECULATIVE_LOADING_CONFIG_V2"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 772
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SAVE_STATE"

    const-string v2, "SAVE_STATE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 782
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    const-string v2, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 790
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "NAVIGATION_LISTENER_V1"

    const-string v2, "WEB_VIEW_NAVIGATION_LISTENER_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 797
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROVIDER_WEAKLY_REF_WEBVIEW"

    const-string v2, "PROVIDER_WEAKLY_REF_WEBVIEW"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 807
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PAYMENT_REQUEST"

    const-string v2, "PAYMENT_REQUEST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 817
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEBVIEW_BUILDER_EXPERIMENTAL_V1"

    const-string v2, "WEBVIEW_BUILDER_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 830
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "COOKIE_INTERCEPT"

    const-string v2, "COOKIE_INTERCEPT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 838
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WARM_UP_RENDERER_PROCESS"

    const-string v2, "WARM_UP_RENDERER_PROCESS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 851
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ORIGIN_MATCHED_HEADERS"

    const-string v2, "EXTRA_HEADER_FOR_ORIGINS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 869
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "CUSTOM_REQUEST_HEADERS"

    const-string v2, "CUSTOM_REQUEST_HEADERS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 878
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    const-string v2, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 891
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 902
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 911
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PRECONNECT"

    const-string v2, "PRECONNECT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 919
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ADD_QUIC_HINTS"

    const-string v2, "ADD_QUIC_HINTS_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 928
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "HYPERLINK_CONTEXT_MENU_ITEMS"

    const-string v2, "HYPERLINK_CONTEXT_MENU_ITEMS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    return-void
.end method

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .registers 2

    .line 1013
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2

    .line 943
    invoke-static {}, Landroidx/webkit/internal/ApiFeature;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/webkit/internal/ConditionallySupportedFeature;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 968
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 969
    invoke-interface {v1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 970
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 973
    :cond_23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    .line 976
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 977
    invoke-interface {p1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_41
    const/4 p0, 0x0

    return p0

    .line 974
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class androidx.webkit.internal.WebViewFeatureInternal.AnonymousClass1 (androidx.webkit.internal.WebViewFeatureInternal$1)
.class public Landroidx/webkit/internal/WebViewFeatureInternal$1;
.super Landroidx/webkit/internal/ApiFeature$T;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewFeatureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mVersionPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 447
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature$T;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string p1, "\\A\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/internal/WebViewFeatureInternal$1;->mVersionPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public isSupportedByWebView()Z
    .registers 5

    .line 452
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 453
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_d

    goto :goto_3c

    .line 459
    :cond_d
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getCurrentLoadedWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 461
    :cond_15
    iget-object v2, p0, Landroidx/webkit/internal/WebViewFeatureInternal$1;->mVersionPattern:Ljava/util/regex/Pattern;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 463
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 462
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x69

    if-lt v0, v2, :cond_3b

    const/4 v0, 0x1

    return v0

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    return v0
.end method

###### Class androidx.webkit.internal.WebViewFeatureInternal.AnonymousClass2 (androidx.webkit.internal.WebViewFeatureInternal$2)
.class public Landroidx/webkit/internal/WebViewFeatureInternal$2;
.super Landroidx/webkit/internal/ApiFeature$NoFramework;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewFeatureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 583
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isSupportedByWebView()Z
    .registers 7

    .line 586
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 589
    :cond_8
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getCurrentLoadedWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 593
    :cond_f
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    const-wide/32 v4, 0x25f34560

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v1
.end method

###### Class androidx.webkit.internal.WebViewFeatureInternal.AnonymousClass3 (androidx.webkit.internal.WebViewFeatureInternal$3)
.class public Landroidx/webkit/internal/WebViewFeatureInternal$3;
.super Landroidx/webkit/internal/ApiFeature$NoFramework;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewFeatureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 611
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isSupportedByWebView()Z
    .registers 3

    .line 615
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 618
    :cond_8
    const-string v0, "MULTI_PROCESS"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 619
    invoke-static {}, Landroidx/webkit/WebViewCompat;->isMultiProcessEnabled()Z

    move-result v0

    return v0

    :cond_15
    return v1
.end method

###### Class androidx.webkit.internal.WebViewFeatureInternal.AnonymousClass4 (androidx.webkit.internal.WebViewFeatureInternal$4)
.class public Landroidx/webkit/internal/WebViewFeatureInternal$4;
.super Landroidx/webkit/internal/ApiFeature$NoFramework;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewFeatureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 709
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isSupportedByWebView()Z
    .registers 2

    .line 713
    const-string v0, "MULTI_PROFILE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 716
    :cond_a
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    return v0
.end method
