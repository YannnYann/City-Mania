package org.chromium.net.impl;

import org.chromium.net.CronetException;
import org.chromium.net.InlineExecutionProhibitedException;

/* JADX INFO: loaded from: classes5.dex */
public class CronetExceptionTranslationUtils {

    public interface CronetWork<T, E extends Exception> {
        T run() throws Exception;
    }

    public static <T, E extends Exception> T executeTranslatingCronetExceptions(CronetWork<T, E> work, Class<E> nonCronetException) throws Exception {
        try {
            return work.run();
        } catch (Exception e) {
            if (isUncheckedAndroidCronetException(e)) {
                throw translateUncheckedAndroidCronetException(e);
            }
            if (isCheckedAndroidCronetException(e)) {
                throw translateCheckedAndroidCronetException(e);
            }
            if (nonCronetException.isInstance(e)) {
                throw e;
            }
            throw e;
        }
    }

    public static boolean isUncheckedAndroidCronetException(Exception e) {
        return CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline0.m(e);
    }

    public static boolean isCheckedAndroidCronetException(Exception e) {
        return CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline6.m(e);
    }

    public static RuntimeException translateUncheckedAndroidCronetException(Exception e) {
        if (!isUncheckedAndroidCronetException(e)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", e);
        }
        if (CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline0.m(e)) {
            InlineExecutionProhibitedException inlineExecutionProhibitedException = new InlineExecutionProhibitedException();
            inlineExecutionProhibitedException.initCause(e);
            return inlineExecutionProhibitedException;
        }
        throw new UnsupportedOperationException("Unchecked exception translation discrepancy", e);
    }

    public static CronetException translateCheckedAndroidCronetException(Exception e) {
        if (!isCheckedAndroidCronetException(e)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", e);
        }
        if (AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline3.m(e)) {
            return new AndroidQuicExceptionWrapper(CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline1.m(e));
        }
        if (CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline2.m(e)) {
            return new AndroidNetworkExceptionWrapper(CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline3.m(e));
        }
        if (CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline4.m(e)) {
            return new AndroidCallbackExceptionWrapper(CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline5.m(e));
        }
        if (CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline6.m(e)) {
            return new AndroidHttpExceptionWrapper(CronetExceptionTranslationUtils$$ExternalSyntheticApiModelOutline7.m(e));
        }
        throw new UnsupportedOperationException("Checked exception translation discrepancy", e);
    }
}
