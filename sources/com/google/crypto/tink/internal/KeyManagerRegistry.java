package com.google.crypto.tink.internal;

import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class KeyManagerRegistry {
    public ConcurrentMap<String, KeyManager<?>> keyManagerMap = new ConcurrentHashMap();
    public ConcurrentMap<String, Boolean> newKeyAllowedMap = new ConcurrentHashMap();
    public static final Logger logger = Logger.getLogger(KeyManagerRegistry.class.getName());
    public static final KeyManagerRegistry GLOBAL_INSTANCE = new KeyManagerRegistry();

    public static KeyManagerRegistry globalInstance() {
        return GLOBAL_INSTANCE;
    }

    public final synchronized KeyManager<?> getKeyManagerOrThrow(String typeUrl) throws GeneralSecurityException {
        if (!this.keyManagerMap.containsKey(typeUrl)) {
            throw new GeneralSecurityException("No key manager found for key type " + typeUrl + ", see https://developers.google.com/tink/faq/registration_errors");
        }
        return this.keyManagerMap.get(typeUrl);
    }

    public final synchronized void insertKeyManager(final KeyManager<?> manager, boolean forceOverwrite, boolean newKeyAllowed) throws GeneralSecurityException {
        try {
            String keyType = manager.getKeyType();
            if (newKeyAllowed && this.newKeyAllowedMap.containsKey(keyType) && !this.newKeyAllowedMap.get(keyType).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type " + keyType);
            }
            KeyManager<?> keyManager = this.keyManagerMap.get(keyType);
            if (keyManager != null && !keyManager.getClass().equals(manager.getClass())) {
                logger.warning("Attempted overwrite of a registered key manager for key type " + keyType);
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", keyType, keyManager.getClass().getName(), manager.getClass().getName()));
            }
            if (!forceOverwrite) {
                this.keyManagerMap.putIfAbsent(keyType, manager);
            } else {
                this.keyManagerMap.put(keyType, manager);
            }
            this.newKeyAllowedMap.put(keyType, Boolean.valueOf(newKeyAllowed));
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized <P> void registerKeyManager(final KeyManager<P> manager, boolean newKeyAllowed) throws GeneralSecurityException {
        registerKeyManagerWithFipsCompatibility(manager, TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS, newKeyAllowed);
    }

    public synchronized <P> void registerKeyManagerWithFipsCompatibility(final KeyManager<P> manager, TinkFipsUtil.AlgorithmFipsCompatibility compatibility, boolean newKeyAllowed) throws GeneralSecurityException {
        if (!compatibility.isCompatible()) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        insertKeyManager(manager, false, newKeyAllowed);
    }

    public <P> KeyManager<P> getKeyManager(String str, Class<P> cls) throws GeneralSecurityException {
        KeyManager<P> keyManager = (KeyManager<P>) getKeyManagerOrThrow(str);
        if (keyManager.getPrimitiveClass().equals(cls)) {
            return keyManager;
        }
        throw new GeneralSecurityException("Primitive type " + cls.getName() + " not supported by key manager of type " + keyManager.getClass() + ", which only supports: " + keyManager.getPrimitiveClass());
    }

    public KeyManager<?> getUntypedKeyManager(String typeUrl) throws GeneralSecurityException {
        return getKeyManagerOrThrow(typeUrl);
    }

    public boolean isNewKeyAllowed(String typeUrl) {
        return this.newKeyAllowedMap.get(typeUrl).booleanValue();
    }
}
