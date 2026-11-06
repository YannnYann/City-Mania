package org.chromium.net;

import ads_mobile_sdk.in2$$ExternalSyntheticBackport0;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.metadata.a;
import java.util.Iterator;
import java.util.List;
import org.chromium.net.DnsOptions;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ExperimentalOptionsTranslator {

    @FunctionalInterface
    public interface JsonPatch {
        void applyTo(JSONObject experimentalOptions) throws JSONException;
    }

    public static void connectionMigrationOptionsToJson(JSONObject experimentalOptions, ConnectionMigrationOptions options) throws JSONException {
        JSONObject jSONObjectCreateDefaultIfAbsent = createDefaultIfAbsent(experimentalOptions, "QUIC");
        if (options.getEnableDefaultNetworkMigration() != null) {
            jSONObjectCreateDefaultIfAbsent.put("migrate_sessions_on_network_change_v2", options.getEnableDefaultNetworkMigration());
        }
        if (options.getAllowServerMigration() != null) {
            jSONObjectCreateDefaultIfAbsent.put("allow_server_migration", options.getAllowServerMigration());
        }
        if (options.getMigrateIdleConnections() != null) {
            jSONObjectCreateDefaultIfAbsent.put("migrate_idle_sessions", options.getMigrateIdleConnections());
        }
        if (options.getIdleMigrationPeriodSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("idle_session_migration_period_seconds", options.getIdleMigrationPeriodSeconds());
        }
        if (options.getRetryPreHandshakeErrorsOnAlternateNetwork() != null) {
            jSONObjectCreateDefaultIfAbsent.put("retry_on_alternate_network_before_handshake", options.getRetryPreHandshakeErrorsOnAlternateNetwork());
        }
        if (options.getMaxTimeOnNonDefaultNetworkSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_time_on_non_default_network_seconds", options.getMaxTimeOnNonDefaultNetworkSeconds());
        }
        if (options.getMaxPathDegradingEagerMigrationsCount() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_migrations_to_non_default_network_on_path_degrading", options.getMaxPathDegradingEagerMigrationsCount());
        }
        if (options.getMaxWriteErrorEagerMigrationsCount() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_migrations_to_non_default_network_on_write_error", options.getMaxWriteErrorEagerMigrationsCount());
        }
        if (options.getEnablePathDegradationMigration() != null) {
            boolean zBooleanValue = options.getEnablePathDegradationMigration().booleanValue();
            jSONObjectCreateDefaultIfAbsent.put("allow_port_migration", zBooleanValue);
            if (options.getAllowNonDefaultNetworkUsage() != null) {
                boolean zBooleanValue2 = options.getAllowNonDefaultNetworkUsage().booleanValue();
                if (!zBooleanValue && zBooleanValue2) {
                    throw new IllegalArgumentException("Unable to turn on non-default network usage without path degradation migration!");
                }
                if (zBooleanValue && zBooleanValue2) {
                    jSONObjectCreateDefaultIfAbsent.put("migrate_sessions_early_v2", true);
                    jSONObjectCreateDefaultIfAbsent.put("migrate_sessions_on_network_change_v2", true);
                } else {
                    jSONObjectCreateDefaultIfAbsent.put("migrate_sessions_early_v2", false);
                }
            }
        }
    }

    public static void dnsOptionsToJson(JSONObject experimentalOptions, DnsOptions options) throws JSONException {
        JSONObject jSONObjectCreateDefaultIfAbsent = createDefaultIfAbsent(experimentalOptions, "AsyncDNS");
        if (options.getUseBuiltInDnsResolver() != null) {
            jSONObjectCreateDefaultIfAbsent.put(a.k, options.getUseBuiltInDnsResolver());
        }
        JSONObject jSONObjectCreateDefaultIfAbsent2 = createDefaultIfAbsent(experimentalOptions, "StaleDNS");
        if (options.getEnableStaleDns() != null) {
            jSONObjectCreateDefaultIfAbsent2.put(a.k, options.getEnableStaleDns());
        }
        if (options.getPersistHostCache() != null) {
            jSONObjectCreateDefaultIfAbsent2.put("persist_to_disk", options.getPersistHostCache());
        }
        if (options.getPersistHostCachePeriodMillis() != null) {
            jSONObjectCreateDefaultIfAbsent2.put("persist_delay_ms", options.getPersistHostCachePeriodMillis());
        }
        if (options.getStaleDnsOptions() != null) {
            DnsOptions.StaleDnsOptions staleDnsOptions = options.getStaleDnsOptions();
            if (staleDnsOptions.getAllowCrossNetworkUsage() != null) {
                jSONObjectCreateDefaultIfAbsent2.put("allow_other_network", staleDnsOptions.getAllowCrossNetworkUsage());
            }
            if (staleDnsOptions.getFreshLookupTimeoutMillis() != null) {
                jSONObjectCreateDefaultIfAbsent2.put("delay_ms", staleDnsOptions.getFreshLookupTimeoutMillis());
            }
            if (staleDnsOptions.getUseStaleOnNameNotResolved() != null) {
                jSONObjectCreateDefaultIfAbsent2.put("use_stale_on_name_not_resolved", staleDnsOptions.getUseStaleOnNameNotResolved());
            }
            if (staleDnsOptions.getMaxExpiredDelayMillis() != null) {
                jSONObjectCreateDefaultIfAbsent2.put("max_expired_time_ms", staleDnsOptions.getMaxExpiredDelayMillis());
            }
        }
        JSONObject jSONObjectCreateDefaultIfAbsent3 = createDefaultIfAbsent(experimentalOptions, "QUIC");
        if (options.getPreestablishConnectionsToStaleDnsResults() != null) {
            jSONObjectCreateDefaultIfAbsent3.put("race_stale_dns_on_connection", options.getPreestablishConnectionsToStaleDnsResults());
        }
    }

    public static void quicOptionsToJson(JSONObject experimentalOptions, QuicOptions options) throws JSONException {
        JSONObject jSONObjectCreateDefaultIfAbsent = createDefaultIfAbsent(experimentalOptions, "QUIC");
        if (!options.getQuicHostAllowlist().isEmpty()) {
            jSONObjectCreateDefaultIfAbsent.put("host_whitelist", in2$$ExternalSyntheticBackport0.m(",", options.getQuicHostAllowlist()));
        }
        if (!options.getEnabledQuicVersions().isEmpty()) {
            jSONObjectCreateDefaultIfAbsent.put("quic_version", in2$$ExternalSyntheticBackport0.m(",", options.getEnabledQuicVersions()));
        }
        if (!options.getConnectionOptions().isEmpty()) {
            jSONObjectCreateDefaultIfAbsent.put("connection_options", in2$$ExternalSyntheticBackport0.m(",", options.getConnectionOptions()));
        }
        if (!options.getClientConnectionOptions().isEmpty()) {
            jSONObjectCreateDefaultIfAbsent.put("client_connection_options", in2$$ExternalSyntheticBackport0.m(",", options.getClientConnectionOptions()));
        }
        if (!options.getExtraQuicheFlags().isEmpty()) {
            jSONObjectCreateDefaultIfAbsent.put("set_quic_flags", in2$$ExternalSyntheticBackport0.m(",", options.getExtraQuicheFlags()));
        }
        if (options.getInMemoryServerConfigsCacheSize() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_server_configs_stored_in_properties", options.getInMemoryServerConfigsCacheSize());
        }
        if (options.getHandshakeUserAgent() != null) {
            jSONObjectCreateDefaultIfAbsent.put("user_agent_id", options.getHandshakeUserAgent());
        }
        if (options.getRetryWithoutAltSvcOnQuicErrors() != null) {
            jSONObjectCreateDefaultIfAbsent.put("retry_without_alt_svc_on_quic_errors", options.getRetryWithoutAltSvcOnQuicErrors());
        }
        if (options.getEnableTlsZeroRtt() != null) {
            jSONObjectCreateDefaultIfAbsent.put("disable_tls_zero_rtt", !options.getEnableTlsZeroRtt().booleanValue());
        }
        if (options.getPreCryptoHandshakeIdleTimeoutSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_idle_time_before_crypto_handshake_seconds", options.getPreCryptoHandshakeIdleTimeoutSeconds());
        }
        if (options.getCryptoHandshakeTimeoutSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("max_time_before_crypto_handshake_seconds", options.getCryptoHandshakeTimeoutSeconds());
        }
        if (options.getIdleConnectionTimeoutSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("idle_connection_timeout_seconds", options.getIdleConnectionTimeoutSeconds());
        }
        if (options.getRetransmittableOnWireTimeoutMillis() != null) {
            jSONObjectCreateDefaultIfAbsent.put("retransmittable_on_wire_timeout_milliseconds", options.getRetransmittableOnWireTimeoutMillis());
        }
        if (options.getCloseSessionsOnIpChange() != null) {
            jSONObjectCreateDefaultIfAbsent.put("close_sessions_on_ip_change", options.getCloseSessionsOnIpChange());
        }
        if (options.getGoawaySessionsOnIpChange() != null) {
            jSONObjectCreateDefaultIfAbsent.put("goaway_sessions_on_ip_change", options.getGoawaySessionsOnIpChange());
        }
        if (options.getInitialBrokenServicePeriodSeconds() != null) {
            jSONObjectCreateDefaultIfAbsent.put("initial_delay_for_broken_alternative_service_seconds", options.getInitialBrokenServicePeriodSeconds());
        }
        if (options.getIncreaseBrokenServicePeriodExponentially() != null) {
            jSONObjectCreateDefaultIfAbsent.put("exponential_backoff_on_initial_delay", options.getIncreaseBrokenServicePeriodExponentially());
        }
        if (options.getDelayJobsWithAvailableSpdySession() != null) {
            jSONObjectCreateDefaultIfAbsent.put("delay_main_job_with_available_spdy_session", options.getDelayJobsWithAvailableSpdySession());
        }
    }

    public static JSONObject toJsonExperimentalOptions(String jsonString) {
        if (jsonString == null || jsonString.isEmpty()) {
            return null;
        }
        try {
            return new JSONObject(jsonString);
        } catch (JSONException e) {
            throw new IllegalArgumentException("Experimental options parsing failed", e);
        }
    }

    public static JSONObject applyJsonPatches(JSONObject jsonOptions, List<JsonPatch> patches) {
        if (jsonOptions == null && patches.isEmpty()) {
            return null;
        }
        if (jsonOptions == null) {
            jsonOptions = new JSONObject();
        }
        Iterator<JsonPatch> it = patches.iterator();
        while (it.hasNext()) {
            try {
                it.next().applyTo(jsonOptions);
            } catch (JSONException e) {
                throw new IllegalStateException("Unable to apply JSON patch!", e);
            }
        }
        return jsonOptions;
    }

    public static JSONObject createDefaultIfAbsent(JSONObject jsonObject, String key) {
        JSONObject jSONObjectOptJSONObject = jsonObject.optJSONObject(key);
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jsonObject.put(key, jSONObject);
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalArgumentException("Failed adding a default object for key [" + key + C3522b4.j.e, e);
        }
    }
}
