/*
java implementation of the s3eAdNinja extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;

import com.google.ads.*;
import android.widget.RelativeLayout;
import android.view.View;

class s3eAdNinja
{
	private AdView adView;

    public int s3eAdNinjaStart(String appKey)
    {
		final String appKeyFinal = appKey;
        LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
			@Override
			public void run()
			{
				adView = new AdView(LoaderActivity.m_Activity,AdSize.BANNER, appKeyFinal);					
				
				
				RelativeLayout.LayoutParams adNinjaLayoutParams = new RelativeLayout.LayoutParams(
					RelativeLayout.LayoutParams.FILL_PARENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
				adNinjaLayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);
				LoaderActivity.m_Activity.addContentView(adView, adNinjaLayoutParams);
				
				AdRequest adRequest = new AdRequest();
				adView.loadAd(adRequest);
			}
		});
		return LoaderAPI.S3E_RESULT_SUCCESS;
    }

    public int s3eAdNinjaRequestFreshAd()
    {
        return 0;
    }

    public int s3eAdNinjaShow()
    {
        return 0;
    }

    public int s3eAdNinjaHide()
    {
        return 0;
    }

}
