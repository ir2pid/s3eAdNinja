/*
 * This file is part of the s3eAdNinja Marmalade extension
 *
 * Copyright (C) 2001-2011 Sudipta Dutta
 *
 * THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
 * PARTICULAR PURPOSE.
 */

#include "ExamplesMain.h"

#include "s3eAdNinja.h"

void ExampleInit()
{
	s3eDeviceOSID osid = (s3eDeviceOSID)s3eDeviceGetInt(S3E_DEVICE_OS);
	if (osid == S3E_OS_ID_ANDROID)
	{
		// make sure you change this ID to your AdMob Mediation ID when building your own app
		//s3eAdNinjaStart("a14f15d6d0da81c"); //adMob 100%
		s3eAdNinjaStart("b610ab6488704723");  //adMob 1% inMobi 16% millenialMedia 83%
	}
	else
	{

	}

}

void ExampleTerm()
{
}

bool ExampleUpdate()
{
	if (!s3eAdNinjaAvailable())
		return true;

	return true;
}

void ExampleRender()
{
	int screenW = s3eSurfaceGetInt(S3E_SURFACE_WIDTH);
	int screenH = s3eSurfaceGetInt(S3E_SURFACE_HEIGHT);

	if (!s3eAdNinjaAvailable())
	{
		s3eDebugPrint(screenW / 10, screenH / 2, "`xff0000Extension not found.\ns3eAdNinja works in android,\niOS support will be added soon", 1);
		return;
	}
	else
	{		
		s3eDebugPrint(screenW / 10, screenH / 2, "`xff0000s3eAdNinja loaded! fetching ad...", 1);
		return;
	}


}
