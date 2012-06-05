/*
Generic implementation of the s3eAdNinja extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "s3eAdNinja_internal.h"
s3eResult s3eAdNinjaInit()
{
    //Add any generic initialisation code here
    return s3eAdNinjaInit_platform();
}

void s3eAdNinjaTerminate()
{
    //Add any generic termination code here
    s3eAdNinjaTerminate_platform();
}

s3eResult s3eAdNinjaStart(const char* appKey)
{
	return s3eAdNinjaStart_platform(appKey);
}

s3eResult s3eAdNinjaRequestFreshAd()
{
	return s3eAdNinjaRequestFreshAd_platform();
}

s3eResult s3eAdNinjaShow()
{
	return s3eAdNinjaShow_platform();
}

s3eResult s3eAdNinjaHide()
{
	return s3eAdNinjaHide_platform();
}
