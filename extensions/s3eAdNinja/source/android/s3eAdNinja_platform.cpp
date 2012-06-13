/*
 * android-specific implementation of the s3eAdNinja extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "s3eAdNinja_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_s3eAdNinjaStart;
static jmethodID g_s3eAdNinjaRequestFreshAd;
static jmethodID g_s3eAdNinjaShow;
static jmethodID g_s3eAdNinjaHide;

s3eResult s3eAdNinjaInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;

    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("s3eAdNinja");
    if (!cls)
        goto fail;

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_s3eAdNinjaStart = env->GetMethodID(cls, "s3eAdNinjaStart", "(Ljava/lang/String;)I");
    if (!g_s3eAdNinjaStart)
        goto fail;

    g_s3eAdNinjaRequestFreshAd = env->GetMethodID(cls, "s3eAdNinjaRequestFreshAd", "()I");
    if (!g_s3eAdNinjaRequestFreshAd)
        goto fail;

    g_s3eAdNinjaShow = env->GetMethodID(cls, "s3eAdNinjaShow", "()I");
    if (!g_s3eAdNinjaShow)
        goto fail;

    g_s3eAdNinjaHide = env->GetMethodID(cls, "s3eAdNinjaHide", "()I");
    if (!g_s3eAdNinjaHide)
        goto fail;



    IwTrace(ADNINJA, ("ADNINJA init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(s3eAdNinja, ("One or more java methods could not be found"));
    }
    return S3E_RESULT_ERROR;

}

void s3eAdNinjaTerminate_platform()
{
    // Add any platform-specific termination code here
}

s3eResult s3eAdNinjaStart_platform(const char* appKey)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring appKey_jstr = env->NewStringUTF(appKey);
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eAdNinjaStart, appKey_jstr);
}

s3eResult s3eAdNinjaRequestFreshAd_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eAdNinjaRequestFreshAd);
}

s3eResult s3eAdNinjaShow_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eAdNinjaShow);
}

s3eResult s3eAdNinjaHide_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eAdNinjaHide);
}
